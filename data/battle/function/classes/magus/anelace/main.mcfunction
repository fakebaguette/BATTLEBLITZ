schedule function battle:classes/magus/anelace/main 1t

scoreboard objectives add use_reg_attack minecraft.used:iron_sword
scoreboard objectives add use_charged_attack minecraft.used:diamond_sword

execute as @a[tag=!magus_class] run scoreboard players reset @s use_reg_attack
execute as @a[tag=!magus_class] run scoreboard players reset @s use_charged_attack

execute as @a[tag=magus_class,scores={use_reg_attack=3..}] run function battle:classes/magus/anelace/occur