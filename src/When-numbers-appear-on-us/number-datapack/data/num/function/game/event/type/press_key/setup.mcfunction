scoreboard objectives add E.PressKey dummy {text:"按下按键"}
execute store result score #Game E.PressKey run random value 1..7

execute if score #Game E.PressKey matches 1 run tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{text:"按键-前进",color:"gold"}]
execute if score #Game E.PressKey matches 2 run tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{text:"按键-后退",color:"gold"}]
execute if score #Game E.PressKey matches 3 run tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{text:"按键-跳跃",color:"gold"}]
execute if score #Game E.PressKey matches 4 run tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{text:"按键-向左",color:"gold"}]
execute if score #Game E.PressKey matches 5 run tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{text:"按键-向右",color:"gold"}]
execute if score #Game E.PressKey matches 6 run tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{text:"按键-潜行",color:"gold"}]
execute if score #Game E.PressKey matches 7 run tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{text:"按键-疾跑",color:"gold"}]