execute if score #System G_GameStatus matches 1 run function spy:loop/main

# trigger
# execute as @a[scores={TriggerDialog=1}] run function

# TriggerFunction
# 1 清楚对话框
# 2 召唤鱼丸
# 3 杀掉鱼丸
# 100 投票 弃票
# 101 投票 player_1
execute as @a[scores={TriggerFunction=1}] run function spy:trigger/function/1
execute as @a[scores={TriggerFunction=2}] run function spy:trigger/function/2
execute as @a[scores={TriggerFunction=3}] run function spy:trigger/function/3
execute as @a[scores={TriggerFunction=100}] run function spy:trigger/function/100
execute as @a[scores={TriggerFunction=101}] run function spy:trigger/function/101
execute as @a[scores={TriggerFunction=102}] run function spy:trigger/function/102
execute as @a[scores={TriggerFunction=103}] run function spy:trigger/function/103
execute as @a[scores={TriggerFunction=104}] run function spy:trigger/function/104
execute as @a[scores={TriggerFunction=105}] run function spy:trigger/function/105
execute as @a[scores={TriggerFunction=106}] run function spy:trigger/function/106
execute as @a[scores={TriggerFunction=107}] run function spy:trigger/function/107
execute as @a[scores={TriggerFunction=108}] run function spy:trigger/function/108