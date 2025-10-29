# 死亡不掉落 开
gamerule keepInventory true

scoreboard players set GameRuleSet KeepInv 1

tellraw @a [{translate: "game.ingame.tishiji",color: "light_purple"},{translate: "game.setting.keepinv",color: "dark_purple",bold: true}," ",{translate: "game.setting.on",color: "green"}]

setblock 9 153 13 air
setblock 9 153 13 birch_wall_sign[facing=north]{front_text:{messages:['======',{translate: "game.setting.keepinv"},{translate: "game.setting.on",color: "green",click_event: {action: "run_command",command: "function th:setting/onandoff/keepinv_off"}},'======']}} destroy

# 音效
playsound ui.button.click record @s