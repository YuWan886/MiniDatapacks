# 空投 关
scoreboard players set GameRuleSet AirDrop 0

tellraw @a [{translate: "game.ingame.tishiji",color: "light_purple"},{translate: "game.setting.airdrop",color: "dark_purple",bold: true}," ",{translate: "game.setting.off",color: "red"}]

setblock 8 152 13 air
setblock 8 152 13 birch_wall_sign[facing=north]{front_text:{messages:['======',{translate: "game.setting.airdrop"},{translate: "game.setting.off",color: "red",click_event: {action: "run_command",command: "function th:setting/onandoff/airdrop_on"}},'======']}} destroy

# 音效
playsound ui.button.click record @s
