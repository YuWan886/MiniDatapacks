execute as @s[tag=!press_key] if predicate num:key/left run function num:utils/update
execute as @s[tag=!press_key] if predicate num:key/left run tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{selector:"@s"},{text:"按键-向左",color:"gold"},{score:{name:"@s",objective:"Number.Player"}}]
execute as @s[tag=!press_key] if predicate num:key/left run tag @s add press_key
execute as @s[tag=press_key] unless predicate num:key/left run tag @s remove press_key