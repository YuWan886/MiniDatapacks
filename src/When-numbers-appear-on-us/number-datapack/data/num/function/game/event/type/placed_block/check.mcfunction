advancement revoke @s only num:event/placed_block

function num:utils/update

tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{selector:"@s"},{text:"放置方块",color:"gold"},{score:{name:"@s",objective:"Number.Player"}}]