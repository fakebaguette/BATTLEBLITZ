effect clear @s
effect give @s absorption 8 1
effect give @s regeneration 8 1
effect give @s strength 4 0
particle minecraft:totem_of_undying ~ ~1 ~ 0.5 0.5 0.5 0.7 100 normal @a
playsound item.totem.use master @a[distance=..20] ~ ~ ~ 0.4 1.9
scoreboard players reset @s enhancedApple