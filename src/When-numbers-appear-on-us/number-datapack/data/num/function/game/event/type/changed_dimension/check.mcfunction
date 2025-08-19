advancement revoke @s only num:event/changed_dimension

function num:utils/update

tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{selector:"@s"},{text:"改变维度",color:"gold"},{score:{name:"@s",objective:"Number.Player"}}]