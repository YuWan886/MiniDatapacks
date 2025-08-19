scoreboard objectives add E.PickUpCobbleStone picked_up:cobblestone {text:"捡起圆石"}

tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{text:"捡起圆石",color:"gold"}]