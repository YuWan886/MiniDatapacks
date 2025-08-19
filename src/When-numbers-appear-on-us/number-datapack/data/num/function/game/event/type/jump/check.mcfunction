execute as @s if predicate num:isjump run function num:utils/update

execute as @s if predicate num:isjump run tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{selector:"@s"},{text:"在石头上跳跃",color:"gold"},{score:{name:"@s",objective:"Number.Player"}}]