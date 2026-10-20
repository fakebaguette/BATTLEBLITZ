playsound minecraft:entity.snow_golem.shoot master @a ~ ~ ~ 0.7 0.5
playsound minecraft:item.lead.break master @a ~ ~ ~ 2 1.2
particle trial_spawner_detection ~ ~1 ~ 0.5 0.5 0.5 0.1 10 normal

execute as @s at @s positioned ~ ~1 ~ run function battle:classes/cavalier/bola/throw/3/pos