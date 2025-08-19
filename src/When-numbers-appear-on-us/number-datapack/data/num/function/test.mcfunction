
# title @a times 10t 2s 10t
# title @a title {text:"游戏开始",color:"green",bold:true}
# playsound block.note_block.bell record @a
# playsound block.note_block.pling record @a
# execute as @a at @s run particle end_rod ~ ~1 ~ 0.5 1 0.5 0.1 50 normal
# execute as @a at @s run particle glow ~ ~1 ~ 1 1 1 0.2 100 normal
# execute as @a at @s run particle firework ~ ~1 ~ 0 0 0 0.5 1 normal

title @a title {text:"游戏结束",color:"red",bold:true}
title @a subtitle ["",{text:"MVP",color:"gold",bold:true}," ",{selector:"@a[scores={FinalRank=1}]"}]
playsound block.note_block.didgeridoo record @a
playsound ui.toast.challenge_complete record @a
execute as @a at @s run particle explosion_emitter ~ ~1 ~ 1 1 1 0.5 60 normal
execute as @a at @s run particle large_smoke ~ ~1 ~ 0.5 0.5 0.5 0.1 50 normal
execute as @a at @s run particle soul_fire_flame ~ ~1 ~ 1.2 1.2 1.2 0.1 100 normal