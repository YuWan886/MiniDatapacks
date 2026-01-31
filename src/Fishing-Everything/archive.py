import os
import time
import zipfile
import json
from zipfile import ZipInfo
from typing import Dict

from beet import Context, DataPack, ResourcePack
from stouputils.decorators import handle_error, measure_time, retry
from stouputils.parallel import multithreading

from stewbeet.plugins.initialize.source_lore_font import find_pack_png
from stewbeet.core.__memory__ import Mem


def get_consistent_timestamp(ctx: Context) -> tuple[int, int, int, int, int, int]:
    """根据 beet 缓存目录的修改时间获取归档文件的一致时间戳。"""
    default_time = (2025, 1, 1, 0, 0, 0)  # 默认时间: 2025-01-01 00:00:00

    try:
        cache_directory = ctx.cache.directory.parent
        default_directory = cache_directory / "default"
        if default_directory.exists():
            time_float = default_directory.stat().st_mtime
            return time.localtime(time_float)[:6]
    except (AttributeError, OSError):
        pass

    return default_time


def create_zip_with_consistent_timestamps(
    archive_path: str,
    contents: Dict[str, bytes],
    consistent_time: tuple[int, int, int, int, int, int]
) -> None:
    """使用一致的时间戳从内容字典创建 ZIP 文件。"""
    @retry(exceptions=Exception, max_attempts=10, delay=0.5)
    def write_zip_with_retry():
        with zipfile.ZipFile(
            archive_path, "w", compression=zipfile.ZIP_DEFLATED, compresslevel=6
        ) as final_zip:
            for filename, content in contents.items():
                info = ZipInfo(filename=filename)
                info.date_time = consistent_time
                info.compress_type = zipfile.ZIP_DEFLATED
                final_zip.writestr(info, content)
    
    write_zip_with_retry()


def handle_pack(pack: DataPack | ResourcePack, consistent_time: tuple[int, int, int, int, int, int]) -> None:
    """处理单个数据包或资源包的打包工作。"""
    all_items = set(pack.all())
    if not len(all_items) > 0:
        return  # 跳过空包

    # 获取包名和类型
    pack_name: str = Mem.ctx.project_id
    project_version = Mem.ctx.project_version

    # 根据包属性确定包类型
    pack_type: str = "pack"
    if isinstance(pack, DataPack):
        pack_type = "datapack"
    else:
        pack_type = "resourcepack"

    # 创建归档文件名
    archive_path = f"{Mem.ctx.output_directory}/{pack_name}-{project_version}-{pack_type}.zip"

    # 第一次处理: 使用 pack.dump() 正常创建 ZIP 文件
    @retry(exceptions=Exception, max_attempts=10, delay=0.5)
    def dump_with_retry():
        with zipfile.ZipFile(archive_path, "w", compression=zipfile.ZIP_DEFLATED, compresslevel=6) as zip_file:
            pack.dump(zip_file)
    dump_with_retry()

    # 第二次处理: 读取所有内容并使用一致的时间戳重新创建
    temp_contents: dict[str, bytes] = {}
    with zipfile.ZipFile(archive_path, "r") as temp_zip:
        for item in temp_zip.filelist:
            temp_contents[item.filename] = temp_zip.read(item.filename)

    # 检查 pack.png 是否存在并准备处理
    pack_png_path = find_pack_png()
    if pack_png_path:
        # 如果存在则从临时内容中移除 pack.png 以避免重复
        temp_contents.pop("pack.png", None)

        # 读取 pack.png 内容
        with open(pack_png_path, "rb") as f:
            temp_contents["pack.png"] = f.read()

    # 使用适当的时间戳和压缩重新创建 ZIP 文件
    create_zip_with_consistent_timestamps(archive_path, temp_contents, consistent_time)


