execute as @s if score @s E.Smelting.Iron matches 1.. run function num:utils/update
execute as @s if score @s E.Smelting.Gold matches 1.. run function num:utils/update

execute as @s if score @s E.Smelting.Iron matches 1.. run tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{selector:"@s"},{text:"冶炼铁锭",color:"gold"},{score:{name:"@s",objective:"Number.Player"}}]
execute as @s if score @s E.Smelting.Gold matches 1.. run tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{selector:"@s"},{text:"冶炼铁锭",color:"gold"},{score:{name:"@s",objective:"Number.Player"}}]

execute as @s if score @s E.Smelting.Iron matches 1.. run scoreboard players set @s E.Smelting.Iron 0
execute as @s if score @s E.Smelting.Gold matches 1.. run scoreboard players set @s E.Smelting.Gold 0