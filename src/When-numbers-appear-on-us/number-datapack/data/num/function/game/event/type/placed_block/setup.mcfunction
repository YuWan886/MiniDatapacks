advancement revoke @a only num:event/placed_block
scoreboard objectives add E.PlacedBlock dummy
scoreboard players set @a E.PlacedBlock 0

tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{text:"放置方块",color:"gold"}]