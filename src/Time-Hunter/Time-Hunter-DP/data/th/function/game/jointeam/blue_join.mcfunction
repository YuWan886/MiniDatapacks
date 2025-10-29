tag @s add ready

# 通知
title @s title [{translate: "game.team.join.title.1"},{translate: "game.team.blue.name",color: "blue",bold: true}]

tellraw @a [{"selector": "@s"},{translate: "game.team.join.tellraw.1",color: "white"},{translate: "game.team.blue.name",color: "blue",bold: true}]

# 加入蓝队
team join Blue @s

advancement revoke @s only th:game/jointeam/green
advancement revoke @s only th:game/jointeam/red
advancement revoke @s only th:game/jointeam/yellow
advancement revoke @s only th:game/jointeam/shijian

# 音效
playsound item.armor.equip_iron record @s