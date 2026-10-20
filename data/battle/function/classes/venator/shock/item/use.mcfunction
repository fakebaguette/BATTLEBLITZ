playsound item.golden_dandelion.use master @a ~ ~ ~ 1 0.6
playsound entity.warden.sonic_charge master @a ~ ~ ~ 0.7 1.2
playsound entity.warden.sonic_boom master @a ~ ~ ~ 0.7 1.2
particle enchanted_hit ~ ~1 ~ 0.5 0.5 0.5 0.1 20 normal
particle minecraft:white_smoke ~ ~1 ~ 0.5 0.5 0.5 0.1 20 normal
scoreboard players reset @s use_venator_shock

execute at @s as @n[type=snowball,distance=..3] positioned ~ ~1 ~ run function battle:classes/venator/shock/item/pos