# 死亡扣除时间 
execute if score GameRuleSet RemoveTime matches 1 as @s[scores={DeathCheck=1..}] run function th:game/removetime/removemins
execute if score GameRuleSet RemoveTime matches 0 as @s[scores={DeathCheck=1..}] run function th:game/removetime/removehalf