execute if score @s light_charge_ticks matches 0..40 run function battle:classes/lightwielder/effects/1/shoot
execute if score @s light_charge_ticks matches 41..80 run function battle:classes/lightwielder/effects/2/shoot
execute if score @s light_charge_ticks matches 81.. run function battle:classes/lightwielder/effects/3/shoot

scoreboard players reset @s light_charge_ticks
experience set @s 0 points
experience set @s 0 levels

function battle:classes/lightwielder/item_cd/loop