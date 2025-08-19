advancement revoke @a only num:event/filled_bucket_lava
scoreboard objectives add E.FilledBucket.Lava dummy
scoreboard players set @a E.FilledBucket.Lava 0

tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{text:"装岩浆",color:"gold"}]