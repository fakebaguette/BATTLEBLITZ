scoreboard objectives add prosp_place_ray_steps dummy
scoreboard objectives add prosp_place_ray_success dummy

execute as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function battle:classes/prospector/supply/item/place/2-init
function battle:classes/prospector/supply/item/cd/loop