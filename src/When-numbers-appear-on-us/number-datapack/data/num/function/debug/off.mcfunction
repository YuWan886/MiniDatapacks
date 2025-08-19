scoreboard players set #Game G.GameState 0
function num:game/end
tellraw @a[tag=debug] ["",{text:"[Debug]模式",color:"red"},{text:"已关闭！",color:"red"}]
tag @s remove debug