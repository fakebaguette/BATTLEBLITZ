execute unless block ~ ~ ~ #battle:nonsolids run function battle:powerups/tnt/place/4-hit
scoreboard players remove @s place_tnt_ray_steps 1
execute if score @s place_tnt_ray_steps matches 1.. if score @s place_tnt_ray_success matches 0 positioned ^ ^ ^0.1 run function battle:powerups/tnt/place/3-ray