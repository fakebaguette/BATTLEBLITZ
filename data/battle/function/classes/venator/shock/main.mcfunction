schedule function battle:classes/venator/shock/main 1t

scoreboard objectives add use_venator_shock used:snowball
scoreboard players reset @a[tag=!venator_class] use_venator_shock

execute as @a[scores={use_venator_shock=1..}] at @s run function battle:classes/venator/shock/item/use
execute as @e[type=block_display,tag=vena_main_model] at @s unless predicate battle:venator/shock on passengers run kill @s
execute as @e[type=block_display,tag=vena_main_model] at @s unless predicate battle:venator/shock run kill @s