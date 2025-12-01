scoreboard objectives add rss.init dummy

scoreboard objectives add rss.timer dummy
scoreboard objectives add rss.roundtime dummy
scoreboard objectives add rss.roll dummy

execute unless score #Game rss.init matches 1 run function rss:init