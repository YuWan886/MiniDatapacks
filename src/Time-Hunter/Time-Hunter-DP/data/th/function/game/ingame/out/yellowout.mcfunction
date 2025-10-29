# 黄队淘汰
team modify Yellow color gray
tag @a[team=Yellow] add teamout

scoreboard players set #System YellowOut -1

# 其他局内队伍得分
execute if score #System GreenNum matches 1.. run scoreboard players add @a[team=Green] TeamPoint 1
execute if score #System BlueNum matches 1.. run scoreboard players add @a[team=Blue] TeamPoint 1
execute if score #System RedNum matches 1.. run scoreboard players add @a[team=Red] TeamPoint 1

# 通告
tellraw @a [{translate: "game.team.yellow.name",color: "yellow",bold: true}," ",{translate: "game.ingame.out.tellraw.1"}]