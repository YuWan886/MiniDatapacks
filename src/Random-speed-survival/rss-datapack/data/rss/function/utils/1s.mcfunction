execute if score #Game rss.timer matches 1.. run scoreboard players remove #Game rss.timer 1
execute if score #Game rss.timer matches 0 run function rss:utils/random

schedule function rss:utils/1s 1s