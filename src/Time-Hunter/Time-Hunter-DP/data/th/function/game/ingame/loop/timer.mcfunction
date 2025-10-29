# 计时器

scoreboard players remove Timer TimerSec 1
# 
execute if score Timer TimerSec matches 1 as @s[tag=!personout] run function th:game/ingame/loop/all_timer
# 20 Ticks => 1 秒
execute if score Timer TimerSec matches 1 run scoreboard players remove @s[tag=!personout] RemainTimeSec 1
execute if score @s[tag=!personout] RemainTimeSec matches -1 run scoreboard players remove @s RemainTimeMins 1
execute if score @s[tag=!personout] RemainTimeSec matches -1 run scoreboard players add @s SurvivalTime 1
execute if score @s[tag=!personout] RemainTimeSec matches -1 run scoreboard players set @s RemainTimeSec 59
execute if score @s[tag=!personout] RemainTimeMins matches ..-1 run scoreboard players remove @s RemainTimeHours 1
execute if score @s[tag=!personout] RemainTimeMins matches ..-1 run scoreboard players set @s RemainTimeMins 59
# 重置
execute if score Timer TimerSec matches 1 run scoreboard players set Timer TimerSec 20

# 时间换算
execute if score @s[tag=!personout] RemainTimeMins matches 60.. run function th:game/utils/remaintime/mins_to_hour
