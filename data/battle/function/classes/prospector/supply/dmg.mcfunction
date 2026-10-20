tag @s[type=player] add prosp_cosmetic_supply_drop_kill
tag @s add prosp_got_hit
damage @s 8 spear
effect give @s slowness 3 2
effect give @s blindness 2 0
playsound entity.player.attack.knockback master @a ~ ~ ~ 0.7 1.3
particle crit ~ ~ ~ 3 3 3 0.6 20 normal

execute if entity @s[type=player] run function battle:classes/prospector/supply/item/cosmetic_time/loop