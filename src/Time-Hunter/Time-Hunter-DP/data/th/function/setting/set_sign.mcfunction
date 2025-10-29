fill 9 153 13 6 151 13 air

# 放置告示牌

# 死亡不掉落
execute if score GameRuleSet KeepInv matches 1 run setblock 9 153 13 birch_wall_sign[facing=north]{front_text:{messages:['======',{translate: "game.setting.keepinv"},{translate: "game.setting.on",color: "green",click_event: {action: "run_command",command: "function th:setting/onandoff/keepinv_off"}},'======']}} destroy
execute if score GameRuleSet KeepInv matches 0 run setblock 9 153 13 birch_wall_sign[facing=north]{front_text:{messages:['======',{translate: "game.setting.keepinv"},{translate: "game.setting.off",color: "red",click_event: {action: "run_command",command: "function th:setting/onandoff/keepinv_on"}},'======']}} destroy
# 队伍友伤
execute if score GameRuleSet Friendlyfire matches 0 run setblock 8 153 13 birch_wall_sign[facing=north]{front_text:{messages:['======',{translate: "game.setting.friendfire"},{translate: "game.setting.off",color: "red",click_event: {action: "run_command",command: "function th:setting/onandoff/friendfire_on"}},'======']}} destroy
execute if score GameRuleSet Friendlyfire matches 1 run setblock 8 153 13 birch_wall_sign[facing=north]{front_text:{messages:['======',{translate: "game.setting.friendfire"},{translate: "game.setting.on",color: "green",click_event: {action: "run_command",command: "function th:setting/onandoff/friendfire_off"}},'======']}} destroy
# 时间扣除模式
execute if score GameRuleSet RemoveTime matches 1 run setblock 7 153 13 birch_wall_sign[facing=north]{front_text:{messages:['======',{translate: "game.setting.removetime"},{translate: "game.setting.removemins",color: "green",click_event: {action: "run_command",command: "function th:setting/onandoff/removehalf"}},'======']}} destroy
execute if score GameRuleSet RemoveTime matches 0 run setblock 7 153 13 birch_wall_sign[facing=north]{front_text:{messages:['======',{translate: "game.setting.removetime"},{translate: "game.setting.removehalf",color: "green",click_event: {action: "run_command",command: "function th:setting/onandoff/removemins"}},'======']}} destroy
# 队伍间隔
setblock 9 152 13 birch_wall_sign[facing=north]{front_text:{messages:['======',{translate: "game.setting.teamdistance"},{translate: "game.setting.teamdistance.set",color: "green",click_event: {action: "run_command",command: "function th:setting/teamdistance/tip"}},'======']}}
# 空投
execute if score GameRuleSet AirDrop matches 1 run setblock 8 152 13 birch_wall_sign[facing=north]{front_text:{messages:['======',{translate: "game.setting.airdrop"},{translate: "game.setting.on",color: "green",click_event: {action: "run_command",command: "function th:setting/onandoff/airdrop_off"}},'======']}}
execute if score GameRuleSet AirDrop matches 0 run setblock 8 152 13 birch_wall_sign[facing=north]{front_text:{messages:['======',{translate: "game.setting.airdrop"},{translate: "game.setting.off",color: "red",click_event: {action: "run_command",command: "function th:setting/onandoff/airdrop_on"}},'======']}}
# 自然恢复
execute if score GameRuleSet NaturalRegen matches 1 run setblock 9 152 13 birch_wall_sign[facing=north]{front_text:{messages:['======',{translate: "game.setting.naturalregen"},{translate: "game.setting.on",color: "green",click_event: {action: "run_command",command: "function th:setting/onandoff/naturalregen_off"}},'======']}}
execute if score GameRuleSet NaturalRegen matches 0 run setblock 9 152 13 birch_wall_sign[facing=north]{front_text:{messages:['======',{translate: "game.setting.naturalregen"},{translate: "game.setting.off",color: "red",click_event: {action: "run_command",command: "function th:setting/onandoff/naturalregen_on"}},'======']}}
# 玩家发光
execute if score GameRuleSet PlayerGlow matches 1 run setblock 7 152 13 birch_wall_sign[facing=north]{front_text:{messages:['======',{translate: "game.setting.playerglow"},{translate: "game.setting.on",color: "green",click_event: {action: "run_command",command: "function th:setting/onandoff/playerglow_off"}},'======']}}
execute if score GameRuleSet PlayerGlow matches 0 run setblock 7 152 13 birch_wall_sign[facing=north]{front_text:{messages:['======',{translate: "game.setting.playerglow"},{translate: "game.setting.off",color: "red",click_event: {action: "run_command",command: "function th:setting/onandoff/playerglow_on"}},'======']}}
# 时间相关设置
setblock 6 153 13 birch_wall_sign[facing=north]{front_text:{messages:['======',{translate: "game.setting.time.setting"},{translate: "game.setting.time.book",color: "green",click_event: {action: "run_command",command: "function th:setting/timesetbook"}},'======']}} destroy
# 返回
setblock 9 151 13 birch_wall_sign[facing=north]{front_text:{messages:['======',{translate: "game.setting.previouspage"},{translate: "game.setting.back",click_event: {action: "run_command",command: "function th:setting/main"}},'======']}} destroy

# 音效
playsound ui.button.click record @s