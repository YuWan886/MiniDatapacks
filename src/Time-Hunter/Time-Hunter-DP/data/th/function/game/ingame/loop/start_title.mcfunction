# 开始 游戏倒计时 5s
execute if score Timer StartTimer matches 0.. run scoreboard players remove Timer StartTimer 1

execute if score Timer StartTimer matches 90 run title @a times 0 20 0
execute if score Timer StartTimer matches 80 run title @a title "4"
execute if score Timer StartTimer matches 60 run title @a title "3"
execute if score Timer StartTimer matches 40 run title @a title "2"
execute if score Timer StartTimer matches 20 run title @a title "1"

# 提示标题
execute if score Timer StartTimer matches 20 run title @a times 10 60 20
execute if score Timer StartTimer matches 2 run title @a title [{translate: "game.start.title.1"}]