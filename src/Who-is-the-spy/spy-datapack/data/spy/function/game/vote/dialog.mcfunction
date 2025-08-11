execute store result storage spy:game speak.num int 1 run scoreboard players set #Game G_SpeakPlayer 1
data remove storage spy:game vote.temp

execute as @a[tag=!out,tag=player_1] run data modify storage spy:game vote.temp append from storage spy:game vote.player_1
execute as @a[tag=!out,tag=player_2] run data modify storage spy:game vote.temp append from storage spy:game vote.player_2
execute as @a[tag=!out,tag=player_3] run data modify storage spy:game vote.temp append from storage spy:game vote.player_3
execute as @a[tag=!out,tag=player_4] run data modify storage spy:game vote.temp append from storage spy:game vote.player_4
execute as @a[tag=!out,tag=player_5] run data modify storage spy:game vote.temp append from storage spy:game vote.player_5
execute as @a[tag=!out,tag=player_6] run data modify storage spy:game vote.temp append from storage spy:game vote.player_6
execute as @a[tag=!out,tag=player_7] run data modify storage spy:game vote.temp append from storage spy:game vote.player_7
execute as @a[tag=!out,tag=player_8] run data modify storage spy:game vote.temp append from storage spy:game vote.player_8

function spy:game/vote/begin with storage spy:game vote