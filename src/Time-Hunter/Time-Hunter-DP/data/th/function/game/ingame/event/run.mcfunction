# 事件控制

# 空投
execute if score GameRuleSet AirDrop matches 1 run function th:game/ingame/event/airdrop/loop with storage th:event airdrop 
# 玩家发光
execute if score GameRuleSet PlayerGlow matches 1 run function th:game/ingame/event/playerglow