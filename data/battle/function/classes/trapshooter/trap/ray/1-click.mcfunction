scoreboard objectives add trap_ray_steps dummy
scoreboard objectives add trap_ray_success dummy

execute as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function battle:classes/trapshooter/trap/ray/2-init