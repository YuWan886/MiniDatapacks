tag @s remove ready

# 通知
title @s title [{translate: "game.team.join.title.1"},{translate: "game.team.shijian.name",color: "dark_gray",bold: true}]

tellraw @a [{"selector": "@s"},{translate: "game.team.join.tellraw.1",color: "white"},{translate: "game.team.shijian.name",color: "dark_gray",bold: true}]

# 加入红队
team join shijian @s

advancement revoke @s only th:game/jointeam/green
advancement revoke @s only th:game/jointeam/blue
advancement revoke @s only th:game/jointeam/yellow
advancement revoke @s only th:game/jointeam/red

# 音效
playsound th:sound.team.shijian.yippee record @s ~ ~ ~ 0.5