execute at @s run summon marker ~ ~ ~ {Tags:["settle","1st"]}
execute at @s run summon marker ~ ~ ~ {Tags:["settle","2nd"]}
execute at @s run summon marker ~ ~ ~ {Tags:["settle","3rd"]}


execute as @e[type=marker,tag=1st] run scoreboard players operation @s Point > @a Point
execute if score @s Point = @e[type=marker,tag=1st,limit=1] Point run tag @s add 1st

execute as @e[type=marker,tag=2nd] run scoreboard players operation @s Point > @a[tag=!1st] Point
execute if score @s Point = @e[type=marker,tag=2nd,limit=1] Point run tag @s add 2nd

execute as @e[type=marker,tag=3rd] run scoreboard players operation @s Point > @a[tag=!1st,tag=!2nd] Point
execute if score @s Point = @e[type=marker,tag=3rd,limit=1] Point run tag @s add 3rd

tag @a[tag=!1st,tag=!2nd,tag=!3rd] add 4th

scoreboard players set @a[tag=1st] FinalRank 1
scoreboard players set @a[tag=2nd] FinalRank 2
scoreboard players set @a[tag=3rd] FinalRank 3
scoreboard players set @a[tag=4th] FinalRank 4

tellraw @a "=--------------------------=\n"
tellraw @a {text:"               最终结算\n"}
execute as @a[tag=1st] run tellraw @a ["    ",{text:"1st",color:"gold",bold:true}," - ",{selector:"@s"}," - ",{score:{name:"@s",objective:"Point"}}]
execute as @a[tag=2nd] run tellraw @a ["    ",{text:"2nd",color:"dark_purple",bold:true}," - ",{selector:"@s"}," - ",{score:{name:"@s",objective:"Point"}}]
execute as @a[tag=3rd] run tellraw @a ["    ",{text:"3rd",color:"green",bold:true}," - ",{selector:"@s"}," - ",{score:{name:"@s",objective:"Point"}}]
execute as @a[tag=4th] run tellraw @a ["    ",{text:"4th",color:"white",bold:true}," - ",{selector:"@s"}," - ",{score:{name:"@s",objective:"Point"}}]
tellraw @a "\n=--------------------------="

kill @e[type=marker,tag=settle]
tag @a remove 1st
tag @a remove 2nd
tag @a remove 3rd
tag @a remove 4th