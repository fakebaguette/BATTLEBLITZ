scoreboard objectives add speedPadTime dummy

particle wax_off ~ ~-.7 ~ .7 .1 .7 1 2 normal @a
particle minecraft:cloud ~ ~-.7 ~ .8 .1 .8 .02 3 normal @a
particle dust{color:[0.522,0.953,1.000],scale:2} ~ ~-.7 ~ .8 .1 .8 .02 3 normal @a
execute as @a[sort=nearest,distance=..20] at @s if block ~ ~-1 ~ minecraft:light_blue_concrete_powder run scoreboard players set @s speedPadTime 0
execute as @a[sort=nearest,distance=..20,scores={speedPadTime=0..}] at @s run function battle:ingame/pads/speed/occur

execute as @e[type=#battle:pets,sort=nearest,distance=..20] at @s if block ~ ~-1 ~ minecraft:light_blue_concrete_powder run scoreboard players set @s speedPadTime 0
execute as @e[type=#battle:pets,sort=nearest,distance=..20,scores={speedPadTime=0..}] at @s run function battle:ingame/pads/speed/occur