# 队伍间隔设置 检测

# 未改变
execute if score @s TeamDistance = #System TeamDistance run tellraw @a [{translate: "game.ingame.tishiji",color: "light_purple"},{translate: "game.setting.teamdistance",color: "dark_purple",bold: true},{translate: "game.setting.time.changed",color: "white",bold: false},{score: {name: "#System",objective: "TeamDistance"},color: "white",bold: false}]
# 改变了
execute unless score @s TeamDistance = #System TeamDistance run function th:setting/teamdistance/set

# 重置计分板
scoreboard players set @s TeamDistance 0