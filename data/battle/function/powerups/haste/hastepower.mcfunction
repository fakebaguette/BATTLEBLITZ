schedule function battle:powerups/haste/hastepower 2t

execute as @e[type=item_display,nbt={item:{id:"minecraft:miner_pottery_sherd",components:{"minecraft:custom_data":{PowerUp:1b,HastePerm:1b}}}}] at @s run tp @s ~ ~ ~ ~10 ~


execute as @e[type=item_display,nbt={item:{id:"minecraft:miner_pottery_sherd",components:{"minecraft:custom_data":{PowerUp:1b,HastePerm:1b}}}}] at @s run particle minecraft:cherry_leaves ^ ^1 ^1 0.2 0.2 0.2 0.1 1 normal @a

execute as @e[type=item_display,nbt={item:{id:"minecraft:miner_pottery_sherd",components:{"minecraft:custom_data":{PowerUp:1b,HastePerm:1b}}}}] at @s as @a[distance=..2,limit=1,sort=nearest,gamemode=adventure,tag=HastePermBuff2] at @s run title @s actionbar ["",{"text":"You already have "},{"text":"MAX","color":"green","bold":true},{"text":" Haste","color":"yellow","bold":true},{"text":"!","color":"white"}]
execute as @e[type=item_display,nbt={item:{id:"minecraft:miner_pottery_sherd",components:{"minecraft:custom_data":{PowerUp:1b,HastePerm:1b}}}}] at @s as @a[distance=..2,limit=1,sort=nearest,gamemode=adventure,tag=!HastePermBuff2] at @s run tag @s add HastePowUp
execute as @e[type=item_display,nbt={item:{id:"minecraft:miner_pottery_sherd",components:{"minecraft:custom_data":{PowerUp:1b,HastePerm:1b}}}}] at @s as @a[distance=..2,limit=1,sort=nearest,gamemode=adventure,tag=!HastePermBuff2] at @s run function battle:powerups/haste/hastepoweroccur


execute as @a[tag=HastePermBuff2] run effect give @s haste infinite 1 true
execute as @a[tag=HastePermBuff1] run effect give @s haste infinite 0 true