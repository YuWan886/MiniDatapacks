# 检查随机tp的CD

# 重置进度
advancement revoke @s only th:items/random_tp

# 还在冷却
execute if score @s RandomTpTimer matches 1.. run function th:items/random_tp/cooldown
# 可使用
execute if score @s RandomTpTimer matches 0 run function th:items/random_tp/used




