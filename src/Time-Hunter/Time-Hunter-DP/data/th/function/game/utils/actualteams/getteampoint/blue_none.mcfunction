# 蓝队空
scoreboard players set #System BlueOut -1

execute if score #System GreenNum matches 1.. run scoreboard players add @a[team=Green] TeamPoint 1
execute if score #System RedNum matches 1.. run scoreboard players add @a[team=Red] TeamPoint 1
execute if score #System YellowNum matches 1.. run scoreboard players add @a[team=Yellow] TeamPoint 1