clear @s tnt[custom_data={prospTNT:1b, NoDrop:1b, PowerUp:1b}] 1

playsound minecraft:entity.tnt.primed master @a ~ ~ ~ 1 1.3
particle smoke ~ ~ ~ 1 0.5 1 0 50 normal @a

execute as @s at @s positioned ~ ~1 ~ run function battle:classes/prospector/supply/tnt_throw/pos