execute store result storage spy:game word.num int 1 run random value 1..200
execute store result score #Game G_Spyword run random value 0..1
function spy:game/extract_word/2 with storage spy:game word