tellraw @a "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
tellraw @a ["",{text:"我的世界,但是X倍速",color:"dark_purple"},{text:"数据包加载"},{text:"成功！",color:"green"}]
tellraw @a {text:"============================\n"}
tellraw @a ["",{text:"数据包作者："},{text:"一条鱼丸_",color:"light_purple",underlined:true,click_event:{action:"open_url",url:"https://space.bilibili.com/438381132"},hover_event:{action:"show_text",value:{text:"关注鱼丸谢谢喵~"}}}]
tellraw @a ["",{text:"数据包版本："},{text:"Beta 0.1.0",color:"red",hover_event:{action:"show_text",value:{text:"测试版本,不代表最终品质",color:"gray"}}}]
tellraw @a ["",{text:"相关链接："},{text:"[BiliBili]",color:"#ff59a1",click_event:{action:"open_url",url:"https://space.bilibili.com/438381132"},hover_event:{action:"show_text",value:{text:"B站主页"}}},{text:" [Github]",color:"dark_purple",click_event:{action:"open_url",url:"https://github.com/YuWan886"},hover_event:{action:"show_text",value:{text:"Github",color:"gray"}}},{text:" [QQ群]",color:"blue",click_event:{action:"open_url",url:"https://qm.qq.com/q/jtEDiaBTt6"},hover_event:{action:"show_text",value:{text:"交流、反馈群",color:"gray"}}}]
tellraw @a {text:"\n============================"}
playsound entity.player.levelup record @a

scoreboard objectives add Speed dummy
scoreboard objectives add DeathCount deathCount {text:"💩死亡榜💩",color:"gold"}
scoreboard objectives setdisplay sidebar DeathCount

gamerule sendCommandFeedback false