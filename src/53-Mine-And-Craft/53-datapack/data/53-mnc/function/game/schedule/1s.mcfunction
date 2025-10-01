# 题目倒计时
execute if score $Timer var matches 1.. run scoreboard players remove $Timer var 1
execute if score $Timer var matches 0 as @a run function 53-mnc:utils/question/1

# 显示分数
execute as @a run title @s actionbar ["",{color:"dark_green",text:"分数："},{score:{name:"@s",objective:"Score"}}]

# 侧边栏
scoreboard players display name $Timer sidebar ["",{text:"下一道题目：  ",color:"gold"},{score:{name:"$Timer",objective:"var"}}]
scoreboard players display name $Question_Count sidebar ["",{text:"已答题目：     ",color:"green"},{score:{name:"$Question_Count",objective:"var"}}]

# 回答时限
execute as @a[scores={Answer_Time=1..}] run scoreboard players remove @s Answer_Time 1
execute as @a[scores={Answer_Time=0},tag=answer] run function 53-mnc:utils/answer/out_of_time

schedule function 53-mnc:game/schedule/1s 1s