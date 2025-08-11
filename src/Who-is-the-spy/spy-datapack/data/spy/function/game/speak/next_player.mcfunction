# 发言结束 移除队伍 清除效果
advancement revoke @s only spy:next_player

title @s title {text:"你的发言回合已结束"}
team leave @s
effect clear @s glowing

# 下一位继续/开始投票
execute store result storage spy:game speak.num int 1 run scoreboard players add #Game G_SpeakPlayer 1
execute if score #Game G_SpeakPlayer <= #Game G_IngameCount run schedule function spy:schedule/speak_main 2.5s
execute if score #Game G_SpeakPlayer > #Game G_IngameCount run schedule function spy:game/vote/dialog 2.5s