execute if score #Game GameStatus matches 0 run return run tellraw @s ["",{text:"[53]",color:"gold",bold:true},{text:"游戏还没开始..."}]
scoreboard players set #Game GameStatus 0

scoreboard players set @a Score 0
scoreboard players set @a Punish 0
scoreboard players set @a Correct_Count 0
scoreboard players set @a Error_Count 0
scoreboard players set @a Answer_Time 0
scoreboard players reset * var

tag @a remove lack

function 53-mnc:game/lack_cancel
function 53-mnc:game/score_uninstall

scoreboard objectives setdisplay sidebar

schedule clear 53-mnc:game/schedule/1s