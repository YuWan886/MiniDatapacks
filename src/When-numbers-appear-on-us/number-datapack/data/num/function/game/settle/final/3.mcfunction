execute at @s run summon marker ~ ~ ~ {Tags:["settle","1st"]}
execute at @s run summon marker ~ ~ ~ {Tags:["settle","2nd"]}

execute as @e[type=marker,tag=1st] run scoreboard players operation @s Point > @a Point
execute as @a if score @s Point = @e[type=marker,tag=1st,limit=1] Point run tag @s add 1st

execute as @e[type=marker,tag=2nd] run scoreboard players operation @s Point > @a[tag=!1st] Point
execute as @a if score @s Point = @e[type=marker,tag=2nd,limit=1] Point run tag @s add 2nd

tag @a[tag=!1st,tag=!2nd] add 3rd

scoreboard players set @a[tag=1st] FinalRank 1
scoreboard players set @a[tag=2nd] FinalRank 2
scoreboard players set @a[tag=3rd] FinalRank 3

tellraw @a "=--------------------------=\n"
tellraw @a {text:"               最终结算\n"}
execute as @a[tag=1st] run tellraw @a ["    ",{text:"1st",color:"gold",bold:true}," - ",{selector:"@s"}," - ",{score:{name:"@s",objective:"Point"}}]
execute as @a[tag=2nd] run tellraw @a ["    ",{text:"2nd",color:"dark_purple",bold:true}," - ",{selector:"@s"}," - ",{score:{name:"@s",objective:"Point"}}]
execute as @a[tag=3rd] run tellraw @a ["    ",{text:"3rd",color:"green",bold:true}," - ",{selector:"@s"}," - ",{score:{name:"@s",objective:"Point"}}]
tellraw @a "\n=--------------------------="

kill @e[type=marker,tag=settle]
tag @a remove 1st
tag @a remove 2nd
tag @a remove 3rd