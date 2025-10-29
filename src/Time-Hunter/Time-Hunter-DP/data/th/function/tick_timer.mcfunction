# 游戏中

execute if score #System InGame matches 1 as @a[tag=ingame] run function th:game/ingame/loop/run
# 物品
function th:items/item_timer
# 护甲
execute as @a run function th:armors/armor_check