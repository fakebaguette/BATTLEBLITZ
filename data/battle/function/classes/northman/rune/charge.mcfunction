scoreboard objectives add north_rune_charge dummy
scoreboard objectives add north_clicking_rune dummy

scoreboard players set @s north_clicking_rune 2
scoreboard players add @s north_rune_charge 1

advancement revoke @s only battle:northman/runeshard
advancement revoke @s only battle:northman/rune_cd

execute if score @s north_rune_charge matches 3.. run particle snowflake ~ ~ ~ 0.5 0.8 0.5 0.3 3 normal
execute if score @s north_rune_charge matches 3.. run particle cloud ~ ~ ~ 0.5 0.8 0.5 0.1 3 normal
execute if score @s north_rune_charge matches 10.. run particle crit ~ ~ ~ 0.5 0.8 0.5 0.3 3 normal
execute if score @s north_rune_charge matches 10.. run particle small_gust ~ ~ ~ 0.5 0.8 0.5 0.3 3 normal
execute if score @s north_rune_charge matches 20.. run particle enchanted_hit ~ ~ ~ 0.5 0.8 0.5 0.1 3 normal

execute if score @s north_rune_charge matches 3 run playsound block.decorated_pot.shatter master @a ~ ~ ~ 2 1.3
execute if score @s north_rune_charge matches 3 run playsound entity.breeze.charge master @a ~ ~ ~ 2 0.5
execute if score @s north_rune_charge matches 3 run playsound block.decorated_pot.break master @a ~ ~ ~ 2 0.9

execute if score @s north_rune_charge matches 9..11 run playsound block.beacon.deactivate master @a ~ ~ ~ 2 0.6
execute if score @s north_rune_charge matches ..8 run stopsound @a master block.beacon.deactivate

execute if score @s north_rune_charge matches 30.. run playsound entity.turtle.egg_break master @a ~ ~ ~ 2 0.9
execute if score @s north_rune_charge matches 30.. run playsound block.decorated_pot.shatter master @a ~ ~ ~ 2 0.6
execute if score @s north_rune_charge matches 30.. run playsound entity.zombie.attack_iron_door master @a ~ ~ ~ 2 0.5
execute if score @s north_rune_charge matches 30.. run playsound minecraft:block.metal.break master @a ~ ~ ~ 2 1.7

execute if score @s north_rune_charge matches 30.. run function battle:classes/northman/rune/occur
