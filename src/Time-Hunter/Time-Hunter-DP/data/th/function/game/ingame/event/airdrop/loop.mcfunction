# 计时
$execute if score Timer AirDropTimer matches ..-1 run scoreboard players set Timer AirDropTimer $(intervaltime)

# 默认 900 秒生成 1 次

# 倒计时 标题
execute if score Timer AirDropTimer matches 31 run title @a times 20 60 20
execute if score Timer AirDropTimer matches 30 run title @a title [{translate: "game.event.airdrop.title.1"}]
execute if score Timer AirDropTimer matches 5 if score Timer TimerSec matches 10 run tellraw @a [{translate: "game.ingame.tishiji",color: "light_purple"},{translate: "game.event.airdrop.tellraw.1",color: "white"}]
execute if score Timer AirDropTimer matches 4 if score Timer TimerSec matches 10 run tellraw @a "4......"
execute if score Timer AirDropTimer matches 3 if score Timer TimerSec matches 10 run tellraw @a "3......"
execute if score Timer AirDropTimer matches 2 if score Timer TimerSec matches 10 run tellraw @a "2......"
execute if score Timer AirDropTimer matches 1 if score Timer TimerSec matches 10 run tellraw @a "1......"
# 选人 缓存1s
execute if score Timer AirDropTimer matches 0 run schedule function th:game/ingame/event/airdrop/random_selected 1s


