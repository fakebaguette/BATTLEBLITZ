schedule function battle:classes/praetorian/poison/main 1t

execute as @a[tag=praetorian_class] run attribute @s scale base set 0.9

scoreboard objectives add praet_use_attack minecraft.used:iron_sword
execute as @a[tag=!praetorian_class] run scoreboard players reset @s praet_use_attack
execute as @a[tag=praetorian_class,scores={praet_use_attack=3}] at @s run function battle:classes/praetorian/poison/occur