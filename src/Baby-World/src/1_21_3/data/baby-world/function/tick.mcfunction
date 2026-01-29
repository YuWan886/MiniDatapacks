execute as @a at @s as @e[type=#baby-world:animal,tag=isbabylocked,distance=..100] unless data entity @s {Age:-18000} run data modify entity @s Age set value -24000

execute as @a[scores={baby-world.golden_dandelion_used=1..}] at @s if entity @e[type=#baby-world:animal,distance=..5,] run return run function baby-world:golden_dandelion
execute as @a[scores={baby-world.golden_dandelion_used=1..}] run scoreboard players set @s baby-world.golden_dandelion_used 0