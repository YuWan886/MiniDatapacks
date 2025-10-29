# 物品

# 随机传送石
scoreboard players remove @a[scores={RandomTpTimer=1..}] RandomTpTimer 1
execute as @s[scores={RandomTpTimer=1}] run tellraw @s [{translate: "game.ingame.tishiji",color: "light_purple"},{translate: "game.item.random_tp.name",color: "dark_purple",bold: true},{translate: "game.item.random_tp.used.2",color: "white",bold: false}]