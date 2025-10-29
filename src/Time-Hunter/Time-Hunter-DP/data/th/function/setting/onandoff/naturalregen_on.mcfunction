# 自然恢复 开

scoreboard players set GameRuleSet NaturalRegen 1
gamerule naturalRegeneration true

tellraw @a [{translate: "game.ingame.tishiji",color: "light_purple"},{translate: "game.setting.naturalregen",color: "dark_purple",bold: true}," ",{translate: "game.setting.on",color: "green"}]

setblock 9 152 13 air
setblock 9 152 13 birch_wall_sign[facing=north]{front_text:{messages:['======',{translate: "game.setting.naturalregen"},{translate: "game.setting.on",color: "green",click_event: {action: "run_command",command: "function th:setting/onandoff/naturalregen_off"}},'======']}} destroy

# 音效
playsound ui.button.click record @s