def create_jar_with_mod_metadata(ctx: Context, consistent_time: tuple[int, int, int, int, int, int]) -> None:
    """创建包含所有包内容和 Mod 元数据的 JAR 文件。"""
    pack_name = ctx.project_id + "-" + ctx.project_version
    archive_path = f"{ctx.output_directory}/{pack_name}.jar"

    # 从 Context 实例获取元数据
    MOD_AUTHOR = ctx.project_author
    MOD_ID = ctx.project_id
    MOD_VERSION = ctx.project_version
    MOD_NAME = ctx.project_name
    DESCRIPTION = ctx.project_description

    temp_contents: Dict[str, bytes] = {}

    # 遍历所有包并收集内容
    for pack in ctx.packs:
        # 临时文件路径用于存储 pack.dump() 的内容
        temp_zip_path = f"{ctx.output_directory}/temp_{id(pack)}.zip"
        
        @retry(exceptions=Exception, max_attempts=10, delay=0.5)
        def dump_with_retry():
            with zipfile.ZipFile(temp_zip_path, "w", compression=zipfile.ZIP_DEFLATED, compresslevel=6) as zip_file:
                pack.dump(zip_file)
        dump_with_retry()

        # 读取临时 zip 文件内容
        with zipfile.ZipFile(temp_zip_path, "r") as temp_zip:
            for item in temp_zip.filelist:
                # 避免重复添加相同路径的文件
                if item.filename not in temp_contents:
                    temp_contents[item.filename] = temp_zip.read(item.filename)
        
        # 删除临时文件
        if os.path.exists(temp_zip_path):
            os.remove(temp_zip_path)

    # 注入加载器元数据
    fabric_json = {
        "schemaVersion": 1,
        "id": MOD_ID,
        "version": MOD_VERSION,
        "name": MOD_NAME,
        "description": DESCRIPTION,
        "authors": [MOD_AUTHOR],
        "environment": "*",  # 通用 mod，同时支持客户端和服务器
        "license": "ARR",
        "icon": "pack.png",
        "depends": {"minecraft": ">=1.21"},
    }
    temp_contents["fabric.mod.json"] = json.dumps(fabric_json, indent=4).encode("utf-8")

    mods_toml = f"""modLoader="javafml"
loaderVersion="[1,)"
license="ARR"

[[mods]]
modId="{MOD_ID}"
version="{MOD_VERSION}"
displayName="{MOD_NAME}"
description='''{DESCRIPTION}'''
authors="{MOD_AUTHOR}"
"""
    temp_contents["META-INF/mods.toml"] = mods_toml.encode("utf-8")
    temp_contents["META-INF/neoforge.mods.toml"] = mods_toml.encode("utf-8")

    # 检查是否需要添加 pack.png
    pack_png_path = find_pack_png()
    if pack_png_path:
        temp_contents.pop("pack.png", None)
        with open(pack_png_path, "rb") as f:
            temp_contents["pack.png"] = f.read()

    # 写入 JAR 文件
    create_zip_with_consistent_timestamps(archive_path, temp_contents, consistent_time)


@measure_time(message="stewbeet.plugins.archive_mod 的执行时间")
def beet_default(ctx: Context) -> None:
    """StewBeet 的归档插件。
    为每个包创建单独的 ZIP 归档，并创建包含 Mod 元数据的合并 JAR 文件。
    """
    if Mem.ctx is None:
        Mem.ctx = ctx

    # 断言检查
    assert Mem.ctx.output_directory, "项目配置中必须指定输出目录。"

    # 确保输出目录存在
    os.makedirs(Mem.ctx.output_directory, exist_ok=True)

    consistent_time: tuple[int, int, int, int, int, int] = get_consistent_timestamp(Mem.ctx)
    
    # 为每个包创建单独的 ZIP 归档（并行处理）
    tasks = [(pack, consistent_time) for pack in Mem.ctx.packs]
    multithreading(handle_pack, tasks, use_starmap=True, max_workers=len(Mem.ctx.packs))
    
    # 创建包含 Mod 元数据的合并 JAR 文件
    create_jar_with_mod_metadata(ctx, consistent_time)
