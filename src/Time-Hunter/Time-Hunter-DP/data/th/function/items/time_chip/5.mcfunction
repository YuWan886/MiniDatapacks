# 使用 5 个

# 清除
clear @s flint[custom_model_data={strings:["time_chip"]}] 5
# 抽取药水 
#   稀有：0.2
#   普通：0.8
tellraw @s [{translate: "game.ingame.tishiji",color: "light_purple"},{translate: "game.item.tellraw.consume",color: "white"},{translate: "game.item.time_chip.used5.1",color: "white"}]
execute as @s if predicate th:items/time_chip/0.2 run return run loot give @s loot th:potions/rare
loot give @s loot th:potions/common
# 重置
advancement revoke @s only th:items/item_chip