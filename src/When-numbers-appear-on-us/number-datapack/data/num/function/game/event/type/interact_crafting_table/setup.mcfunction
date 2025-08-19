scoreboard objectives add E.InteractCraft custom:interact_with_crafting_table {text:"和工作台交互"}

tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{text:"和工作台交互",color:"gold"}]