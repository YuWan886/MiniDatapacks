# 炽魂凝域

# 队友获得抗火 I
execute as @s[team=Red] run effect give @a[team=Red,distance=..10] fire_resistance 10 0 true
execute as @s[team=Green] run effect give @a[team=Green,distance=..10] fire_resistance 10 0 true
execute as @s[team=Blue] run effect give @a[team=Blue,distance=..10] fire_resistance 10 0 true
execute as @s[team=Yellow] run effect give @a[team=Yellow,distance=..10] fire_resistance 10 0 true

# 敌对生物获得缓慢 I
execute as @s[team=Red] run effect give @e[team=!Red,distance=..10] slowness 10 0 true
execute as @s[team=Green] run effect give @e[team=!Green,distance=..10] slowness 10 0 true
execute as @s[team=Blue] run effect give @e[team=!Blue,distance=..10] slowness 10 0 true
execute as @s[team=Yellow] run effect give @e[team=!Yellow,distance=..10] slowness 10 0 true