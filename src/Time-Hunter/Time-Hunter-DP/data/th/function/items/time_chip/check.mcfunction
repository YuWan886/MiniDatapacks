# 检测

# 1 个
execute if entity @s[nbt={SelectedItem:{id:"minecraft:flint",components:{"minecraft:custom_model_data":{strings:["time_chip"]}},count:1}}] run return run function th:items/time_chip/1
# 5 个
execute if entity @s[nbt={SelectedItem:{id:"minecraft:flint",components:{"minecraft:custom_model_data":{strings:["time_chip"]}},count:5}}] run return run function th:items/time_chip/5
# 20 个
execute if entity @s[nbt={SelectedItem:{id:"minecraft:flint",components:{"minecraft:custom_model_data":{strings:["time_chip"]}},count:20}}] run return run function th:items/time_chip/20

# 补偿，非 1/5/20 使用
loot give @s loot th:items/time_chip
# 重置
advancement revoke @s only th:items/item_chip
