# 击杀奖励时间
scoreboard players set @s KillCheck 0
scoreboard players add @s PerKillCount 1

scoreboard players operation @s RemainTimeMins += #System KillTime

title @s title [{translate: "game.ingame.rewardtime.tip.1"}," ",{score: {name: "#System",objective: "KillTime"}},{translate: "game.ingame.rewardtime.tip.2"}]