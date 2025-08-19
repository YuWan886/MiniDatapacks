advancement revoke @a only num:event/eat
scoreboard objectives add E.Eat dummy
scoreboard players set @a E.Eat 0

tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{text:"进食",color:"gold"}]