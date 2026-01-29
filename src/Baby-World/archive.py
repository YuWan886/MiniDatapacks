import os
import time
import zipfile
import json
from zipfile import ZipInfo
from typing import Dict

from beet import Context
from stouputils.decorators import handle_error, measure_time, retry

from stewbeet.plugins.initialize.source_lore_font import find_pack_png


def get_consistent_timestamp(ctx: Context) -> tuple[int, int, int, int, int, int]:
    """Get a consistent timestamp for archive files based on beet cache directory modification time."""
    default_time = (2025, 1, 1, 0, 0, 0)  # Default time: 2025-01-01 00:00:00

    try:
        cache_directory = ctx.cache.directory.parent
        default_directory = cache_directory / "default"
        if default_directory.exists():
            time_float = default_directory.stat().st_mtime
            return time.localtime(time_float)[:6]
    except (AttributeError, OSError):
        pass

    return default_time


def read_pack_contents_from_build_dir(ctx: Context, pack_type_filter: str | None = None) -> Dict[str, bytes]:
    """Read all pack contents from build directory.
    
    Args:
        ctx: Beet context
        pack_type_filter: Optional filter for pack type ("datapack" or "resourcepack")
    
    Returns:
        Dictionary mapping file paths to file contents
    """
    temp_contents: Dict[str, bytes] = {}
    build_dir = ctx.output_directory
    
    if not build_dir or not os.path.exists(str(build_dir)):
        return temp_contents
    
    # 遍历构建目录中的所有 pack 目录
    for pack_dir_name in os.listdir(str(build_dir)):
        pack_dir_path = os.path.join(str(build_dir), pack_dir_name)
        
        # 检查是否是目录且以指定类型结尾
        if not os.path.isdir(pack_dir_path):
            continue
            
        if pack_type_filter and not pack_dir_name.endswith(pack_type_filter):
            continue
            
        if not pack_type_filter and not pack_dir_name.endswith(("datapack", "resourcepack")):
            continue
            
        # 递归遍历目录中的所有文件
        for root, dirs, files in os.walk(pack_dir_path):
            for file in files:
                file_path = os.path.join(root, file)
                # 计算在 zip 中的相对路径
                rel_path = os.path.relpath(file_path, pack_dir_path)
                # 标准化路径分隔符
                rel_path = rel_path.replace("\\", "/")
                
                # 处理除 pack.mcmeta 和 pack.png 之外的文件
                if rel_path not in ("pack.mcmeta", "pack.png"):
                    with open(file_path, "rb") as f:
                        temp_contents[rel_path] = f.read()
    
    # 强制使用 datapack 中的 pack.mcmeta 和 pack.png
    for pack_dir_name in os.listdir(str(build_dir)):
        pack_dir_path = os.path.join(str(build_dir), pack_dir_name)
        
        if os.path.isdir(pack_dir_path) and "datapack" in pack_dir_name:
            # 检查 datapack 中是否存在 pack.mcmeta
            datapack_mcmeta = os.path.join(pack_dir_path, "pack.mcmeta")
            if os.path.exists(datapack_mcmeta):
                with open(datapack_mcmeta, "rb") as f:
                    temp_contents["pack.mcmeta"] = f.read()
            
            # 检查 datapack 中是否存在 pack.png
            datapack_png = os.path.join(pack_dir_path, "pack.png")
            if os.path.exists(datapack_png):
                with open(datapack_png, "rb") as f:
                    temp_contents["pack.png"] = f.read()
            
            break  # 找到第一个 datapack 后停止搜索
    
    return temp_contents


def create_zip_from_contents(
    archive_path: str,
    contents: Dict[str, bytes],
    consistent_time: tuple[int, int, int, int, int, int]
) -> None:
    """Create a zip file from contents dictionary with consistent timestamps."""
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


def create_individual_zips(ctx: Context) -> None:
    """Create individual zip archives for each pack (datapack and resourcepack).
    Optimized version that reads from build directory instead of using pack.dump()
    """

    # Assertions
    assert ctx.output_directory, "Output directory must be specified in the project configuration."

    # Ensure output directory exists
    os.makedirs(ctx.output_directory, exist_ok=True)

    consistent_time: tuple[int, int, int, int, int, int] = get_consistent_timestamp(ctx)
    
    # Get project name for file naming
    project_name = ctx.project_id + "-" + ctx.project_version
    
    # Create archives for each pack type
    @handle_error
    def create_pack_zip(pack_type: str, pack_name_suffix: str) -> None:
        """Create zip archive for a specific pack type."""
        # Read contents for this pack type
        contents = read_pack_contents_from_build_dir(ctx, pack_type)
        
        if not contents:
            return  # Skip if no contents
        
        # Create archive filename
        archive_path = f"{ctx.output_directory}/{project_name}-{pack_name_suffix}.zip"
        
        # Add pack.png if available
        pack_png_path = find_pack_png()
        if pack_png_path:
            # Remove existing pack.png to avoid duplicates
            contents.pop("pack.png", None)
            
            # Read pack.png content
            with open(pack_png_path, "rb") as f:
                contents["pack.png"] = f.read()
        
        # Create the zip file
        create_zip_from_contents(archive_path, contents, consistent_time)
    
    # Process datapack and resourcepack
    create_pack_zip("datapack", "datapack")
    create_pack_zip("resourcepack", "resourcepack")


def create_jar_with_mod_metadata(ctx: Context) -> None:
    """Create a JAR file containing all pack contents with mod metadata."""
    assert (
        ctx.output_directory
    ), "Output directory must be specified in the project configuration."

    os.makedirs(ctx.output_directory, exist_ok=True)
    consistent_time = get_consistent_timestamp(ctx)

    pack_name = ctx.project_id + "-" + ctx.project_version
    archive_path = f"{ctx.output_directory}/{pack_name}.jar"

    # 从 Context 实例获取元数据
    MOD_AUTHOR = ctx.project_author
    MOD_ID = ctx.project_id
    MOD_VERSION = ctx.project_version
    MOD_NAME = ctx.project_name
    DESCRIPTION = ctx.project_description

    # 从构建目录读取所有包内容
    temp_contents = read_pack_contents_from_build_dir(ctx)

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
authors="{MOD_AUTHOR}
"""
    temp_contents["META-INF/mods.toml"] = mods_toml.encode("utf-8")
    temp_contents["META-INF/neoforge.mods.toml"] = mods_toml.encode("utf-8")

    # 保留 read_pack_contents_from_build_dir 函数中已经设置好的 pack.mcmeta 和 pack.png（使用 datapack 版本）
    # 不再从 ctx.packs 或 find_pack_png() 中获取，避免覆盖

    # 写入 JAR 文件
    create_zip_from_contents(archive_path, temp_contents, consistent_time)


@measure_time(message="Execution time of 'stewbeet.plugins.archive_mod'")
def beet_default(ctx: Context) -> None:
    """Archive plugin for StewBeet.
    Creates both individual zip archives for each pack and a combined JAR file with mod metadata.
    """
    
    # Create individual zip archives for each pack
    create_individual_zips(ctx)
    
    # Create combined JAR file with mod metadata
    create_jar_with_mod_metadata(ctx)