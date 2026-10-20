schedule function battle:powerups/curse/main 2t append

execute as @e[type=item_display,nbt={item:{id:"minecraft:skull_pottery_sherd",components:{"minecraft:custom_data":{PowerUp:1b,PharCurse:1b}}}}] at @s run tp @s ~ ~ ~ ~10 ~

execute as @e[type=item_display,nbt={item:{id:"minecraft:skull_pottery_sherd",components:{"minecraft:custom_data":{PowerUp:1b,PharCurse:1b}}}}] at @s run particle minecraft:infested ^ ^1 ^1 0.01 0.01 0.01 0 1 normal @a
execute as @e[type=item_display,nbt={item:{id:"minecraft:skull_pottery_sherd",components:{"minecraft:custom_data":{PowerUp:1b,PharCurse:1b}}}}] at @s run particle minecraft:infested ^ ^-1.2 ^1 0.01 0.01 0.01 0 1 normal @a

execute as @e[type=item_display,nbt={item:{id:"minecraft:skull_pottery_sherd",components:{"minecraft:custom_data":{PowerUp:1b,PharCurse:1b}}}}] at @s as @a[distance=..2,limit=1,sort=nearest,gamemode=adventure] at @s run tag @s add PharCursePowUp
execute as @e[type=item_display,nbt={item:{id:"minecraft:skull_pottery_sherd",components:{"minecraft:custom_data":{PowerUp:1b,PharCurse:1b}}}}] at @s as @a[distance=..2,limit=1,sort=nearest,gamemode=adventure] at @s run function battle:powerups/curse/occur

