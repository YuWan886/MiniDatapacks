scoreboard objectives add E.Trade custom:traded_with_villager {text:"交易次数"}

tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{text:"交易",color:"gold"}]