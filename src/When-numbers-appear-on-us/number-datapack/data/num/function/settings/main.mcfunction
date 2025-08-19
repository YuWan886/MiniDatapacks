$data modify storage num:game settings set value {number:$(number),round:$(round),roundtime:$(roundtime)}

$scoreboard players set #Game G.Number $(number)
$scoreboard players set #Game G.Round $(round)
$scoreboard players set #Game G.RoundTime $(roundtime)