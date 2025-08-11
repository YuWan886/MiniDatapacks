tellraw @a "\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
tellraw @a ["",{text:"谁是卧底",color:"dark_purple"},{text:"数据包加载"},{text:"成功！",color:"green"}]
tellraw @a {text:"============================\n"}
tellraw @a ["",{text:"数据包作者："},{text:"一条鱼丸_",color:"light_purple",underlined:true,click_event:{action:"run_command",command:"trigger TriggerFunction set 2"},hover_event:{action:"show_text",value:{text:"点击有惊喜~"}}}]
tellraw @a ["",{text:"数据包版本："},{text:"0.1.0",color:"red",hover_event:{action:"show_text",value:{text:"测试版本,不代表最终品质",color:"gray"}}}]
tellraw @a ["",{text:"相关链接："},{text:"[BiliBili]",color:"#ff59a1",click_event:{action:"open_url",url:"https://space.bilibili.com/438381132"},hover_event:{action:"show_text",value:{text:"B站主页",color:"gray"}}},{text:" [Github]",color:"dark_purple",click_event:{action:"open_url",url:"https://github.com/YuWan886/"},hover_event:{action:"show_text",value:{text:"数据包仓库地址",color:"gray"}}},{text:" [QQ群]",color:"blue",click_event:{action:"open_url",url:"https://qm.qq.com/q/jtEDiaBTt6"},hover_event:{action:"show_text",value:{text:"交流、反馈群",color:"gray"}}}]
tellraw @a {text:"\n============================"}

scoreboard objectives add G_GameStatus dummy {text:"游戏状态"}
scoreboard objectives add G_Round dummy {text:"回合数"}
scoreboard objectives add G_Spyword dummy {text:"卧底词"}
scoreboard objectives add G_PlayerCount dummy {text:"玩家数"}
scoreboard objectives add G_IngameCount dummy {text:"游戏中"}
scoreboard objectives add G_OutCount dummy {text:"淘汰数"}
scoreboard objectives add G_ConfirmCount dummy {text:"确认玩家数"}
scoreboard objectives add G_SpeakPlayer dummy {text:"发言顺序"}
scoreboard objectives add G_VoteCount dummy {text:"投票数"}
scoreboard objectives add G_VoteCount1st dummy {text:"最多票人数"}

scoreboard objectives add TriggerDialog trigger
scoreboard players enable @a TriggerDialog
scoreboard objectives add TriggerFunction trigger
scoreboard players enable @a TriggerFunction
scoreboard objectives add Vote dummy {text:"票数"}

difficulty peaceful
gamerule sendCommandFeedback false
# function spy:summon