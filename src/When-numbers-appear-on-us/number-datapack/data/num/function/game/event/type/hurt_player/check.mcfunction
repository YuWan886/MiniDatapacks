advancement revoke @s only num:event/hurt_player

function num:utils/update

tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{selector:"@s"},{text:"攻击玩家",color:"gold"},{score:{name:"@s",objective:"Number.Player"}}]