execute if score @s Option matches 2 run tellraw @s ["",{"text":"[53]","color":"gold","bold":true},{"text":"回答正确！","color":"green"}]
execute if score @s Option matches 2 run function 53-mnc:utils/answer/correct

execute unless score @s Option matches 2 run tellraw @s ["",{"text":"[53]","color":"gold","bold":true},{"text":"回答错误！","color":"red"},{"text":"正确答案是：","color":"green"},{"text":"B. 不可以","color":"aqua"}]
execute unless score @s Option matches 2 run function 53-mnc:utils/answer/error

function 53-mnc:utils/reset_score