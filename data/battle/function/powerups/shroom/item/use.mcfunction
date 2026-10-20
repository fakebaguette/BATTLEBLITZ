clear @s warped_fungus[custom_data={NoDrop:1b,PowerUp:1b,Shroom:1b}] 1

playsound entity.breeze.wind_burst master @a ~ ~ ~ 0.7 1.7
particle witch ~ ~1 ~ 0.5 0.5 0.5 0.1 10 normal

execute as @s at @s positioned ~ ~1 ~ run function battle:powerups/shroom/item/pos