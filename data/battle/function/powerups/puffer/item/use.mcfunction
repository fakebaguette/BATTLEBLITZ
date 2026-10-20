clear @s pufferfish[custom_data={NoDrop:1b,PowerUp:1b,Pufferfish:1b}] 1

playsound minecraft:entity.puffer_fish.blow_up master @a ~ ~ ~ 0.7 1.7
playsound entity.breeze.wind_burst master @a ~ ~ ~ 0.7 1.7
particle bubble_pop ~ ~1 ~ 0.5 0.5 0.5 0.1 10 normal

execute as @s at @s positioned ~ ~1 ~ positioned ^ ^ ^2 run function battle:powerups/puffer/item/pos