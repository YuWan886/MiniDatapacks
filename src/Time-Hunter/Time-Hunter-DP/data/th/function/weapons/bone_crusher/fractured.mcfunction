# 碎骨

# 速度降低0.2
execute as @s[tag=!fractured] run attribute @s movement_speed modifier add 223132 0.8 add_multiplied_total
tag @s add fractured
playsound th:sound.enchantment.fractured record @s ~ ~ ~

# 5s后恢复
execute as @s[tag=fractured] run schedule function th:weapons/bone_crusher/clear 5s
