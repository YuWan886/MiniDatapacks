tag @s add random
$data modify storage temp attritube."$(UUID)" set value {UUID:$(UUID)}
$execute store result storage temp attritube."$(UUID)".armor double 0.001 run random value 0..20000
$execute store result storage temp attritube."$(UUID)".armor_toughness double 0.001 run random value 0..20000
$execute store result storage temp attritube."$(UUID)".attack_damage double 0.001 run random value 0..20480
$execute store result storage temp attritube."$(UUID)".attack_knockback double 0.001 run random value 0..5000
$execute store result storage temp attritube."$(UUID)".burning_time double 0.001 run random value 0..102400
$execute store result storage temp attritube."$(UUID)".explosion_knockback_resistance double 0.001 run random value 0..1000
$execute store result storage temp attritube."$(UUID)".fall_damage_multiplier double 0.001 run random value 0..10000
$execute store result storage temp attritube."$(UUID)".flying_speed double 0.001 run random value 0..102400
$execute store result storage temp attritube."$(UUID)".follow_range double 0.001 run random value 0..204800
$execute store result storage temp attritube."$(UUID)".gravity double 0.001 run random value -100..1000
$execute store result storage temp attritube."$(UUID)".jump_strength double 0.001 run random value 0..32000
$execute store result storage temp attritube."$(UUID)".knockback_resistance double 0.001 run random value 0..1000
$execute store result storage temp attritube."$(UUID)".max_absorption double 0.001 run random value 0..204800
$execute store result storage temp attritube."$(UUID)".max_health double 0.001 run random value 0..102400
$execute store result storage temp attritube."$(UUID)".movement_efficiency double 0.001 run random value 0..1000
$execute store result storage temp attritube."$(UUID)".movement_speed double 0.001 run random value 0..10240
$execute store result storage temp attritube."$(UUID)".oxygen_bonus double 0.001 run random value 0..102400
$execute store result storage temp attritube."$(UUID)".safe_fall_distance double 0.001 run random value -1024000..102400
$execute store result storage temp attritube."$(UUID)".scale double 0.001 run random value 63..8000
$execute store result storage temp attritube."$(UUID)".step_height double 0.001 run random value 0..1000
$execute store result storage temp attritube."$(UUID)".tempt_range double 0.001 run random value 0..204800
$execute store result storage temp attritube."$(UUID)".water_movement_efficiency double 0.001 run random value 0..1000
$function random:randomize_2 with storage temp attritube."$(UUID)"
effect give @s regeneration 5 31