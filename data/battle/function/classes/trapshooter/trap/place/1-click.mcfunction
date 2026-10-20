scoreboard objectives add trap_place_ray_steps dummy
scoreboard objectives add trap_place_ray_success dummy

execute as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function battle:classes/trapshooter/trap/place/2-init
function battle:classes/trapshooter/trap/cd/loop