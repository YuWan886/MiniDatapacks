team join red @r
team join green @r[team=]
team join blue @r[team=]
team join yellow @r[team=]

data modify storage num:player red set value {"round_1":{rank:0,number:0}}
data modify storage num:player green set value {"round_1":{rank:0,number:0}}
data modify storage num:player blue set value {"round_1":{rank:0,number:0}}
data modify storage num:player yellow set value {"round_1":{rank:0,number:0}}

scoreboard objectives setdisplay sidebar.team.red Number.Red
scoreboard objectives setdisplay sidebar.team.green Number.Green
scoreboard objectives setdisplay sidebar.team.blue Number.Blue
scoreboard objectives setdisplay sidebar.team.yellow Number.Yellow

scoreboard players reset player.red Number.Red
scoreboard players reset player.green Number.Green
scoreboard players reset player.blue Number.Blue
scoreboard players reset player.yellow Number.Yellow


scoreboard players set player.red Number.Green 0
scoreboard players set player.red Number.Blue 0
scoreboard players set player.red Number.Yellow 0
scoreboard players set player.green Number.Red 0
scoreboard players set player.green Number.Blue 0
scoreboard players set player.green Number.Yellow 0
scoreboard players set player.blue Number.Red 0
scoreboard players set player.blue Number.Green 0
scoreboard players set player.blue Number.Yellow 0
scoreboard players set player.yellow Number.Red 0
scoreboard players set player.yellow Number.Green 0
scoreboard players set player.yellow Number.Blue 0

scoreboard players display name player.red Number.Green {selector:"@a[team=red,limit=1]"}
scoreboard players display name player.red Number.Blue {selector:"@a[team=red,limit=1]"}
scoreboard players display name player.red Number.Yellow {selector:"@a[team=red,limit=1]"}

scoreboard players display name player.green Number.Red {selector:"@a[team=green,limit=1]"}
scoreboard players display name player.green Number.Blue {selector:"@a[team=green,limit=1]"}
scoreboard players display name player.green Number.Yellow {selector:"@a[team=green,limit=1]"}

scoreboard players display name player.blue Number.Red {selector:"@a[team=blue,limit=1]"}
scoreboard players display name player.blue Number.Green {selector:"@a[team=blue,limit=1]"}
scoreboard players display name player.blue Number.Yellow {selector:"@a[team=blue,limit=1]"}

scoreboard players display name player.yellow Number.Red {selector:"@a[team=yellow,limit=1]"}
scoreboard players display name player.yellow Number.Blue {selector:"@a[team=yellow,limit=1]"}
scoreboard players display name player.yellow Number.Blue {selector:"@a[team=yellow,limit=1]"}