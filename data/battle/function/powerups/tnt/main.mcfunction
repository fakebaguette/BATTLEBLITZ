schedule function battle:powerups/tnt/main 2t

execute as @e[type=item_display,nbt={item:{id:"minecraft:tnt",components:{"minecraft:custom_data":{PowerUp:1b,toxinTNT:1b}}}}] at @s run tp @s ~ ~ ~ ~10 ~


execute as @e[type=item_display,nbt={item:{id:"minecraft:tnt",components:{"minecraft:custom_data":{PowerUp:1b,toxinTNT:1b}}}}] at @s run particle entity_effect{color:[0.161,0.549,0.290,1.00]} ^ ^1 ^1 0.1 0.1 0.1 0 1 normal @a
execute as @e[type=item_display,nbt={item:{id:"minecraft:tnt",components:{"minecraft:custom_data":{PowerUp:1b,toxinTNT:1b}}}}] at @s run particle entity_effect{color:[0.161,0.549,0.290,1.00]} ^ ^-1.2 ^1 0.1 0.1 0.1 0 1 normal @a

execute as @e[type=item_display,nbt={item:{id:"minecraft:tnt",components:{"minecraft:custom_data":{PowerUp:1b,toxinTNT:1b}}}}] at @s as @a[distance=..2,limit=1,sort=nearest,gamemode=adventure] at @s run tag @s add toxinTNTPowUp
execute as @e[type=item_display,nbt={item:{id:"minecraft:tnt",components:{"minecraft:custom_data":{PowerUp:1b,toxinTNT:1b}}}}] at @s as @a[distance=..2,limit=1,sort=nearest,gamemode=adventure] at @s run function battle:powerups/tnt/occur