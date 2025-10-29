# 死亡计数

# 个人
scoreboard players set @s DeathCheck 0
scoreboard players add @s PerDeathCount 1
# 队伍
execute as @s[team=Red] run scoreboard players add #System RedDeathCount 1
execute as @s[team=Green] run scoreboard players add #System GreenDeathCount 1
execute as @s[team=Blue] run scoreboard players add #System BlueDeathCount 1
execute as @s[team=Yellow] run scoreboard players add #System YellowDeathCount 1


# 死亡扣除时间

# 固定分钟
scoreboard players operation @s RemainTimeMins -= #System DeathTime
# 通知
tellraw @s [{translate: "game.ingame.tishiji",color: "light_purple"},{translate: "game.ingame.removetime.tip.1"},{score: {name: "#System",objective: "DeathTime"}},{translate: "game.ingame.removetime.tip.2",color: "white"}]