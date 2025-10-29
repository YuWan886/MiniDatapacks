# 队伍伤害 关
team modify Red friendlyFire false
team modify Green friendlyFire false
team modify Blue friendlyFire false
team modify Yellow friendlyFire false

scoreboard players set GameRuleSet Friendlyfire 0

tellraw @a [{translate: "game.ingame.tishiji",color: "light_purple"},{translate: "game.setting.friendfire",color: "dark_purple",bold: true}," ",{translate: "game.setting.off",color: "red"}]

setblock 8 153 13 air
setblock 8 153 13 birch_wall_sign[facing=north]{front_text:{messages:['======',{translate: "game.setting.friendfire"},{translate: "game.setting.off",color: "red",click_event: {action: "run_command",command: "function th:setting/onandoff/friendfire_on"}},'======']}} destroy

# 音效
playsound ui.button.click record @s