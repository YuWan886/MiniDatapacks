# 初始化游戏
function spy:settings/init
scoreboard players enable @a TriggerFunction
scoreboard players enable @a TriggerDialog
scoreboard players set #Game G_GameStatus 1
execute store result score #Game G_PlayerCount run list
execute store result score #Game G_IngameCount run list
function spy:game/assign_num
dialog show @a spy:set_name
gamemode adventure @a
