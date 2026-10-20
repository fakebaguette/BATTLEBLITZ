execute if entity @s[scores={speedPadTime=0},nbt=!{active_effects:[{id:"minecraft:speed",amplifier:3b}]}] at @s run playsound minecraft:item.trident.riptide_3 master @a ~ ~ ~ .6 1.8
execute if entity @s[scores={speedPadTime=0},nbt=!{active_effects:[{id:"minecraft:speed",amplifier:3b}]}] at @s run playsound minecraft:entity.breeze.charge master @a ~ ~ ~ 1 1.4
execute as @e[sort=nearest,distance=..20,scores={speedPadTime=0..}] at @s if block ~ ~-1 ~ minecraft:light_blue_concrete_powder run scoreboard players set @s speedPadTime 1
particle minecraft:instant_effect ~ ~0.5 ~ 0.5 0.8 0.5 1 4 normal
effect give @s[scores={speedPadTime=1}] speed 1 3 true
effect give @s[tag=lightwielder_class,scores={speedPadTime=1}] speed 2 3 true
effect give @s[scores={speedPadTime=10..}] speed 1 2 false
scoreboard players add @s speedPadTime 1
scoreboard players reset @s[scores={speedPadTime=19..}] speedPadTime