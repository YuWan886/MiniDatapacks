execute positioned ^ ^ ^0.1 unless entity @e[type=#baby-world:animal,distance=..1,limit=1,sort=nearest] run function baby-world:golden_dandelion_2

execute positioned ^ ^ ^0.1 if entity @e[type=#baby-world:animal,distance=..1,limit=1,sort= nearest,tag=isbabylocked] run return run function baby-world:golden_dandelion_3

execute positioned ^ ^ ^0.1 if entity @e[type=#baby-world:animal,distance=..1,limit=1,sort= nearest,tag=!isbabylocked] run clear @s stick[custom_data={item:"golden_dandelion"}] 1
execute positioned ^ ^ ^0.1 run tag @e[type=#baby-world:animal,distance=..1,limit=1,sort= nearest,tag=!isbabylocked] add isbabylocked

