summon chicken ~ ~ ~ {attributes:[{id:"scale",base:0.8},{id:"movement_speed",base:0.5}],Passengers:[{id:"zombie",IsBaby:true,Glowing:true,equipment:{head:{id:"tnt"}},attributes:[{id:"scale",base:2}]},{id:"tnt",fuse:100,explosion_power:5,Silent:true,block_state:{Name:"barrier"}}]}

playsound music_disc.lava_chicken record @s ~ ~ ~ 0.7 1.24
scoreboard players set @s SoundTime 100

spreadplayers ~ ~ 5 8 false @e[type=chicken,distance=..1]