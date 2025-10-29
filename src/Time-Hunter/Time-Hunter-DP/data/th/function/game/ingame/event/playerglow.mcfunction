# 给予效果
execute as @s[tag=ingame,predicate=!th:player/shift] unless entity @s[nbt={active_effects:[{id:"minecraft:glowing"}]}] run effect give @s glowing infinite 0 true
# 潜行时 清除效果
execute as @s[tag=ingame,predicate=th:player/shift] run effect clear @s glowing