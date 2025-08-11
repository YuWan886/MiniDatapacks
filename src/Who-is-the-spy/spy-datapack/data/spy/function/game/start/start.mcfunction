scoreboard players set #Game G_ConfirmCount 0

title @a times 1s 3s 1s
title @a title {text:"发放词条...",color:"dark_purple",bold:true}
tag @r add spy
tag @a[tag=!spy] add normal
function spy:game/extract_word/1

scoreboard players set #Game G_Round 1
scoreboard players set #Game G_SpeakPlayer 1

bossbar add spy:info {text:"对局信息"}
bossbar set spy:info players @a
bossbar set spy:info max 8
bossbar set spy:info value 8
bossbar set spy:info name ["",{text:"第"},{score:{name:"#Game",objective:"G_Round"},color:"green"},{text:"轮"}," || ",{text:"玩家："},{score:{name:"#Game",objective:"G_IngameCount"},color:"aqua"},"/",{score:{name:"#Game",objective:"G_PlayerCount"},color:"gold"}]