# 初始时间 增加 1 分钟
scoreboard players add #System BeginTime 1

tellraw @a [{translate: "game.ingame.tishiji",color: "light_purple"},{translate: "game.score.begintime",color: "dark_purple",bold: true}," ",{translate: "game.setting.time.changed",color: "white"},{score: {name: "#System",objective: "BeginTime"},color: "dark_purple"},{translate: "game.setting.time.mins",color: "white"}]
