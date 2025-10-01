##--------------------- Scoreboard ---------------------

scoreboard objectives add GameStatus dummy

# player
scoreboard objectives add Option trigger {text:"选项"}
scoreboard objectives add Score dummy {text:"分数"} 
scoreboard objectives add Correct_Count dummy {text:"答对",color:"green",bold:true}
scoreboard objectives add Error_Count dummy {text:"答错",color:"red",bold:true}
scoreboard objectives add Punish dummy {text:"惩罚"}
scoreboard objectives add Answer_Time dummy {text:"回答时间"}
scoreboard objectives add SoundTime dummy {text:"音乐时间"}
scoreboard objectives add Temp dummy

# math
scoreboard objectives add math dummy
scoreboard objectives add var dummy
# 侧边栏
    scoreboard objectives add sidebar dummy ["",{bold:true,text:"",extra:[{shadow_color:13107455,text:"《5年挖矿"}," ",{color:"gold",text:"3年合成》"}]}]
    scoreboard objectives modify sidebar displayautoupdate true
    # 排序
    scoreboard players display numberformat $Timer sidebar blank
    scoreboard players display numberformat $Question_Count sidebar blank
    scoreboard players set $Timer sidebar 1
    scoreboard players set $Question_Count sidebar 0
    
##--------------------- Scoreboard ---------------------

# TODO 配置

##--------------------- Settings ---------------------

# 基本设置
data modify storage 53-mnc:settings game set value \
{\
    round_time:60,\
    answer_time:10,\
    initial_score:10,\
    reward_score:5,\
    penalty_score:3\
}

# 费用
data modify storage 53-mnc:settings cost set value \
{\
    walk:2000,\
    crafting_table:10,\
    furnace:10,\
    blast_furnace:10,\
    smoker:10\
}

# 注册题目种类以及数目
data modify storage 53-mnc:settings event_count set value \
{\
    typec:4,\
    block:20,\
    item:20,\
    mob:20,\
    structure:10,\
    img:1\
}

##--------------------- Settings ---------------------

gamerule sendCommandFeedback false