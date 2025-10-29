tag @s add ready

# 通知
title @s title [{translate: "game.team.join.title.1"},{translate: "game.team.yellow.name",color: "yellow",bold: true}]

tellraw @a [{"selector": "@s"},{translate: "game.team.join.tellraw.1",color: "white"},{translate: "game.team.yellow.name",color: "yellow",bold: true}]

# 加入黄队
team join Yellow @s

advancement revoke @s only th:game/jointeam/green
advancement revoke @s only th:game/jointeam/blue
advancement revoke @s only th:game/jointeam/red
advancement revoke @s only th:game/jointeam/shijian

# 音效
playsound item.armor.equip_iron record @s