execute if score #Timer T.RoundTime matches 1.. run scoreboard players remove #Timer T.RoundTime 1
execute if score #Timer T.RoundTime matches 0.. run execute store result bossbar num:time value run scoreboard players get #Timer T.RoundTime
execute if score #Timer T.RoundTime matches 0 as @a[limit=1] run function num:game/event/next_round

schedule function num:schedule/1s 1s