# 欢迎安装

tellraw @a "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
tellraw @a [{translate: "game.welcome.1",italic: false},{translate: "game.welcome.author",italic: false,bold: true,"underlined": true,color: "#f2038f",click_event: {action:"open_url",url:"https://space.bilibili.com/438381132"},hover_event: {action: "show_text",value: [{translate: "game.welcome.author.subscribe"}]}},{translate: "game.welcome.2",italic: false},{translate: "game.welcome.3",italic: false},{translate: "game.welcome.4",italic: false},"！！！","\n","\n==========","\n",{translate: "game.welcome.ver",italic: false},{translate: "game.welcome.ver.now",color: "green"},"\n",{translate: "game.welcome.mcver"},{translate: "game.welcome.mcver.now",color: "green"},"\n","==========\n"]
tellraw @a [{translate: "game.welcome.lobby.1"},{translate: "game.welcome.lobby.2",color: "dark_purple",bold: true},{translate: "game.welcome.lobby.3",color: "white",bold: false},{translate: "game.welcome.lobby.4"},"\n",{translate: "game.welcome.lobby.1"},{translate: "game.welcome.lobby.2",color: "dark_purple",bold: true},{translate: "game.welcome.lobby.3",color: "white",bold: false},{translate: "game.welcome.lobby.5"}]

# 计分板

scoreboard objectives add Lobby trigger
scoreboard objectives add GameRule trigger
# 游戏状态（1 为进行中，0 为未开始）
scoreboard objectives add InGame dummy
# 游戏规则
scoreboard objectives add DefaultSet trigger
scoreboard objectives add Friendlyfire dummy
scoreboard objectives add KeepInv dummy
scoreboard objectives add NaturalRegen dummy
scoreboard objectives add RemoveTime dummy
scoreboard objectives add PlayerGlow dummy
scoreboard objectives add TimerSec dummy
scoreboard objectives add TeamPoint dummy

# 死亡、击杀
scoreboard objectives add DeathCheck deathCount
scoreboard objectives add PerDeathCount deathCount [{translate: "game.score.perdeathcount"}]
scoreboard objectives add KillCheck playerKillCount
scoreboard objectives add PerKillCount playerKillCount [{translate: "game.score.perkillcount"}]
# 剩余时间（时、分、秒）
scoreboard objectives add RemainTimeSec dummy [{translate: "game.score.remaintimesec"}]
scoreboard objectives add RemainTimeMins dummy [{translate: "game.score.remaintimemins"}]
scoreboard objectives add RemainTimeHours dummy [{translate: "game.score.remaintimehours"}]
# 初始时间、奖励与惩罚时间
scoreboard objectives add BeginTime dummy [{translate: "game.score.begintime",color: "dark_purple"}]
scoreboard objectives add DeathTime dummy [{translate: "game.score.deathtime",color: "red"}]
scoreboard objectives add KillTime dummy [{translate: "game.score.killtime",color: "green"}]
scoreboard objectives add StartTimer dummy
scoreboard objectives add CopperTime dummy [{translate: "game.score.coppertime",color: "#894900"}]
scoreboard objectives add IronTime dummy [{translate: "game.score.irontime"}]
scoreboard objectives add GoldTime dummy [{translate: "game.score.goldtime",color:"gold"}]
scoreboard objectives add DiamondTime dummy [{translate: "game.score.diamondtime",color: "blue"}]
scoreboard objectives add NetheriteTime dummy [{translate: "game.score.netheritetime",color: "black"}]
# 队伍人数
scoreboard objectives add RedNum dummy [{translate: "game.team.red.num"}]
scoreboard objectives add GreenNum dummy [{translate: "game.team.green.num"}]
scoreboard objectives add BlueNum dummy [{translate: "game.team.blue.num"}]
scoreboard objectives add YellowNum dummy [{translate: "game.team.yellow.num"}]
# 队伍淘汰数、死亡数
scoreboard objectives add RedOut dummy
scoreboard objectives add GreenOut dummy
scoreboard objectives add BlueOut dummy
scoreboard objectives add YellowOut dummy
scoreboard objectives add RedDeathCount dummy [{translate: "game.team.red.deathcount"}]
scoreboard objectives add GreenDeathCount dummy [{translate: "game.team.green.deathcount"}]
scoreboard objectives add BlueDeathCount dummy [{translate: "game.team.blue.deathcount"}]
scoreboard objectives add YellowDeathCount dummy [{translate: "game.team.yellow.deathcount"}]

# 物品

# 钓鱼竿
scoreboard objectives add CarrotStickUsed used:carrot_on_a_stick
# 修复石
scoreboard objectives add RepairItemCommon dummy
scoreboard objectives add RepairItemFull dummy
# 随机传送石
scoreboard objectives add RandomTpTimer dummy

# 护甲

# 凋零骸骨胸甲
scoreboard objectives add WitherThornCD dummy
scoreboard objectives add DamageTaken custom:damage_taken

# 事件

# 空投
scoreboard objectives add AirDrop dummy
scoreboard objectives add AirDropTimer dummy

# 计算

# 2
scoreboard objectives add 2Divisor dummy
scoreboard players set #System 2Divisor 2
# 数据统计
scoreboard objectives add SurvivalTime dummy [{translate: "game.score.survivaltime"}]
scoreboard objectives add CopperUsageCount dummy [{translate:"game.score.copperusagecount"}]
scoreboard objectives add IronUsageCount dummy [{translate: "game.score.ironusagecount"}]
scoreboard objectives add GoldUsageCount dummy [{translate: "game.score.goldusagecount"}]
scoreboard objectives add DiamondUsageCount dummy [{translate: "game.score.diamondusagecount"}]
scoreboard objectives add NetheriteUsageCount dummy [{translate: "game.score.netheriteusagecount"}]
# 分进时
scoreboard objectives add 60Mins dummy
scoreboard players set #System 60Mins 60
# 队伍间隔
scoreboard objectives add TeamDistance trigger
# 出生坐标
scoreboard objectives add SpawnX dummy
scoreboard objectives add SpawnY dummy
# 队伍
team add Red [{translate: "game.team.red.name",color: "red"}]
team modify Red color red
team modify Red prefix [{translate: "game.team.red.name",color: "red"}]
team add Green [{translate: "game.team.green.name",color: "green"}]
team modify Green color green
team modify Green prefix [{translate: "game.team.green.name",color: "green"}]
team add Blue [{translate: "game.team.blue.name",color: "blue"}]
team modify Blue color blue
team modify Blue prefix [{translate: "game.team.blue.name",color: "blue"}]
team add Yellow [{translate: "game.team.yellow.name",color: "yellow"}]
team modify Yellow color yellow
team modify Yellow prefix [{translate: "game.team.yellow.name",color: "yellow"}]
team add shijian [{translate: "game.team.shijian.name",color: "dark_gray"}]
team modify shijian color dark_gray
team modify shijian prefix [{translate: "game.team.shijian.name",color: "dark_gray"}]

# 游戏设置
gamerule sendCommandFeedback false
gamerule commandBlockOutput false
gamerule doImmediateRespawn true

# 配方
function th:give_recipe

