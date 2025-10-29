# 淘汰
gamemode spectator @s
tag @s add personout
effect clear @s

execute as @s[team=Red] run scoreboard players add #System RedOut 1
execute as @s[team=Green] run scoreboard players add #System GreenOut 1
execute as @s[team=Blue] run scoreboard players add #System BlueOut 1
execute as @s[team=Yellow] run scoreboard players add #System YellowOut 1

# 寄
title @s title [{translate: "game.ingame.out.title",color: "dark_red",bold:true}]
title @s subtitle [{translate: "game.ingame.out.subtitle.1"},{translate: "game.ingame.out.subtitle.2",color: "red",bold: true}]

# 淘汰通告
tellraw @a [{translate: "game.ingame.tishiji",color: "light_purple"},{"selector": "@s",color: "gray"},{translate: "game.ingame.out.tellraw.1",color: "red"}]

