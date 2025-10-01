execute if score #Game GameStatus matches 1 run return run tellraw @s ["",{text:"[53]",color:"gold",bold:true},{text:"游戏正在进行中..."}]

scoreboard players set #Game GameStatus 1
execute store result score $Timer var run data get storage 53-mnc:settings game.round_time
execute store result score @a Score run data get storage 53-mnc:settings game.initial_score

# 费用
function 53-mnc:game/score_install
execute store result score $Cost Walk_CM run data get storage 53-mnc:settings cost.walk
execute store result score $Cost Interact.Crafting_Tabel run data get storage 53-mnc:settings cost.crafting_table
execute store result score $Cost Interact.Furnace run data get storage 53-mnc:settings cost.furnace
execute store result score $Cost Interact.Blast_Furnace run data get storage 53-mnc:settings cost.blast_furnace
execute store result score $Cost Interact.Smoker run data get storage 53-mnc:settings cost.smoker

# 侧边栏
scoreboard objectives setdisplay sidebar sidebar
scoreboard objectives setdisplay list Correct_Count

function 53-mnc:game/schedule/1s