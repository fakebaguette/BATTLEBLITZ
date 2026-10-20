scoreboard objectives add light_rune_charge dummy
scoreboard objectives add light_clicking_rune dummy

scoreboard players set @s light_clicking_rune 2
scoreboard players add @s light_rune_charge 1

advancement revoke @s only battle:lightwielder/rune
advancement revoke @s only battle:lightwielder/rune_cd

execute if score @s light_rune_charge matches 3.. run particle instant_effect ~ ~ ~ 0.5 0.8 0.5 0.3 3 normal
execute if score @s light_rune_charge matches 3.. run particle cloud ~ ~ ~ 0.5 0.8 0.5 0.1 3 normal
execute if score @s light_rune_charge matches 10.. run particle instant_effect ~ ~ ~ 0.5 0.8 0.5 0.3 3 normal
execute if score @s light_rune_charge matches 10.. run particle cloud ~ ~ ~ 0.5 0.8 0.5 0.1 3 normal
execute if score @s light_rune_charge matches 20.. run particle end_rod ~ ~ ~ 0.5 0.8 0.5 0.3 3 normal
execute if score @s light_rune_charge matches 40.. run particle entity_effect{color:[1,1,1,1]} ~ ~ ~ 0.5 0.8 0.5 0.3 3 normal

execute if score @s light_rune_charge matches 3 run playsound entity.illusioner.cast_spell master @a ~ ~ ~ 2 1.3
execute if score @s light_rune_charge matches 3 run playsound entity.breeze.deflect master @a ~ ~ ~ 2 0.7
execute if score @s light_rune_charge matches 3 run playsound block.decorated_pot.break master @a ~ ~ ~ 2 0.9

execute if score @s light_rune_charge matches 9..11 run playsound block.beacon.deactivate master @a ~ ~ ~ 2 0.6
execute if score @s light_rune_charge matches ..8 run stopsound @a master block.beacon.deactivate

execute if score @s light_rune_charge matches 40.. run playsound entity.turtle.egg_break master @a ~ ~ ~ 2 0.9
execute if score @s light_rune_charge matches 40.. run playsound entity.breeze.shoot master @a ~ ~ ~ 2 0.8
execute if score @s light_rune_charge matches 40.. run playsound minecraft:entity.illusioner.prepare_blindness master @a ~ ~ ~ 2 1.1
execute if score @s light_rune_charge matches 40.. run playsound minecraft:block.metal.break master @a ~ ~ ~ 2 1.7

execute if score @s light_rune_charge matches 40.. run function battle:classes/lightwielder/effects/instantrune
execute if score @s light_rune_charge matches 40.. run function battle:classes/lightwielder/rune/run
advancement revoke @s only battle:lightwielder/rune