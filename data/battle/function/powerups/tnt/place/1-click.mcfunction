scoreboard objectives add place_tnt_ray_steps dummy
scoreboard objectives add place_tnt_ray_success dummy

execute as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function battle:powerups/tnt/place/2-init
function battle:powerups/tnt/cd/loop