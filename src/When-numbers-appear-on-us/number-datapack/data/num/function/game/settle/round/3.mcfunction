execute at @s run summon marker ~ ~ ~ {Tags:["settle","1st"]}
execute at @s run summon marker ~ ~ ~ {Tags:["settle","2nd"]}
execute at @s run summon marker ~ ~ ~ {Tags:["settle","3rd"]}

execute as @e[type=marker,tag=1st] run scoreboard players operation @s Number.Player > @a Number.Player
execute as @a if score @s Number.Player = @e[type=marker,tag=1st,limit=1] Number.Player run tag @s add 1st

execute as @e[type=marker,tag=2nd] run scoreboard players operation @s Number.Player > @a[tag=!1st] Number.Player
execute as @a if score @s Number.Player = @e[type=marker,tag=2nd,limit=1] Number.Player run tag @s add 2nd

execute as @e[type=marker,tag=3rd] run scoreboard players operation @s Number.Player > @a[tag=!1st,tag=!2nd] Number.Player
execute as @a if score @s Number.Player = @e[type=marker,tag=3rd,limit=1] Number.Player run tag @s add 3rd

scoreboard players add @a[tag=1st] Point 2
scoreboard players add @a[tag=2nd] Point 1

scoreboard players set @a[tag=1st] RoundRank 1
scoreboard players set @a[tag=2nd] RoundRank 2
scoreboard players set @a[tag=3rd] RoundRank 3

tellraw @a "=--------------------------=\n"
tellraw @a {text:"               回合结算\n"}
execute as @a[tag=1st] run tellraw @a ["    ",{text:"1st",color:"gold",bold:true},{text:"(+2)",color:"gold"}," - ",{selector:"@s"}," - ",{score:{name:"@s",objective:"Number.Player"}}]
execute as @a[tag=2nd] run tellraw @a ["    ",{text:"2nd",color:"dark_purple",bold:true},{text:"(+1)",color:"gold"}," - ",{selector:"@s"}," - ",{score:{name:"@s",objective:"Number.Player"}}]
execute as @a[tag=3rd] run tellraw @a ["    ",{text:"3rd",color:"green",bold:true},{text:"(+0)",color:"gold"}," - ",{selector:"@s"}," - ",{score:{name:"@s",objective:"Number.Player"}}]
tellraw @a "\n=--------------------------="

kill @e[type=marker,tag=settle]
tag @a remove 1st
tag @a remove 2nd
tag @a remove 3rd