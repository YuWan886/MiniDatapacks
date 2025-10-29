# 凋零骸骨胸甲 

# 冷却
scoreboard players remove @s[scores={WitherThornCD=1..}] WitherThornCD 1
# 提示
execute as @s[scores={WitherThornCD=1}] run tellraw @s [{translate: "game.ingame.tishiji",color: "light_purple"},{translate: "game.armor.withered_bone_chestplate.name",color: "dark_purple"},{translate: ""}]

# 免疫凋零
execute as @s[nbt={active_effects:[{id:"minecraft:wither"}]}] run effect clear @s wither

