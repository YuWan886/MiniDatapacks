execute as @s if score @s E.Sleep matches 1.. run function num:utils/update

execute as @s if score @s E.Sleep matches 1.. run tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{selector:"@s"},{text:"睡觉",color:"gold"},{score:{name:"@s",objective:"Number.Player"}}]

execute as @s if score @s E.Sleep matches 1.. run scoreboard players set @s E.Sleep 0