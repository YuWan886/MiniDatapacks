# 空投时间 减少 1 分钟（60 秒）
scoreboard players remove Timer AirDropTimer 60

# 设置参数
execute store result storage th:event airdrop.intervaltime int 1 run scoreboard players get Timer AirDropTimer

tellraw @a [{translate: "game.ingame.tishiji",color: "light_purple"},{translate: "game.score.airdropinterval",color: "dark_purple",bold: true}," ",{translate: "game.setting.time.changed",color: "white"},{score: {name: "Timer",objective: "AirDropTimer"},color: "white"},{translate: "game.setting.time.sec",color: "white"}]