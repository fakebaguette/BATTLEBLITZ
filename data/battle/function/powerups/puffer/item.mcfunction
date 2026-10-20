tag @s add pufferfish

effect give @a[distance=..2] slowness 2 1
particle minecraft:bubble_pop ~ ~ ~ 1 1 1 0.1 500 normal @a
particle minecraft:poof ~ ~ ~ .5 .5 .5 0.1 40 normal @a
particle minecraft:dust{color:[0.055,0.78,0.82],scale:1} ~ ~ ~ .5 .5 .5 0.1 40 normal @a
particle minecraft:dust{color:[0.988,0.996,0.698],scale:2} ~ ~ ~ .5 .5 .5 0.1 100 normal @a
playsound minecraft:entity.puffer_fish.blow_up master @a[distance=..20] ~ ~ ~ 1 0.5
kill @s