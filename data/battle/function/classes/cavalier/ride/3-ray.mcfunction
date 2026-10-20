execute unless entity @n[type=camel,tag=cavaSteed,distance=..1] run function battle:classes/cavalier/ride/4-hit
scoreboard players remove @s cava_ray_steps 1
execute if score @s cava_ray_steps matches 1.. if score @s cava_ray_success matches 0 positioned ^ ^ ^0.1 run function battle:classes/cavalier/ride/3-ray