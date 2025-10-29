# 预加载区块

# 检测
data modify storage th_chunky:begin check set value {add:0b}
# 安装了 Chunky
execute store success storage th_chunky:begin check.add byte 1 run chunky help
execute if data storage th_chunky:begin check{add:1b} run tellraw @a [{translate: "game.ingame.tishiji",color: "light_purple"},{translate: "game.addon.check.yes",color: "white"},{translate: "game.addon.chunky",color: "green",bold: true},{translate: "game.addon.chunky.1",color: "white",bold: false}]
execute if data storage th_chunky:begin check{add:1b} run chunky start minecraft:overworld circle 0 0 1500
execute if data storage th_chunky:begin check{add:1b} run chunky confirm