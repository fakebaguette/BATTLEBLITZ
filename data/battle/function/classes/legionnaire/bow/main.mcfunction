schedule function battle:classes/legionnaire/bow/main 1t

scoreboard objectives add use_legion_bow minecraft.used:minecraft.bow
scoreboard objectives add legion_arrow_score dummy

execute unless items entity @s container.* bow[custom_data={legionBow:1b}] unless items entity @s hotbar.* bow[custom_data={legionBow:1b}] unless items entity @s weapon.offhand bow[custom_data={legionBow:1b}] unless items entity @s player.cursor bow[custom_data={legionBow:1b}] run scoreboard players reset @s use_legion_bow
execute as @a[scores={use_legion_bow=1..},tag=Team1] run tag @e[type=spectral_arrow,sort=nearest] add fireArrowT1
execute as @a[scores={use_legion_bow=1..},tag=Team2] run tag @e[type=spectral_arrow,sort=nearest] add fireArrowT2

tag @e[type=spectral_arrow,tag=fireArrowT1] add fireArrow
tag @e[type=spectral_arrow,tag=fireArrowT2] add fireArrow

execute as @e[type=spectral_arrow,tag=fireArrow] run scoreboard players add @s legion_arrow_score 1
execute as @e[type=spectral_arrow,tag=fireArrow] if score @s legion_arrow_score matches 3 run function battle:classes/legionnaire/bow/occur
execute as @e[type=spectral_arrow,tag=fireArrow] if score @s legion_arrow_score matches 80.. run kill @s

execute as @e[type=arrow,tag=copyLegionArrow] run scoreboard players add @s legion_arrow_score 1
execute as @e[type=arrow,tag=copyLegionArrow] if score @s legion_arrow_score matches 75.. run kill @s

execute as @e[type=arrow,tag=copyLegionArrow] at @s run particle minecraft:cloud ~ ~ ~ 0.01 0.01 0.01 0.03 1 normal @a
execute as @e[type=arrow,tag=copyLegionArrow] at @s run particle minecraft:enchant ~ ~ ~ 0.1 0.1 0.1 0.03 1 normal @a

execute as @e[type=arrow,tag=copyLegionArrow,scores={legion_arrow_score=1..10}] at @s run tag @s add arrowMotion
execute as @e[type=arrow,tag=copyLegionArrow,tag=arrowMotion] at @s run data modify entity @s Motion set from entity @e[type=spectral_arrow,tag=fireArrow,limit=1,scores={legion_arrow_score=3..},sort=nearest] Motion
execute as @a[scores={use_legion_bow=1..}] unless entity @e[type=spectral_arrow,tag=fireArrow] run scoreboard players reset @s use_legion_bow