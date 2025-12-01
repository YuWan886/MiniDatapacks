scoreboard players operation #Game rss.timer = #Game rss.roundtime

execute store result score #Game rss.roll run random value 10..120

execute store result storage rss:game tick_rate int 1 run scoreboard players get #Game rss.roll

function rss:utils/set_tick with storage rss:game