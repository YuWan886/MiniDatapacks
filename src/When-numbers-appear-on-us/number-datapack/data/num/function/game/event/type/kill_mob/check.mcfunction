execute as @s if score @s E.KillMob matches 1.. run function num:utils/update

execute as @s if score @s E.KillMob matches 1.. run tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{selector:"@s"},{text:"击杀生物",color:"gold"},{score:{name:"@s",objective:"Number.Player"}}]

execute as @s if score @s E.KillMob matches 1.. run scoreboard players set @s E.KillMob 0