execute if entity @s[tag=lightAOE1] at @s run effect give @a[tag=!Team1,distance=..4] blindness 2 0 false
execute if entity @s[tag=lightAOE1] at @s run effect give @a[tag=!Team1,distance=..4] slowness 4 1 false

execute if entity @s[tag=lightAOE2] at @s run effect give @a[tag=!Team2,distance=..4] blindness 2 0 false
execute if entity @s[tag=lightAOE2] at @s run effect give @a[tag=!Team2,distance=..4] slowness 4 1 false

particle minecraft:dust{color:[0.898,0.871,0.533],scale:1} ~ ~1 ~ 2 2 2 0.1 1000 normal @a
particle flash{color:[1.000,1.000,1.000,1.00]} ~ ~1 ~ 2 2 2 0.1 100 normal @a
particle minecraft:cloud ~ ~0.5 ~ 2 2 2 0.1 1000 normal @a
particle minecraft:end_rod ~ ~0.5 ~ 2 2 2 0.2 1000 normal @a
particle minecraft:firefly ~ ~0.5 ~ 2 2 2 1 1000 normal @a
playsound minecraft:block.glass.break master @a[distance=..30] ~ ~ ~ 1 1.4
playsound minecraft:entity.splash_potion.break master @a[distance=..30] ~ ~ ~ 1 1.4
kill @e[type=experience_orb,distance=..5]
kill @s