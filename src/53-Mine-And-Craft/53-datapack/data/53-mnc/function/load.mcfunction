tellraw @a ["",{text:"5年模拟,3年挖矿",color:"gold"},{text:"数据包加载成功",color:"green"}]
tellraw @a {text:"====================\n"}
tellraw @a ["",{text:"数据包作者："},{text:"一条鱼丸_",color:"light_purple",underlined:true,click_event:{action:"open_url",url:"https://space.bilibili.com/438381132"},hover_event:{action:"show_text",value:{text:"关注鱼丸谢谢喵~"}}}]
tellraw @a ["",{text:"数据包版本："},{text:"Beta 0.1.0",color:"red",hover_event:{action:"show_text",value:{text:"测试版本,不代表最终品质",color:"gray"}}}]
tellraw @a ["",{text:"相关链接："},{text:"[BiliBili]",color:"#ff59a1",click_event:{action:"open_url",url:"https://space.bilibili.com/438381132"}},{text:" [Github]",color:"dark_purple",click_event:{action:"open_url",url:"https://github.com/YuWan886/MiniDatapacks/tree/master/src/53-Mine-And-Craft"},hover_event:{action:"show_text",value:{text:"数据包仓库地址",color:"gray"}}},{text:" [QQ群]",color:"blue",click_event:{action:"open_url",url:"https://qm.qq.com/q/jtEDiaBTt6"},hover_event:{action:"show_text",value:{text:"交流、反馈群",color:"gray"}}}]
tellraw @a {text:"\n===================="}

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