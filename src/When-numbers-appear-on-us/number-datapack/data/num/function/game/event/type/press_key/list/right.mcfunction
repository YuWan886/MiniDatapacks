execute as @s[tag=!press_key] if predicate num:key/right run function num:utils/update
execute as @s[tag=!press_key] if predicate num:key/right run tellraw @a[tag=debug] ["",{text:"[Debug]",color:"red"},{selector:"@s"},{text:"按键-向右",color:"gold"},{score:{name:"@s",objective:"Number.Player"}}]
execute as @s[tag=!press_key] if predicate num:key/right run tag @s add press_key
execute as @s[tag=press_key] unless predicate num:key/right run tag @s remove press_key