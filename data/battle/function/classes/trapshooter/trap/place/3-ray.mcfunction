execute unless block ~ ~ ~ #battle:trapblocks run function battle:classes/trapshooter/trap/place/4-hit
scoreboard players remove @s trap_place_ray_steps 1
execute if score @s trap_place_ray_steps matches 1.. if score @s trap_place_ray_success matches 0 positioned ^ ^ ^0.1 run function battle:classes/trapshooter/trap/place/3-ray