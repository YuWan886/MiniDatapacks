scoreboard players add #Game G_Round 1
title @a title {text:"游戏继续",color:"green"}
schedule function spy:schedule/speak_main 2s

bossbar set spy:info name ["",{text:"第"},{score:{name:"#Game",objective:"G_Round"},color:"green"},{text:"轮"},"||",{text:"玩家："},{score:{name:"#Game",objective:"G_IngameCount"},color:"aqua"},"/",{score:{name:"#Game",objective:"G_PlayerCount"},color:"gold"}]