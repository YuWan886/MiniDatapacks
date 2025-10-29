# 红队淘汰
team modify Red color gray
tag @a[team=Red] add teamout

scoreboard players set #System RedOut -1

# 其他队伍得分
execute if score #System GreenNum matches 1.. run scoreboard players add @a[team=Green] TeamPoint 1
execute if score #System BlueNum matches 1.. run scoreboard players add @a[team=Blue] TeamPoint 1
execute if score #System YellowNum matches 1.. run scoreboard players add @a[team=Yellow] TeamPoint 1

# 通告
tellraw @a [{translate: "game.team.red.name",color: "red",bold: true}," ",{translate: "game.ingame.out.tellraw.1"}]