scoreboard players set #Game G.GameState 0
scoreboard players set #Game G.Roll 0
function num:settings/main with storage num:game settings
function num:utils/remove_tag
function num:utils/uninstall_score

title @a title {text:"游戏结束",color:"red",bold:true}
title @a subtitle ["",{text:"MVP",color:"gold",bold:true}," ",{selector:"@a[scores={FinalRank=1}]"}]
playsound block.note_block.didgeridoo record @a
playsound ui.toast.challenge_complete record @a
execute as @a at @s run particle explosion_emitter ~ ~1 ~ 1 1 1 0.5 60 normal
execute as @a at @s run particle large_smoke ~ ~1 ~ 0.5 0.5 0.5 0.1 50 normal
execute as @a at @s run particle soul_fire_flame ~ ~1 ~ 1.2 1.2 1.2 0.1 100 normal

scoreboard players set @a Number.Player 0
scoreboard players set @a Point 0
scoreboard players set @a RoundRank 0
scoreboard players set @a FinalRank 0
scoreboard players reset .round var
scoreboard players reset * Number.Red
scoreboard players reset * Number.Green
scoreboard players reset * Number.Blue
scoreboard players reset * Number.Yellow

team empty red
team empty green
team empty blue
team empty yellow

bossbar remove num:time
schedule clear num:schedule/1s