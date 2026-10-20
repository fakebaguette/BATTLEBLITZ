execute if entity @s[scores={prosp_cosmetic_time=1..}] run schedule function battle:classes/prospector/supply/item/cd/loop 1t

scoreboard players add @s prosp_cosmetic_time 1
execute as @s[scores={prosp_cosmetic_time=9..}] run tag @s remove prosp_cosmetic_supply_drop_kill
scoreboard players reset @s[scores={prosp_cosmetic_time=9..}] prosp_cosmetic_time