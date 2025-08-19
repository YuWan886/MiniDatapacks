tellraw @a "\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
tellraw @a ["",{text:"当我们身上出现了数字",color:"dark_purple"},{text:"数据包加载"},{text:"成功！",color:"green"}]
tellraw @a {text:"============================\n"}
tellraw @a ["",{text:"数据包作者："},{text:"一条鱼丸_",color:"light_purple",underlined:true}]
tellraw @a ["",{text:"数据包版本："},{text:"0.1.0",color:"red"}]
tellraw @a ["",{text:"相关链接："},{text:"[BiliBili]",color:"#ff59a1",click_event:{action:"open_url",url:"https://space.bilibili.com/438381132"},hover_event:{action:"show_text",value:{text:"B站主页",color:"gray"}}},{text:" [Github]",color:"dark_purple",click_event:{action:"open_url",url:"https://github.com/YuWan886/MiniDatapacks/tree/master/src/When-numbers-appear-on-us"},hover_event:{action:"show_text",value:{text:"数据包仓库地址",color:"gray"}}},{text:" [QQ群]",color:"blue",click_event:{action:"open_url",url:"https://qm.qq.com/q/jtEDiaBTt6"},hover_event:{action:"show_text",value:{text:"交流、反馈群",color:"gray"}}}]
tellraw @a {text:"\n============================"}


scoreboard objectives add Number.Player dummy
scoreboard objectives add Number.Red dummy {text:"数字"}
scoreboard objectives add Number.Green dummy {text:"数字"}
scoreboard objectives add Number.Blue dummy {text:"数字"}
scoreboard objectives add Number.Yellow dummy {text:"数字"}
scoreboard objectives add Point dummy {text:"分数"}
scoreboard objectives add RoundRank dummy {text:"回合排名"}
scoreboard objectives add FinalRank dummy {text:"最终排名"}

scoreboard objectives add var dummy

scoreboard objectives add G.Init dummy
scoreboard objectives add G.Roll dummy
scoreboard objectives add G.GameState dummy {text:"游戏状态"}
scoreboard objectives add G.PlayerCount dummy {text:"玩家数"}
scoreboard objectives add G.RoundTime dummy {text:"设置：回合时间"}
scoreboard objectives add G.Number dummy {text:"设置：数字"}
scoreboard objectives add G.Round dummy {text:"设置：回合"}

scoreboard objectives add T.RoundTime dummy

execute unless score #Game G.Init matches 1 run function num:settings/init