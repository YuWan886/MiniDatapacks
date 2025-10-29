# 使用 1 个

# 清除
clear @s flint[custom_model_data={strings:["time_chip"]}] 1
# 奖励 2 分钟
scoreboard players add @s RemainTimeMins 2
tellraw @s [{translate: "game.ingame.tishiji",color: "light_purple"},{translate: "game.item.tellraw.consume",color: "white"},{translate: "game.item.time_chip.used1.1",color: "white"}]
# 重置
advancement revoke @s only th:items/item_chip

