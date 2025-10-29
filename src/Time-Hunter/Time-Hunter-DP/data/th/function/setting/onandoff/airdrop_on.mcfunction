# 空投 开
scoreboard players set GameRuleSet AirDrop 1

tellraw @a [{translate: "game.ingame.tishiji",color: "light_purple"},{translate: "game.setting.airdrop",color: "dark_purple",bold: true}," ",{translate: "game.setting.on",color: "green"}]

setblock 8 152 13 air
setblock 8 152 13 birch_wall_sign[facing=north]{front_text:{messages:['======',{translate: "game.setting.airdrop"},{translate: "game.setting.on",color: "green",click_event: {action: "run_command",command: "function th:setting/onandoff/airdrop_off"}},'======']}} destroy

# 音效
playsound ui.button.click record @s
