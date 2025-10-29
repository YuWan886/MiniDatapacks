# 使用 20 个

# 清除
clear @s flint[custom_model_data={strings:["time_chip"]}] 20
# 随机复活队友

# 时间减半
execute as @s run function th:items/time_chip/remove_half_time
# 红
execute as @s[team=Red] run tag @r[team=Red,tag=personout] add reborn
execute as @s[team=Red] run scoreboard players operation @a[team=Red,tag=reborn] RemainTimeHours = @s RemainTimeHours
execute as @s[team=Red] run scoreboard players operation @a[team=Red,tag=reborn] RemainTimeMins = @s RemainTimeMins
execute as @s[team=Red] run scoreboard players operation @a[team=Red,tag=reborn] RemainTimeSec = @s RemainTimeSec
execute as @s[team=Red] run tp @a[tag=reborn,team=Red] @s
# 绿
execute as @s[team=Green] run tag @r[team=Green,tag=personout] add reborn
execute as @s[team=Green] run scoreboard players operation @a[team=Green,tag=reborn] RemainTimeHours = @s RemainTimeHours
execute as @s[team=Green] run scoreboard players operation @a[team=Green,tag=reborn] RemainTimeMins = @s RemainTimeMins
execute as @s[team=Green] run scoreboard players operation @a[team=Green,tag=reborn] RemainTimeSec = @s RemainTimeSec
execute as @s[team=Green] run tp @a[tag=reborn,team=Green] @s
# 黄
execute as @s[team=Yellow] run tag @r[team=Yellow,tag=personout] add reborn
execute as @s[team=Yellow] run scoreboard players operation @a[team=Yellow,tag=reborn] RemainTimeHours = @s RemainTimeHours
execute as @s[team=Yellow] run scoreboard players operation @a[team=Yellow,tag=reborn] RemainTimeMins = @s RemainTimeMins
execute as @s[team=Yellow] run scoreboard players operation @a[team=Yellow,tag=reborn] RemainTimeSec = @s RemainTimeSec
execute as @s[team=Yellow] run tp @a[tag=reborn,team=Yellow] @s
# 蓝
execute as @s[team=Blue] run tag @r[team=Blue,tag=personout] add reborn
execute as @s[team=Blue] run scoreboard players operation @a[team=Blue,tag=reborn] RemainTimeHours = @s RemainTimeHours
execute as @s[team=Blue] run scoreboard players operation @a[team=Blue,tag=reborn] RemainTimeMins = @s RemainTimeMins
execute as @s[team=Blue] run scoreboard players operation @a[team=Blue,tag=reborn] RemainTimeSec = @s RemainTimeSec
execute as @s[team=Blue] run tp @a[tag=reborn,team=Blue] @s

tag @a[tag=reborn] remove personout
gamemode survival @a[tag=reborn]
# 通告
tellraw @a [{translate: "game.ingame.tishiji",color: "light_purple"},{"selector": "@s"},{translate: "game.item.tellraw.consume",color: "white"},{translate: "game.item.time_chip.used20.1",color: "white"}]
# 重置
advancement revoke @s only th:items/item_chip