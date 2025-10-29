# 获胜

# 红队
execute if score @s[team=Red,tag=!winteam] TeamPoint matches 3 run function th:game/ingame/win/redwin
# 绿队
execute if score @s[team=Green,tag=!winteam] TeamPoint matches 3 run function th:game/ingame/win/greenwin
# 蓝队
execute if score @s[team=Blue,tag=!winteam] TeamPoint matches 3 run function th:game/ingame/win/bluewin
# 黄队
execute if score @s[team=Yellow,tag=!winteam] TeamPoint matches 3 run function th:game/ingame/win/yellowwin