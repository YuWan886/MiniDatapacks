# 结束

# 结算
execute as @a[tag=ingame] run function th:game/ingame/settlement

tag @a[tag=ingame] remove ingame
tag @a[tag=spectator] remove spectator
tag @a[tag=personout] remove personout
tag @a[tag=teamout] remove teamout
tag @a[tag=winteam] remove winteam
tag @a[tag=joinhalfway] remove joinhalfway
tag @a add lobby

# 清空队伍
team empty Red
team empty Green
team empty Blue
team empty Yellow
team empty shijian
# 还原队伍颜色
team modify Red color red
team modify Green color green
team modify Blue color blue
team modify Yellow color yellow

# 关闭游戏
scoreboard players set #System InGame 0
# 剩余时间、存活时间
scoreboard players set @a RemainTimeSec 0
scoreboard players set @a RemainTimeMins 0
scoreboard players set @a RemainTimeHours 0
scoreboard players set @a SurvivalTime 0
# 物品
# 随机传送石
scoreboard players set @a RandomTpTimer 0
# 护甲
# 凋零骸骨胸甲
scoreboard players set @a WitherThornCD 10
# 队伍得分
scoreboard players set @a TeamPoint 0
# 队伍人数、淘汰数、死亡数
scoreboard players set #System RedNum 0
scoreboard players set #System GreenNum 0
scoreboard players set #System BlueNum 0
scoreboard players set #System YellowNum 0
scoreboard players set #System RedOut 0
scoreboard players set #System GreenOut 0
scoreboard players set #System BlueOut 0
scoreboard players set #System YellowOut 0
scoreboard players set #System RedDeathCount 0
scoreboard players set #System GreenDeathCount 0
scoreboard players set #System BlueDeathCount 0
scoreboard players set #System YellowDeathCount 0
# 击杀数、死亡数
scoreboard players set @a PerDeathCount 0
scoreboard players set @a PerKillCount 0
# 矿物块使用次数
scoreboard players set @a CopperUsageCount 0
scoreboard players set @a IronUsageCount 0
scoreboard players set @a GoldUsageCount 0
scoreboard players set @a DiamondUsageCount 0
scoreboard players set @a NetheriteUsageCount 0
# 计时器
scoreboard players set Timer TimerSec 0
scoreboard players set Timer AirDropTimer 0

# 重要的是说三遍
tellraw @a [{translate: "game.ingame.nextgame.1",color: "red",bold: true}]
tellraw @a [{translate: "game.ingame.nextgame.1",color: "red",bold: true}]
tellraw @a [{translate: "game.ingame.nextgame.1",color: "red",bold: true}]

advancement revoke @a everything

gamemode adventure @a

clear @a
effect clear @a

function th:game/lobby