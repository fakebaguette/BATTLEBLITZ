schedule function battle:powerups/puffer/main 2t append

execute as @e[type=item_display,nbt={item:{id:"minecraft:pufferfish",components:{"minecraft:custom_data":{PowerUp:1b,Pufferfish:1b}}}}] at @s run tp @s ~ ~ ~ ~10 ~


execute as @e[type=item_display,nbt={item:{id:"minecraft:pufferfish",components:{"minecraft:custom_data":{PowerUp:1b,Pufferfish:1b}}}}] at @s run particle minecraft:bubble_pop ^ ^1 ^1 0.2 0.2 0.2 0.1 2 normal @a
execute as @e[type=item_display,nbt={item:{id:"minecraft:pufferfish",components:{"minecraft:custom_data":{PowerUp:1b,Pufferfish:1b}}}}] at @s run particle minecraft:dust{color:[0.988,0.996,0.698],scale:2} ^ ^1 ^1 0.2 0.2 0.2 0.2 1 normal
execute as @e[type=item_display,nbt={item:{id:"minecraft:pufferfish",components:{"minecraft:custom_data":{PowerUp:1b,Pufferfish:1b}}}}] at @s run particle minecraft:bubble_pop ^ ^-1.2 ^1 0.2 0.2 0.2 0.1 2 normal @a
execute as @e[type=item_display,nbt={item:{id:"minecraft:pufferfish",components:{"minecraft:custom_data":{PowerUp:1b,Pufferfish:1b}}}}] at @s run particle minecraft:dust{color:[0.988,0.996,0.698],scale:2} ^ ^-1.2 ^1 0.2 0.2 0.2 0.2 1 normal

execute as @e[type=item_display,nbt={item:{id:"minecraft:pufferfish",components:{"minecraft:custom_data":{PowerUp:1b,Pufferfish:1b}}}}] at @s as @a[distance=..2,limit=1,sort=nearest,gamemode=adventure] at @s run tag @s add PufferfishPowUp
execute as @e[type=item_display,nbt={item:{id:"minecraft:pufferfish",components:{"minecraft:custom_data":{PowerUp:1b,Pufferfish:1b}}}}] at @s as @a[distance=..2,limit=1,sort=nearest,gamemode=adventure] at @s run function battle:powerups/puffer/occur