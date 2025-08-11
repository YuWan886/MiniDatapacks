scoreboard players set @s TriggerFunction 0
scoreboard players enable @s TriggerFunction

scoreboard players add #Game G_VoteCount 1
execute if score #Game G_VoteCount = #Game G_IngameCount run function spy:game/vote/settle