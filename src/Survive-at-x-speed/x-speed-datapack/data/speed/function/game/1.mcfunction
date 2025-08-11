$data modify storage speed:game settings.speed set value $(speed)

execute store result storage speed:game settings.rate float 20 run data get storage speed:game settings.speed

execute as @a run function speed:game/player with storage speed:game settings
function speed:game/2 with storage speed:game settings