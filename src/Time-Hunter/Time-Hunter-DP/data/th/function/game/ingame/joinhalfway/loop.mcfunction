# 中途加入

# 未开始
execute if score #System InGame matches 0 as @a[tag=!lobby,team=] run tag @s add lobby
# 开始
execute if score #System InGame matches 1 as @a[tag=] run function th:game/ingame/joinhalfway/spectator


