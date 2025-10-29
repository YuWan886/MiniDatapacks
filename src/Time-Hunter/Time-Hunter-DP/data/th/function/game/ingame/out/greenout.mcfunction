# 绿队淘汰
team modify Green color gray 
tag @a[team=Green] add teamout

scoreboard players set #System GreenOut -1

# 其他局内队伍得分
execute if score #System RedNum matches 1.. run scoreboard players add @a[team=Red] TeamPoint 1
execute if score #System BlueNum matches 1.. run scoreboard players add @a[team=Blue] TeamPoint 1
execute if score #System YellowNum matches 1.. run scoreboard players add @a[team=Yellow] TeamPoint 1

# 通告
tellraw @a [{translate: "game.team.green.name",color: "green",bold: true}," ",{translate: "game.ingame.out.tellraw.1"}]