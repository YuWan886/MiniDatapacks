# 自然恢复 关

scoreboard players set GameRuleSet NaturalRegen 0
gamerule naturalRegeneration false

tellraw @a [{translate: "game.ingame.tishiji",color: "light_purple"},{translate: "game.setting.naturalregen",color: "dark_purple",bold: true}," ",{translate: "game.setting.off",color: "red"}]

setblock 9 152 13 air
setblock 9 152 13 birch_wall_sign[facing=north]{front_text:{messages:['======',{translate: "game.setting.naturalregen"},{translate: "game.setting.off",color: "red",click_event: {action: "run_command",command: "function th:setting/onandoff/naturalregen_on"}},'======']}} destroy

# 音效
playsound ui.button.click record @s