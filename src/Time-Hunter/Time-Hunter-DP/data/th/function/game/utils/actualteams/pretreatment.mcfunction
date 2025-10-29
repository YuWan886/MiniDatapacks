# 计算实际游玩队伍
execute store result score #System RedNum run team list Red
execute store result score #System GreenNum run team list Green
execute store result score #System BlueNum run team list Blue
execute store result score #System YellowNum run team list Yellow

# 空队伍处理
execute if score #System RedNum matches 0 run function th:game/utils/actualteams/getteampoint/red_none
execute if score #System GreenNum matches 0 run function th:game/utils/actualteams/getteampoint/green_none
execute if score #System BlueNum matches 0 run function th:game/utils/actualteams/getteampoint/blue_none
execute if score #System YellowNum matches 0 run function th:game/utils/actualteams/getteampoint/yellow_none