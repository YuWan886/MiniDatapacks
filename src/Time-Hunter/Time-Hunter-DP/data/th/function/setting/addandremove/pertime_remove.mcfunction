# 初始时间 减少 1 分钟
scoreboard players remove #System BeginTime 1

tellraw @a [{translate: "game.ingame.tishiji",color: "light_purple"},{translate: "game.score.begintime",color: "dark_purple",bold: true}," ",{translate: "game.setting.time.changed",color: "white"},{score: {name: "#System",objective: "BeginTime"},color: "dark_purple"},{translate: "game.setting.time.mins",color: "white"}]

