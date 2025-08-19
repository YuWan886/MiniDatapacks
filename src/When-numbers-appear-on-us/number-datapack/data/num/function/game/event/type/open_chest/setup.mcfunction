scoreboard objectives add E.OpenChest custom:open_chest {text:"打开箱子"}

tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{text:"打开箱子",color:"gold"}]