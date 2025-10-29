# 检测 普通修复石 1/4

data modify storage th:repair check set value {"success":0}
# 成功
execute as @s[scores={RepairItemCommon=1}] if entity @s[predicate=th:items/repairstone/common] run function th:items/repairstone/common_success
execute as @s[scores={RepairItemCommon=1}] unless entity @s[predicate=th:items/repairstone/common] run tellraw @s [{translate: "game.ingame.tishiji",color: "light_purple"},{translate: "game.item.repairstone.used.tellraw.5",color: "red"}]
# 失败
execute as @s[scores={RepairItemCommon=0}] if data storage th:repair check{"success":0} run tellraw @s [{translate: "game.ingame.tishiji",color: "light_purple"},{translate: "game.item.repairstone.used.tellraw.6",color: "red"}]

data modify storage th:repair check set value {"success":0}