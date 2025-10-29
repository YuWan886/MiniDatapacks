# 黄队空
scoreboard players set #System YellowOut -1

execute if score #System GreenNum matches 1.. run scoreboard players add @a[team=Green] TeamPoint 1
execute if score #System BlueNum matches 1.. run scoreboard players add @a[team=Blue] TeamPoint 1
execute if score #System RedNum matches 1.. run scoreboard players add @a[team=Red] TeamPoint 1