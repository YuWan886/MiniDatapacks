# 蓝队淘汰
team modify Blue color gray
tag @a[team=Blue] add teamout

scoreboard players set #System BlueOut -1

# 其他局内队伍得分
execute if score #System GreenNum matches 1.. run scoreboard players add @a[team=Green] TeamPoint 1
execute if score #System RedNum matches 1.. run scoreboard players add @a[team=Red] TeamPoint 1
execute if score #System YellowNum matches 1.. run scoreboard players add @a[team=Yellow] TeamPoint 1

# 通告
tellraw @a [{translate: "game.team.blue.name",color: "blue",bold: true}," ",{translate: "game.ingame.out.tellraw.1"}]