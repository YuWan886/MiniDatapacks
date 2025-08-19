execute store result score #Game G.PlayerCount run list
execute if score #Game G.PlayerCount matches 1 run title @a subtitle {text:"[至少需要 2 名玩家]",color:"red",bold:true}
execute if score #Game G.PlayerCount matches 1 run return fail

function num:game/team/assign
clear @a
effect clear @a
effect give @a instant_health 3 31 true
effect give @a saturation 3 31 true
gamemode survival @a

title @a times 10t 2s 10t
title @a title {text:"游戏开始",color:"green",bold:true}
playsound block.note_block.bell record @a
playsound block.note_block.pling record @a
execute as @a at @s run particle end_rod ~ ~1 ~ 0.5 1 0.5 0.1 50 normal
execute as @a at @s run particle glow ~ ~1 ~ 1 1 1 0.2 100 normal
execute as @a at @s run particle firework ~ ~1 ~ 0 0 0 0.5 1 normal

scoreboard players set #Game G.GameState 1
scoreboard players operation #Timer T.RoundTime = #Game G.RoundTime
scoreboard players set .round var 1

function num:game/event/roll
bossbar add num:time {text:"剩余时间"}
bossbar set num:time players @a
bossbar set num:time color green
execute store result bossbar num:time max run scoreboard players get #Game G.RoundTime
function num:schedule/1s