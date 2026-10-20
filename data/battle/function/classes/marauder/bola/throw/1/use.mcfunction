playsound minecraft:entity.snow_golem.shoot master @a ~ ~ ~ 0.7 0.7
playsound minecraft:item.lead.break master @a ~ ~ ~ 2 1
particle large_smoke ~ ~1 ~ 0.5 0.5 0.5 0.1 5 normal

execute as @s at @s positioned ~ ~1 ~ run function battle:classes/marauder/bola/throw/1/pos