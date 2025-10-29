tag @a add lobby
scoreboard players set @s Lobby 0

# 放置大厅，设置出生点
setworldspawn 8 151 8
tp @a 8 151 8
place template th:lobby 0 150 0

effect give @a saturation infinite 1 true
effect give @a resistance infinite 4 true
# 告示牌

# 游戏设置
setblock 9 152 13 air
setblock 9 152 13 birch_wall_sign[facing=north]{front_text:{messages:['======',{translate: "game.menu.setting"},{translate: "game.menu.modify",color: "green",click_event: {action: "run_command",command: "function th:setting/set_sign"}},'======']}} replace
# 查看规则
setblock 8 152 13 air
setblock 8 152 13 birch_wall_sign[facing=north]{front_text:{messages:['======',{translate: "game.menu.rule"},{translate: "game.menu.read",color: "green",click_event: {action: "run_command",command: "trigger GameRule"}},'======']}} replace 
# 开始游戏
setblock 7 152 13 air
setblock 7 152 13 birch_wall_sign[facing=north]{front_text:{messages:['======',{translate: "game.menu.ready"},{translate: "game.menu.start",color: "green",click_event: {action: "run_command",command: "function th:game/start"}},'======']}} replace

# 默认设置
function th:setting/default_setting

# 音效
playsound entity.player.levelup record @s

# 羊毛

# summon text_display 13 153 9 {alignment:"center",text:[{translate: "game.team.red.join",color: "red",bold: true}],Glowing:true,Rotation:[90f,0f],Tags:["text_join_red"]}
# summon text_display 13 153 5 {alignment:"center",text:[{translate: "game.team.green.join",color: "green",bold: true}],Glowing:true,Rotation:[90f,0f],Tags:["text_join_green"]}
# summon text_display 2 153 5 {alignment:"center",text:[{translate: "game.team.yellow.join",color: "yellow",bold: true}],Glowing:true,Rotation:[-90f,0f],Tags:["text_join_yellow"]}
# summon text_display 2 153 9 {alignment:"center",text:[{translate: "game.team.blue.join",color: "blue",bold: true}],Glowing:true,Rotation:[-90f,0f],Tags:["text_join_blue"]}
# summon text_display 7 153 2 {alignment:"center",text:[{translate: "game.team.shijian.join",color: "dark_gray",bold: true}],Glowing:true,Tags:["text_join_shijian"]}