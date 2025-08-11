# 淘汰 加队 旁观
tag @s add out
team join Out @s
gamemode spectator @s

# 计算是否结束
scoreboard players add #Game G_OutCount 1
scoreboard players remove #Game G_IngameCount 1

execute as @s[tag=spy] run function spy:game/settlement/normal_win

execute as @s[tag=normal] if score #Game G_PlayerCount matches 3 run function spy:game/settlement/spy_win
execute as @s[tag=normal] if score #Game G_PlayerCount matches 4 if score #Game G_OutCount matches 2 run function spy:game/settlement/spy_win
execute as @s[tag=normal] if score #Game G_PlayerCount matches 5 if score #Game G_OutCount matches 3 run function spy:game/settlement/spy_win
execute as @s[tag=normal] if score #Game G_PlayerCount matches 6 if score #Game G_OutCount matches 4 run function spy:game/settlement/spy_win
execute as @s[tag=normal] if score #Game G_PlayerCount matches 7 if score #Game G_OutCount matches 5 run function spy:game/settlement/spy_win
execute as @s[tag=normal] if score #Game G_PlayerCount matches 8 if score #Game G_OutCount matches 6 run function spy:game/settlement/spy_win

execute as @s[tag=normal] if score #Game G_PlayerCount matches 4 unless score #Game G_OutCount matches 2 run function spy:game/speak/continue
execute as @s[tag=normal] if score #Game G_PlayerCount matches 5 unless score #Game G_OutCount matches 3 run function spy:game/speak/continue
execute as @s[tag=normal] if score #Game G_PlayerCount matches 6 unless score #Game G_OutCount matches 4 run function spy:game/speak/continue
execute as @s[tag=normal] if score #Game G_PlayerCount matches 7 unless score #Game G_OutCount matches 5 run function spy:game/speak/continue
execute as @s[tag=normal] if score #Game G_PlayerCount matches 8 unless score #Game G_OutCount matches 6 run function spy:game/speak/continue