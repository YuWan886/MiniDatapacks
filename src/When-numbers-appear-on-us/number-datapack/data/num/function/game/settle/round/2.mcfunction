execute at @s run summon marker ~ ~ ~ {Tags:["settle","1st"]}

execute as @e[type=marker,tag=1st] run scoreboard players operation @s Number.Player > @a Number.Player
execute as @a if score @s Number.Player = @e[type=marker,tag=1st,limit=1] Number.Player run tag @s add 1st

scoreboard players add @a[tag=1st] Point 1

scoreboard players set @a[tag=1st] RoundRank 1
scoreboard players set @a[tag=!1st] RoundRank 2

tellraw @a "=--------------------------=\n"
tellraw @a {text:"               回合结算\n"}
execute as @a[tag=1st] run tellraw @a ["    ",{text:"1st",color:"gold",bold:true},{text:"(+1)",color:"gold"}," - ",{selector:"@s"}," - ",{score:{name:"@s",objective:"Number.Player"}}]
tellraw @a ["    ",{text:"2nd",color:"dark_purple",bold:true},{text:"(+0)",color:"gold"}," - ",{selector:"@a[tag=!1st]"}," - ",{score:{name:"@a[tag=!1st]",objective:"Number.Player"}}]
tellraw @a "\n=--------------------------="

kill @e[type=marker,tag=settle]
tag @a remove 1st