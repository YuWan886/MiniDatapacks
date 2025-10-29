tag @a[team=Blue] add winteam

# 通告
tellraw @a [{translate: "game.ingame.tishiji",color: "light_purple"},{translate: "game.ingame.win.title.1",color: "gold"},{translate: "game.team.blue.name",color: "blue",bold: true},{translate: "game.ingame.win.title.2",color: "gold"}]
title @a title [{translate: "game.ingame.win.title.1",color: "gold"},{translate: "game.team.blue.name",color: "blue",bold: true},{translate: "game.ingame.win.title.2",color: "gold"}]

# 结束，10s后返回大厅
schedule function th:game/ingame/end 10s