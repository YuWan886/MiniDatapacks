# 随机 tp

# 聊天栏通告
execute as @s run tellraw @a [{"selector": "@s"},{translate: "game.item.random_tp.used.1"}]
# 随机传送
spreadplayers 0 0 600 2048 false @s
scoreboard players set @s RandomTpTimer 150