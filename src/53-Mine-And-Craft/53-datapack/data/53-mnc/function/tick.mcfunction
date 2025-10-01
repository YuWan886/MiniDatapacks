
execute if score #Game GameStatus matches 1 run function 53-mnc:game/loop

# TEST 音乐
scoreboard players remove @a[scores={SoundTime=0..}] SoundTime 1
execute as @a[scores={SoundTime=0}] run stopsound @s