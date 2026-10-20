schedule function battle:powerups/enhanced/gapple 2t

execute as @e[type=item_display,nbt={item:{id:"minecraft:golden_apple",components:{"minecraft:custom_data":{PowerUp:1b,Enhanced:1b}}}}] at @s run tp @s ~ ~ ~ ~10 ~


execute as @e[type=item_display,nbt={item:{id:"minecraft:golden_apple",components:{"minecraft:custom_data":{PowerUp:1b,Enhanced:1b}}}}] at @s run particle minecraft:totem_of_undying ^ ^1 ^1 0.2 0.2 0.2 0.1 1 normal @a

execute as @e[type=item_display,nbt={item:{id:"minecraft:golden_apple",components:{"minecraft:custom_data":{PowerUp:1b,Enhanced:1b}}}}] at @s as @a[distance=..2,limit=1,sort=nearest,gamemode=adventure] at @s run tag @s add GapplePowUp
execute as @e[type=item_display,nbt={item:{id:"minecraft:golden_apple",components:{"minecraft:custom_data":{PowerUp:1b,Enhanced:1b}}}}] at @s as @a[distance=..2,limit=1,sort=nearest,gamemode=adventure] at @s run function battle:powerups/enhanced/gappleoccur
