# 个人淘汰
execute if score @s[tag=!personout] RemainTimeHours matches -1 run function th:game/ingame/out/personout

# 队伍淘汰

# 红队
execute if score #System RedOut = #System RedNum run function th:game/ingame/out/redout
# 绿队
execute if score #System GreenOut = #System GreenNum run function th:game/ingame/out/greenout
# 蓝队
execute if score #System BlueOut = #System BlueNum run function th:game/ingame/out/blueout
# 黄队
execute if score #System YellowOut = #System YellowNum run function th:game/ingame/out/yellowout