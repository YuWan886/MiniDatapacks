advancement revoke @s only num:event/hurt_mob
execute unless score #Game G.Roll matches 11 run return fail

execute as @s if score #Game G.Roll matches 11 run function num:utils/update

execute as @s if score #Game G.Roll matches 11 run tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{selector:"@s"},{text:"攻击敌对生物",color:"gold"},{score:{name:"@s",objective:"Number.Player"}}]