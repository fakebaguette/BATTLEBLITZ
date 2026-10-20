#Item change
scoreboard players remove @s vena_invis_charges 1
execute store result storage venator charges int 1 run scoreboard players get @s vena_invis_charges 
function battle:classes/venator/invis/update_charges with storage venator

#Restock
execute if score @s vena_invis_charges < @s vena_invis_cap run function battle:classes/venator/invis/item_cd/loop

scoreboard players reset @s vena_hit
scoreboard players reset @s vena_take
scoreboard players reset @s vena_kill

clear @s netherite_helmet[custom_data={NoDrop:1b,vena_remove:1b}] 1
clear @s chainmail_chestplate[custom_data={NoDrop:1b,vena_remove:1b}] 1
clear @s leather_leggings[custom_data={NoDrop:1b,vena_remove:1b}] 1
clear @s leather_boots[custom_data={NoDrop:1b,vena_remove:1b}] 1

effect give @s invisibility 2 0 true
effect give @s strength 2 0 true
effect give @s speed 2 0 true

effect give @s[scores={vena_invis_cap=3..}] regeneration 1 3 true
effect give @s[scores={vena_invis_cap=4..}] speed 2 1 true
effect give @s[scores={vena_invis_cap=5..}] absorption 5 0 true

playsound minecraft:entity.breeze.slide master @a ~ ~ ~ 1 0.7
playsound minecraft:entity.camel.saddle master @a ~ ~ ~ 1 0
particle minecraft:white_ash ~ ~0.5 ~ 0.5 0.8 0.5 1 2000 normal @a

tag @s add vena_is_invis
scoreboard players set @s vena_invis_time 30
function battle:classes/venator/invis/loop