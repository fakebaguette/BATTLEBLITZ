scoreboard objectives add cava_ray_steps dummy
scoreboard objectives add cava_ray_success dummy
scoreboard objectives add cava_camel_riders dummy

scoreboard players reset @s cava_ray_success
scoreboard players reset @e[type=camel,tag=cavaSteed] cava_camel_riders
execute as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function battle:classes/cavalier/ride/2-init

advancement revoke @s only battle:cavalier/ride