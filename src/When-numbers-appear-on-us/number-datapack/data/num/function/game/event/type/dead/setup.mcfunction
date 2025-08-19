scoreboard objectives add E.Death deathCount {text:"死亡"}

tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{text:"死亡",color:"gold"}]