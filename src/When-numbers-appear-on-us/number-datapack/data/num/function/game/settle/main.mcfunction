execute if score .round var <= #Game G.Round if score #Game G.PlayerCount matches 2 run function num:game/settle/round/2
execute if score .round var <= #Game G.Round if score #Game G.PlayerCount matches 3 run function num:game/settle/round/3
execute if score .round var <= #Game G.Round if score #Game G.PlayerCount matches 4 run function num:game/settle/round/4

execute if score .round var > #Game G.Round if score #Game G.PlayerCount matches 2 run function num:game/settle/final/2
execute if score .round var > #Game G.Round if score #Game G.PlayerCount matches 3 run function num:game/settle/final/3
execute if score .round var > #Game G.Round if score #Game G.PlayerCount matches 4 run function num:game/settle/final/4