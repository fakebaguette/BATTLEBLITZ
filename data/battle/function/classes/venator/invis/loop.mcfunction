execute if entity @a[tag=vena_is_invis] run schedule function battle:classes/venator/invis/loop 2t

scoreboard players remove @a[tag=vena_is_invis] vena_invis_time 1
execute as @a[tag=vena_is_invis] at @s run particle minecraft:white_ash ~ ~0.5 ~ 0 0 0 1 1 normal @a
effect give @a[tag=vena_is_invis] haste 1 5 true

execute if items entity @a[tag=vena_is_invis] weapon wooden_pickaxe run effect clear @s haste
scoreboard objectives add vena_hit minecraft.custom:minecraft.damage_dealt
scoreboard objectives add vena_take minecraft.custom:minecraft.damage_taken
scoreboard objectives add vena_kill playerKillCount

scoreboard players reset @a[tag=!venator_class] vena_hit
scoreboard players reset @a[tag=!venator_class] vena_take
scoreboard players reset @a[tag=!venator_class] vena_kill

#hit canceled
execute as @a[scores={vena_hit=1..},tag=vena_is_invis] at @s run playsound minecraft:entity.warden.attack_impact master @a ~ ~ ~ 2 0.9
execute as @a[scores={vena_hit=1..},tag=vena_is_invis] at @s run function battle:classes/venator/invis/canceled

#taken canceled
execute as @a[scores={vena_take=1..},tag=vena_is_invis] at @s run playsound minecraft:entity.camel.dash_ready master @a ~ ~ ~ 1 0.6
execute as @a[scores={vena_take=1..},tag=vena_is_invis] at @s run function battle:classes/venator/invis/canceled

#time over
execute as @a[scores={vena_invis_time=..0},tag=vena_is_invis] at @s run playsound minecraft:entity.camel.dash_ready master @a ~ ~ ~ 1 0.6
execute as @a[scores={vena_invis_time=..0},tag=vena_is_invis] at @s run function battle:classes/venator/invis/canceled