schedule function battle:powerups/light/main 2t

execute as @e[type=item_display,nbt={item:{id:"minecraft:experience_bottle",components:{"minecraft:custom_data":{PowerUp:1b,LightBottle:1b}}}}] at @s run tp @s ~ ~ ~ ~7 ~

execute as @e[type=item_display,nbt={item:{id:"minecraft:experience_bottle",components:{"minecraft:custom_data":{PowerUp:1b,LightBottle:1b}}}}] at @s run particle minecraft:end_rod ^ ^1 ^1 0.01 0.01 0.01 0.01 1 normal @a
execute as @e[type=item_display,nbt={item:{id:"minecraft:experience_bottle",components:{"minecraft:custom_data":{PowerUp:1b,LightBottle:1b}}}}] at @s run particle minecraft:end_rod ^ ^-1.2 ^1 0.01 0.01 0.01 0.01 1 normal @a

execute as @e[type=item_display,nbt={item:{id:"minecraft:experience_bottle",components:{"minecraft:custom_data":{PowerUp:1b,LightBottle:1b}}}}] at @s as @a[distance=..2,limit=1,sort=nearest,gamemode=adventure] at @s run tag @s add LightBottlePowUp
execute as @e[type=item_display,nbt={item:{id:"minecraft:experience_bottle",components:{"minecraft:custom_data":{PowerUp:1b,LightBottle:1b}}}}] at @s as @a[distance=..2,limit=1,sort=nearest,gamemode=adventure] at @s run function battle:powerups/light/occur

