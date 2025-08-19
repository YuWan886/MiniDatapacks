execute at @s run summon marker ~ ~ ~ {Tags:["settle","1st"]}

execute as @e[type=marker,tag=1st] run scoreboard players operation @s Point > @a Point
execute as @a if score @s Point = @e[type=marker,tag=1st,limit=1] Point run tag @s add 1st

scoreboard players set @a[tag=1st] FinalRank 1
scoreboard players set @a[tag=!1st] FinalRank 2

tellraw @a "=--------------------------=\n"
tellraw @a {text:"               最终结算\n"}
execute as @a[tag=1st] run tellraw @a ["    ",{text:"1st",color:"gold",bold:true}," - ",{selector:"@s"}," - ",{score:{name:"@s",objective:"Point"}}]
tellraw @a ["    ",{text:"2nd",color:"dark_purple",bold:true}," - ",{selector:"@a[tag=!1st]"}," - ",{score:{name:"@a[tag=!1st]",objective:"Point"}}]
tellraw @a "\n=--------------------------="

kill @e[type=marker,tag=settle]
tag @a remove 1st