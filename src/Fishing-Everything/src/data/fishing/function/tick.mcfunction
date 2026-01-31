scoreboard players enable @a get_fishing_rod
execute as @a[scores={get_fishing_rod=1..}] run function fishing:give_fishing_rod

execute as @a at @s run function fishing:spawn_egg/1
execute as @a at @s run function fishing:structure/1
execute as @a at @s run function fishing:chest/1