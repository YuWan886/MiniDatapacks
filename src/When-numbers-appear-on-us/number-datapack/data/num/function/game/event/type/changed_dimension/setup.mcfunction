advancement revoke @a only num:event/changed_dimension
scoreboard objectives add E.ChangedDimension dummy
scoreboard players set @a E.ChangedDimension 0

tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{text:"改变维度",color:"gold"}]