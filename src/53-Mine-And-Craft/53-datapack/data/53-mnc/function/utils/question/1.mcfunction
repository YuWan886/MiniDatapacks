scoreboard players enable @s Option
scoreboard players enable @s PlaySound
scoreboard players set @s Option 886
scoreboard players add $Question_Count var 1
execute store result score @s Answer_Time run data get storage 53-mnc:settings game.answer_time

tag @s add answer

function 53-mnc:utils/question/2 with entity @s

execute store result score $Timer var run data get storage 53-mnc:settings game.round_time