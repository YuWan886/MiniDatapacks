from beet import Context, Function, LootTable
from beet.contrib.vanilla import Vanilla
from beet.contrib.worldgen import WorldgenStructure


def beet_default(ctx: Context):
    # 获取 spawn_egg 物品标签
    spawn_egg_tag = ctx.data.item_tags.get("fishing:spawn_egg")

    if spawn_egg_tag:
        commands = []
        # 遍历标签中的所有物品
        for item in spawn_egg_tag.data["values"]:
            command = f'execute as @e[type=item,distance=..50,nbt={{Item:{{id:"minecraft:{item}"}}}}] at @s run function fishing:spawn_egg/2'
            commands.append(command)

        ctx.data.functions["fishing:spawn_egg/1"] = Function(commands)

    # 获取原版 Minecraft 数据
    vanilla = ctx.inject(Vanilla)
    vanilla_data = vanilla.data

    # 使用 WorldgenStructure 类型作为键访问世界生成结构
    structure_proxy = vanilla_data[WorldgenStructure]
    if structure_proxy:
        structure_commands = []
        structure_commands.append('execute store result score @s roll run random value 1..34')
        roll = 1
        for structure_name in structure_proxy:
            structure_command = f"execute as @s[scores={{roll={roll}}}] run place structure {structure_name} ~ ~ ~"
            roll += 1
            structure_commands.append(structure_command)
        structure_commands.append('kill @s')    
        ctx.data.functions["fishing:structure/2"] = Function(structure_commands)
    
    loot_table = vanilla_data[LootTable]
    
    # 筛选出箱子战利品表（以 minecraft:chests/ 开头的）
    chest_loot_paths = []
    for loot_path in loot_table:
        if loot_path.startswith("minecraft:chests/"):
            chest_loot_paths.append(loot_path)
    
    if chest_loot_paths:
        chest_loot_commands = []
        chest_loot_commands.append('execute store result score @s roll run random value 1..56')
        roll = 1
        for chest_loot_path in chest_loot_paths:
            chest_loot_command = f"execute as @s[scores={{roll={roll}}}] run setblock ~ ~1 ~ chest{{LootTable:\"{chest_loot_path}\"}}"
            roll += 1
            chest_loot_commands.append(chest_loot_command)
        chest_loot_commands.append('kill @s')    
        ctx.data.functions["fishing:chest/2"] = Function(chest_loot_commands)
