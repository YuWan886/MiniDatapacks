# 还在冷却
loot give @s loot th:items/random_tp

tellraw @s [{translate: "game.ingame.tishiji",color: "light_purple"},{translate: "game.item.random_tp.check.1",color: "white"},{score: {name: "@s",objective: "RandomTpTimer"},color: "red",bold: true},{translate: "game.item.random_tp.check.2",color: "white",bold: false}]
