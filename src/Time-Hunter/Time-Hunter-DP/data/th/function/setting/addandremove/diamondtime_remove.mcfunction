# 钻石块时间 减少 1 分钟
scoreboard players remove #System DiamondTime 1

tellraw @a [{translate: "game.ingame.tishiji",color: "light_purple"},{translate: "game.score.diamondtime",color: "dark_purple",bold: true}," ",{translate: "game.setting.time.changed",color: "white"},{score: {name: "#System",objective: "DiamondTime"},color: "blue"},{translate: "game.setting.time.mins",color: "white"}]