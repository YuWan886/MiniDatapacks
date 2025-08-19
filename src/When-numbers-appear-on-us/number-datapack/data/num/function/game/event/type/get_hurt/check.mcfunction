advancement revoke @s only num:event/get_hurt/in_wall
advancement revoke @s only num:event/get_hurt/arrow
advancement revoke @s only num:event/get_hurt/drown
advancement revoke @s only num:event/get_hurt/explosion
advancement revoke @s only num:event/get_hurt/fall

function num:utils/update

execute if score @s E.GetHurt matches 1 run tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{selector:"@s"},{text:"受伤-窒息",color:"gold"},{score:{name:"@s",objective:"Number.Player"}}]
execute if score @s E.GetHurt matches 2 run tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{selector:"@s"},{text:"受伤-弓箭",color:"gold"},{score:{name:"@s",objective:"Number.Player"}}]
execute if score @s E.GetHurt matches 3 run tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{selector:"@s"},{text:"受伤-溺水",color:"gold"},{score:{name:"@s",objective:"Number.Player"}}]
execute if score @s E.GetHurt matches 4 run tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{selector:"@s"},{text:"受伤-爆炸",color:"gold"},{score:{name:"@s",objective:"Number.Player"}}] 
execute if score @s E.GetHurt matches 5 run tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{selector:"@s"},{text:"受伤-摔落",color:"gold"},{score:{name:"@s",objective:"Number.Player"}}]