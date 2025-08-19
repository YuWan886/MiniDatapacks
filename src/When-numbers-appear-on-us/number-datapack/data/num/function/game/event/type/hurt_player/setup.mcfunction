advancement revoke @a only num:event/hurt_player
scoreboard objectives add E.HurtPlayer dummy
scoreboard players set @a E.HurtPlayer 0

tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{text:"攻击玩家",color:"gold"}]