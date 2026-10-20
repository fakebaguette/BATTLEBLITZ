scoreboard objectives add prosp_cosmetic_time dummy
scoreboard players add @s prosp_cosmetic_time 1
execute as @a[scores={prosp_cosmetic_time=1..}] at @s run function battle:classes/prospector/supply/item/cosmetic_time/cd