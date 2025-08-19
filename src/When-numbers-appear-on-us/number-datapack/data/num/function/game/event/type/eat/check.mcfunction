advancement revoke @s only num:event/eat

function num:utils/update

tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{selector:"@s"},{text:"进食",color:"gold"},{score:{name:"@s",objective:"Number.Player"}}]