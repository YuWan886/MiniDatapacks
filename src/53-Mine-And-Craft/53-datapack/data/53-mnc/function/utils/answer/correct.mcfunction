scoreboard players add @s Correct_Count 1

tag @s remove answer

execute store result score $Answer math run data get storage 53-mnc:settings game.reward_score
scoreboard players operation @s Score += $Answer math