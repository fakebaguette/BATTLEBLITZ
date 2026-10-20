schedule function battle:powerups/shroom/main 2t append

execute as @e[type=item_display,nbt={item:{id:"minecraft:warped_fungus",components:{"minecraft:custom_data":{PowerUp:1b,Shroom:1b}}}}] at @s run tp @s ~ ~ ~ ~10 ~


execute as @e[type=item_display,nbt={item:{id:"minecraft:warped_fungus",components:{"minecraft:custom_data":{PowerUp:1b,Shroom:1b}}}}] at @s run particle minecraft:witch ^ ^1 ^1 0.1 0.1 0.1 0 1 normal @a
execute as @e[type=item_display,nbt={item:{id:"minecraft:warped_fungus",components:{"minecraft:custom_data":{PowerUp:1b,Shroom:1b}}}}] at @s run particle minecraft:witch ^ ^-1.2 ^1 0.1 0.1 0.1 0 1 normal @a

execute as @e[type=item_display,nbt={item:{id:"minecraft:warped_fungus",components:{"minecraft:custom_data":{PowerUp:1b,Shroom:1b}}}}] at @s as @a[distance=..2,limit=1,sort=nearest,gamemode=adventure] at @s run tag @s add ShroomPowUp
execute as @e[type=item_display,nbt={item:{id:"minecraft:warped_fungus",components:{"minecraft:custom_data":{PowerUp:1b,Shroom:1b}}}}] at @s as @a[distance=..2,limit=1,sort=nearest,gamemode=adventure] at @s run function battle:powerups/shroom/occur