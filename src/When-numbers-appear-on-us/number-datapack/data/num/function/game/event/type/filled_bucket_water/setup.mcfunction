advancement revoke @a only num:event/filled_bucket_water
scoreboard objectives add E.FilledBucket.Water dummy
scoreboard players set @a E.FilledBucket.Water 0

tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{text:"装水",color:"gold"}]