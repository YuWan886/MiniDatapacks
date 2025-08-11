$execute if score #Game G_Spyword matches 0 run data modify storage spy:game word.spy_word set from storage spy:register dictionary.[$(num)].word.[0]
$execute if score #Game G_Spyword matches 0 run data modify storage spy:game word.normal_word set from storage spy:register dictionary.[$(num)].word.[1]
$execute if score #Game G_Spyword matches 1 run data modify storage spy:game word.spy_word set from storage spy:register dictionary.[$(num)].word.[1]
$execute if score #Game G_Spyword matches 1 run data modify storage spy:game word.normal_word set from storage spy:register dictionary.[$(num)].word.[0]

function spy:game/extract_word/3 with storage spy:game word