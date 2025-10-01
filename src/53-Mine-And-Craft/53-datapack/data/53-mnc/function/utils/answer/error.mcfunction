scoreboard players add @s Error_Count 1

tag @s remove answer

execute store result score $Answer math run data get storage 53-mnc:settings game.penalty_score -1
scoreboard players operation @s Score += $Answer math

execute store result score @s Punish run random value 1..4

execute at @s if score @s Punish matches 1 anchored feet run function 53-mnc:punish/tnt_1
execute at @s if score @s Punish matches 2 anchored feet run function 53-mnc:punish/chicken_zombie
execute at @s if score @s Punish matches 3 anchored feet run function 53-mnc:punish/skeleton_horse_horse_horse
execute at @s if score @s Punish matches 4 anchored feet run function 53-mnc:punish/random_tp


# TODO 惩罚