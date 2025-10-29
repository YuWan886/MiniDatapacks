# 规则讲解
tellraw @s ["\n\n\n",{translate: "game.rule.1"},"\n",{translate: "game.rule.2"},{score: {name: "#System",objective: "BeginTime"},color: "dark_purple",bold: true},{translate: "game.rule.3"},"\n",{translate: "game.rule.4"},{score: {name: "#System",objective: "DeathTime"},color: "red",bold: true},{translate: "game.rule.3"},"\n",{translate: "game.rule.5"},{score: {name: "#System",objective: "KillTime"},color: "green",bold: true},{translate: "game.rule.3"},"\n",{translate: "game.rule.6"}]

scoreboard players set @s GameRule 0

# 音效
playsound ui.button.click record @s