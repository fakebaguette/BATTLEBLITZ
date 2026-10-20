scoreboard players remove @s prosp_fall_time 1

execute as @e[tag=prosp_box_hitbox] at @s run tp @s ~ ~-1 ~
execute as @e[tag=prosp_box_hitbox] at @s run function battle:classes/prospector/supply/item/spawn/mid_air_hit

execute if score @s prosp_fall_time matches 0 as @s at @s run function battle:classes/prospector/supply/item/spawn/land