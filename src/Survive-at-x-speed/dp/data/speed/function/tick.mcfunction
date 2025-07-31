execute as @a store success score @s Speed run attribute @s attack_speed modifier value get speed:rate 1
execute as @a[scores={Speed=0}] run function speed:game/player with storage speed:game settings