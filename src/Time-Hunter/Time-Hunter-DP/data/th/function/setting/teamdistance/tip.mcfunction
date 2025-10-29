# 队伍间隔设置 提示

scoreboard players enable @s TeamDistance

# 提示
tellraw @s [{translate: "game.ingame.tishiji",color:"light_purple"},{translate: "game.setting.teamdistance.tellraw.1",color: "white"}]

# 音效
playsound ui.button.click record @s

