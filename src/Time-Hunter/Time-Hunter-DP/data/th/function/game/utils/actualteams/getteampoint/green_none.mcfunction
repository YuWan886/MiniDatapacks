# 绿队空
scoreboard players set #System GreenOut -1

execute if score #System RedNum matches 1.. run scoreboard players add @a[team=Red] TeamPoint 1
execute if score #System BlueNum matches 1.. run scoreboard players add @a[team=Blue] TeamPoint 1
execute if score #System YellowNum matches 1.. run scoreboard players add @a[team=Yellow] TeamPoint 1