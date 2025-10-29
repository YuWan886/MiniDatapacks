# 扣除固定时间
scoreboard players set GameRuleSet RemoveTime 1

tellraw @a [{translate: "game.ingame.tishiji",color: "light_purple"},{translate: "game.setting.removetime",color: "dark_purple",bold: true},{translate: "game.setting.time.changed",color: "white"}," ",{translate: "game.setting.removemins",color: "green"}]

setblock 7 153 13 air
setblock 7 153 13 birch_wall_sign[facing=north]{front_text:{messages:['======',{translate: "game.setting.removetime"},{translate: "game.setting.removemins",color: "green",click_event: {action: "run_command",command: "function th:setting/onandoff/removehalf"}},'======']}} destroy

# 音效
playsound ui.button.click record @s