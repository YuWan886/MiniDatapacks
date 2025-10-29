# 死亡不掉落 关
gamerule keepInventory false

scoreboard players set GameRuleSet KeepInv 0

tellraw @a [{translate: "game.ingame.tishiji",color: "light_purple"},{translate: "game.setting.keepinv",color: "dark_purple",bold: true}," ",{translate: "game.setting.off",color: "red"}]

setblock 9 153 13 air
setblock 9 153 13 birch_wall_sign[facing=north]{front_text:{messages:['======',{translate: "game.setting.keepinv"},{translate: "game.setting.off",color: "red",click_event: {action: "run_command",command: "function th:setting/onandoff/keepinv_on"}},'======']}} destroy

# 音效
playsound ui.button.click record @s