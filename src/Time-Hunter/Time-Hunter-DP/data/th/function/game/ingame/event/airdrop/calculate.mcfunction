# 计算

data modify storage th:event airdrop_pos set value [{redx:100,redy:0},{greenx:0,greeny:100},{bluex:-100,bluey:0},{yellowx:0,yellowy:-100}]

# 红
execute as @s[team=Red] store result storage th:event airdrop_pos.[0].redx double 1 run data get entity @s Pos.[0]
execute as @s[team=Red] store result storage th:event airdrop_pos.[0].redy double 1 run data get entity @s Pos.[2]
# 绿
execute as @s[team=Green] store result storage th:event airdrop_pos.[1].greenx double 1 run data get entity @s Pos.[0]
execute as @s[team=Green] store result storage th:event airdrop_pos.[1].greeny double 1 run data get entity @s Pos.[2]
# 蓝
execute as @s[team=Blue] store result storage th:event airdrop_pos.[2].bluex double 1 run data get entity @s Pos.[0]
execute as @s[team=Blue] store result storage th:event airdrop_pos.[2].bluey double 1 run data get entity @s Pos.[2]
# 黄
execute as @s[team=Yellow] store result storage th:event airdrop_pos.[3].yellowx double 1 run data get entity @s Pos.[0]
execute as @s[team=Yellow] store result storage th:event airdrop_pos.[3].yellowy double 1 run data get entity @s Pos.[2]

# 生成
execute as @s[team=Red] run function th:game/ingame/event/airdrop/team/red with storage th:event airdrop_pos.[0]
execute as @s[team=Green] run function th:game/ingame/event/airdrop/team/green with storage th:event airdrop_pos.[1]
execute as @s[team=Blue] run function th:game/ingame/event/airdrop/team/blue with storage th:event airdrop_pos.[2]
execute as @s[team=Yellow] run function th:game/ingame/event/airdrop/team/yellow with storage th:event airdrop_pos.[3]
