# 红队空
scoreboard players set #System RedOut -1

execute if score #System GreenNum matches 1.. run scoreboard players add @a[team=Green] TeamPoint 1
execute if score #System BlueNum matches 1.. run scoreboard players add @a[team=Blue] TeamPoint 1
execute if score #System YellowNum matches 1.. run scoreboard players add @a[team=Yellow] TeamPoint 1
