advancement revoke @a only num:event/get_hurt/in_wall
advancement revoke @a only num:event/get_hurt/arrow
advancement revoke @a only num:event/get_hurt/drown
advancement revoke @a only num:event/get_hurt/explosion
advancement revoke @a only num:event/get_hurt/fall

scoreboard objectives add E.GetHurt dummy
execute store result score @a E.GetHurt run random value 1..5
execute as @a if score @s E.GetHurt matches 1 run tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{text:"受伤-窒息",color:"gold"}]
execute as @a if score @s E.GetHurt matches 2 run tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{text:"受伤-弓箭",color:"gold"}]
execute as @a if score @s E.GetHurt matches 3 run tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{text:"受伤-溺水",color:"gold"}]
execute as @a if score @s E.GetHurt matches 4 run tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{text:"受伤-爆炸",color:"gold"}]
execute as @a if score @s E.GetHurt matches 5 run tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{text:"受伤-摔落",color:"gold"}]