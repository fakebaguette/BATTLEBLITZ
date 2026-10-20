clear @s skull_pottery_sherd[custom_data={NoDrop:1b,PowerUp:1b,PharCurse:1b}] 1

playsound minecraft:entity.breeze.hurt master @a ~ ~ ~ 0.7 0.7
particle infested ~ ~1 ~ 0.5 0.5 0.5 0.1 10 normal

execute as @s at @s positioned ~ ~1 ~ run function battle:powerups/curse/item/pos