scoreboard players add @s Number.Player 1

execute as @s[team=red] run scoreboard players operation player.red Number.Green = @s Number.Player
execute as @s[team=red] run scoreboard players operation player.red Number.Blue = @s Number.Player
execute as @s[team=red] run scoreboard players operation player.red Number.Yellow = @s Number.Player


execute as @s[team=green] run scoreboard players operation player.green Number.Red = @s Number.Player
execute as @s[team=green] run scoreboard players operation player.green Number.Blue = @s Number.Player
execute as @s[team=green] run scoreboard players operation player.green Number.Yellow = @s Number.Player

execute as @s[team=blue] run scoreboard players operation player.blue Number.Red = @s Number.Player
execute as @s[team=blue] run scoreboard players operation player.blue Number.Green = @s Number.Player
execute as @s[team=blue] run scoreboard players operation player.blue Number.Yellow = @s Number.Player

execute as @s[team=yellow] run scoreboard players operation player.yellow Number.Red = @s Number.Player
execute as @s[team=yellow] run scoreboard players operation player.yellow Number.Green = @s Number.Player
execute as @s[team=yellow] run scoreboard players operation player.yellow Number.Blue = @s Number.Player


execute as @s if score @s Number.Player = #Game G.Number run function num:game/event/next_round