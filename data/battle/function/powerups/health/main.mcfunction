schedule function battle:powerups/health/main 2t

execute as @e[type=item_display,nbt={item:{id:"minecraft:heart_pottery_sherd",components:{"minecraft:custom_data":{PowerUp:1b,HealthBoostPerm:1b}}}}] at @s run tp @s ~ ~ ~ ~10 ~


execute as @e[type=item_display,nbt={item:{id:"minecraft:heart_pottery_sherd",components:{"minecraft:custom_data":{PowerUp:1b,HealthBoostPerm:1b}}}}] at @s run particle minecraft:cherry_leaves ^ ^1 ^1 0.2 0.2 0.2 0.1 1 normal @a

execute as @e[type=item_display,nbt={item:{id:"minecraft:heart_pottery_sherd",components:{"minecraft:custom_data":{PowerUp:1b,HealthBoostPerm:1b}}}}] at @s as @a[distance=..2,limit=1,sort=nearest,gamemode=adventure,tag=HealthBoostPermBuff2] at @s run title @s actionbar ["",{"text":"You already have "},{"text":"MAX","color":"green","bold":true},{"text":" HP","color":"red","bold":true},{"text":"!","color":"white"}]
execute as @e[type=item_display,nbt={item:{id:"minecraft:heart_pottery_sherd",components:{"minecraft:custom_data":{PowerUp:1b,HealthBoostPerm:1b}}}}] at @s as @a[distance=..2,limit=1,sort=nearest,gamemode=adventure,tag=!HealthBoostPermBuff2] at @s run tag @s add HealthBoostPowUp
execute as @e[type=item_display,nbt={item:{id:"minecraft:heart_pottery_sherd",components:{"minecraft:custom_data":{PowerUp:1b,HealthBoostPerm:1b}}}}] at @s as @a[distance=..2,limit=1,sort=nearest,gamemode=adventure,tag=!HealthBoostPermBuff2] at @s run function battle:powerups/health/occur

execute as @a[tag=HealthBoostPermBuff2] run effect give @s health_boost infinite 1 true
execute as @a[tag=HealthBoostPermBuff1] run effect give @s health_boost infinite 0 true