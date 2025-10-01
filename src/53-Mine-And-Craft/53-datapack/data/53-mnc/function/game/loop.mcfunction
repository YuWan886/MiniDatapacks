# 检查答案
execute as @a[scores={Option=0..4}] run function 53-mnc:check/general_1 with entity @s

# 没分啦
execute as @a[scores={Score=..0},tag=!lack] run function 53-mnc:game/lack
execute as @a[scores={Score=1..},tag=lack] run function 53-mnc:game/lack_cancel

# 费用
execute as @a[scores={Score=1..}] if score @s Walk_CM >= $Cost Walk_CM run function 53-mnc:utils/settle/walk
execute as @a[scores={Score=1..}] if score @s Interact.Crafting_Tabel >= $Cost Interact.Crafting_Tabel run function 53-mnc:utils/settle/crafting_table
execute as @a[scores={Score=1..}] if score @s Interact.Furnace >= $Cost Interact.Furnace run function 53-mnc:utils/settle/furnace
execute as @a[scores={Score=1..}] if score @s Interact.Blast_Furnace >= $Cost Interact.Blast_Furnace run function 53-mnc:utils/settle/blast_furnace
execute as @a[scores={Score=1..}] if score @s Interact.Smoker >= $Cost Interact.Smoker run function 53-mnc:utils/settle/smoker

# Sound
scoreboard players remove @a[scores={SoundTime=0..}] SoundTime 1
execute as @a[scores={SoundTime=0}] run stopsound @s