# 金块时间 减少 1 分钟
scoreboard players remove #System GoldTime 1

tellraw @a [{translate: "game.ingame.tishiji",color: "light_purple"},{translate: "game.score.goldtime",color: "dark_purple",bold: true}," ",{translate: "game.setting.time.changed",color: "white"},{score: {name: "#System",objective: "GoldTime"},color: "gold"},{translate: "game.setting.time.mins",color: "white"}]