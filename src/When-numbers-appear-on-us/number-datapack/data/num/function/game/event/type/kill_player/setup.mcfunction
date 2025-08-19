scoreboard objectives add E.KillPlayer custom:player_kills {text:"击杀玩家"}

tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{text:"击杀玩家",color:"gold"}]