fill 9 153 13 6 151 13 air

# 游戏设置
setblock 9 152 13 birch_wall_sign[facing=north]{front_text:{messages:['======',{translate: "game.menu.setting"},{translate: "game.menu.modify",color: "green",click_event: {action: "run_command",command: "function th:setting/set_sign"}},'======']}} replace
# 查看规则
setblock 8 152 13 birch_wall_sign[facing=north]{front_text:{messages:['======',{translate: "game.menu.rule"},{translate: "game.menu.read",color: "green",click_event: {action: "run_command",command: "trigger GameRule"}},'======']}} replace 
# 开始游戏
setblock 7 152 13 birch_wall_sign[facing=north]{front_text:{messages:['======',{translate: "game.menu.ready"},{translate: "game.menu.start",color: "green",click_event: {action: "run_command",command: "function th:game/start"}},'======']}} replace

# 音效
playsound ui.button.click record @s