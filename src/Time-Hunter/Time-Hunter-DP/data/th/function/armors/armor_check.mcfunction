# 护甲

# 凋零骸骨胸甲
execute if items entity @a[tag=!withered_bone_chestplate] armor.chest diamond_chestplate[custom_model_data={strings:["withered_bone_chestplate"]}] run scoreboard players set @s WitherThornCD 200
execute if items entity @a[tag=!withered_bone_chestplate] armor.chest diamond_chestplate[custom_model_data={strings:["withered_bone_chestplate"]}] run tag @s add withered_bone_chestplate
execute unless items entity @a[tag=withered_bone_chestplate] armor.chest diamond_chestplate[custom_model_data={strings: ["withered_bone_chestplate"]}] run tag @s remove withered_bone_chestplate

execute as @s[tag=withered_bone_chestplate] run function th:armors/withered_bone_chestplate/main