scoreboard objectives add E.Smelting dummy
execute store result score @a E.Smelting run random value 1..2

execute if score @r E.Smelting matches 1 run scoreboard objectives add E.Smelting.Iron crafted:iron_ingot {text:"冶炼铁锭"}
execute if score @r E.Smelting matches 1 run tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{text:"冶炼铁锭",color:"gold"}]

execute if score @r E.Smelting matches 2 run scoreboard objectives add E.Smelting.Gold crafted:gold_ingot {text:"冶炼金锭"}
execute if score @r E.Smelting matches 2 run tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{text:"冶炼金锭",color:"gold"}]