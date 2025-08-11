scoreboard players set @s TriggerFunction 0
scoreboard players enable @s TriggerFunction

scoreboard players add #Game G_ConfirmCount 1
title @a times 10t 2s 10t
execute if score #Game G_ConfirmCount = #Game G_PlayerCount run title @a title {text:"所有玩家均已确认"}
execute if score #Game G_ConfirmCount = #Game G_PlayerCount run title @a subtitle {text:"5秒后开始发言"}
execute if score #Game G_ConfirmCount = #Game G_PlayerCount run schedule function spy:schedule/speak_main 8s