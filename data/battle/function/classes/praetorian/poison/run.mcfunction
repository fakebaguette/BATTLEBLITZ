execute if entity @a[scores={praet_use_attack=4..}] run schedule function battle:classes/praetorian/poison/run 1t

execute at @a[gamemode=adventure,tag=praetorian_class,scores={praet_use_attack=4..}] run particle entity_effect{color:[0.161,0.549,0.290,1.00]} ~ ~1 ~ 0 0 0 0.01 1 normal @a

scoreboard objectives add praet_poison_taken minecraft.custom:damage_taken

execute as @a at @s unless entity @a[tag=praetorian_class,scores={praet_use_attack=5..}] run scoreboard players reset @s praet_poison_taken
execute as @a[tag=praetorian_class,scores={praet_use_attack=5..}] at @s run function battle:classes/praetorian/poison/chargedoccur