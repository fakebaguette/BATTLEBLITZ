schedule function battle:powerups/speed/speed 2t

execute as @e[type=item_display,nbt={item:{id:"minecraft:sugar",components:{"minecraft:custom_data":{PowerUp:1b,SpeedPowder:1b}}}}] at @s run tp @s ~ ~ ~ ~10 ~


execute as @e[type=item_display,nbt={item:{id:"minecraft:sugar",components:{"minecraft:custom_data":{PowerUp:1b,SpeedPowder:1b}}}}] at @s run particle minecraft:instant_effect ^ ^1 ^1 0.2 0.2 0.2 0.01 1 normal @a
execute as @e[type=item_display,nbt={item:{id:"minecraft:sugar",components:{"minecraft:custom_data":{PowerUp:1b,SpeedPowder:1b}}}}] at @s run particle minecraft:instant_effect ^ ^-1 ^-1 0.2 0.2 0.2 0.01 1 normal @a

execute as @e[type=item_display,nbt={item:{id:"minecraft:sugar",components:{"minecraft:custom_data":{PowerUp:1b,SpeedPowder:1b}}}}] at @s as @a[distance=..2,limit=1,sort=nearest,gamemode=adventure] at @s run tag @s add SpeedPowUp
execute as @e[type=item_display,nbt={item:{id:"minecraft:sugar",components:{"minecraft:custom_data":{PowerUp:1b,SpeedPowder:1b}}}}] at @s as @a[distance=..2,limit=1,sort=nearest,gamemode=adventure] at @s run function battle:powerups/speed/speedoccur
