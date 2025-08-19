scoreboard objectives add E.KillMob custom:mob_kills {text:"击杀生物"}

tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{text:"击杀生物",color:"gold"}]