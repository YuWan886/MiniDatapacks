$execute as @s[tag=player_1] run data modify storage spy:game vote.player_1 set value {"label":{"text":"$(name)"},"action":{"type":"run_command","command":"trigger TriggerFunction set 101"}}
$execute as @s[tag=player_2] run data modify storage spy:game vote.player_2 set value {"label":{"text":"$(name)"},"action":{"type":"run_command","command":"trigger TriggerFunction set 102"}}
$execute as @s[tag=player_3] run data modify storage spy:game vote.player_3 set value {"label":{"text":"$(name)"},"action":{"type":"run_command","command":"trigger TriggerFunction set 103"}}
$execute as @s[tag=player_4] run data modify storage spy:game vote.player_4 set value {"label":{"text":"$(name)"},"action":{"type":"run_command","command":"trigger TriggerFunction set 104"}}
$execute as @s[tag=player_5] run data modify storage spy:game vote.player_5 set value {"label":{"text":"$(name)"},"action":{"type":"run_command","command":"trigger TriggerFunction set 105"}}
$execute as @s[tag=player_6] run data modify storage spy:game vote.player_6 set value {"label":{"text":"$(name)"},"action":{"type":"run_command","command":"trigger TriggerFunction set 106"}}
$execute as @s[tag=player_7] run data modify storage spy:game vote.player_7 set value {"label":{"text":"$(name)"},"action":{"type":"run_command","command":"trigger TriggerFunction set 107"}}
$execute as @s[tag=player_8] run data modify storage spy:game vote.player_8 set value {"label":{"text":"$(name)"},"action":{"type":"run_command","command":"trigger TriggerFunction set 108"}}

scoreboard players add #Game G_ConfirmCount 1
execute if score #Game G_ConfirmCount = #Game G_PlayerCount run function spy:game/start/start