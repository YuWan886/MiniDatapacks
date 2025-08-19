execute store result storage num:game round int 1 run scoreboard players get .round var
scoreboard players add .round var 1
function num:game/settle/main
function num:utils/storage with storage num:game
function num:utils/uninstall_score

scoreboard players set @a Number.Player 0
scoreboard players reset * Number.Red
scoreboard players reset * Number.Green
scoreboard players reset * Number.Blue
scoreboard players reset * Number.Yellow
function num:utils/display_name/main

scoreboard players operation #Timer T.RoundTime = #Game G.RoundTime
execute if score .round var > #Game G.Round run function num:game/end

function num:game/event/roll