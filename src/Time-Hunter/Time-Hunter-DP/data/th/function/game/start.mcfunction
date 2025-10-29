tag @a remove lobby
tag @a[tag=!ready] add spectator
tag @a[tag=ready] add ingame
tag @a[tag=ready] remove ready

# 计分
scoreboard players set @a[tag=ingame] RemainTimeHours 0
scoreboard players set @a[tag=ingame] RemainTimeSec 0
scoreboard players set Timer StartTimer 100
scoreboard players operation @a[tag=ingame] RemainTimeMins = #System BeginTime
scoreboard players set #System InGame 1
scoreboard players set Timer TimerSec 20

# 开始标题
title @a times 0 20 0
title @a title [{translate: "game.start.title"}]

# 更改游戏模式
gamemode survival @a[tag=ingame]
gamemode spectator @a[tag=spectator]

# 清除大厅
fill -1 149 -1 16 165 16 air

# 清除状态效果
effect clear @a

# 队伍检查
function th:game/utils/actualteams/pretreatment

# 音效
playsound ui.button.click record @s

# 物品设置
function th:setting/item_setting

# 队伍传送
function th:game/ingame/spread_teams/random_tp with storage th:team distance