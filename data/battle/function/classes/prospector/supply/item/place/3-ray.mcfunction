execute unless block ~ ~ ~ #battle:nonsolids run function battle:classes/prospector/supply/item/place/4-hit
scoreboard players remove @s prosp_place_ray_steps 1
execute if score @s prosp_place_ray_steps matches 1.. if score @s prosp_place_ray_success matches 0 positioned ^ ^ ^0.1 run function battle:classes/prospector/supply/item/place/3-ray