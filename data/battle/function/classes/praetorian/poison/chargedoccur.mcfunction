execute as @a[scores={praet_poison_taken=1..}] at @s run effect give @s poison 3 2 false
playsound minecraft:entity.splash_potion.break master @a ~ ~ ~ 0.4 0
playsound minecraft:entity.player.attack.crit master @a ~ ~ ~ 0.5 0
scoreboard players reset @s praet_use_attack