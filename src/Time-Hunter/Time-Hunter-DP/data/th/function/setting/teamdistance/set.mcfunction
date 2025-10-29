# 队伍距离设置
scoreboard players operation #System TeamDistance = @s TeamDistance

execute store result storage th:team distance.x int 1 run scoreboard players get #System TeamDistance

# 提示
tellraw @a [{translate: "game.ingame.tishiji",color: "light_purple"},{translate: "game.setting.teamdistance",color: "dark_purple",bold: true},{translate: "game.setting.time.changed",color: "white",bold: false},{score: {name: "#System",objective: "TeamDistance"},color: "white",bold: false}]