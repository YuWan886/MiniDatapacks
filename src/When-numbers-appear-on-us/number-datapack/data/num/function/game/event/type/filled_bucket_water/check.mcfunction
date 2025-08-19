advancement revoke @s only num:event/filled_bucket_water

function num:utils/update

tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{selector:"@s"},{text:"装水",color:"gold"},{score:{name:"@s",objective:"Number.Player"}}]