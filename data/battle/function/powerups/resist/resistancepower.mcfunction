schedule function battle:powerups/resist/resistancepower 2t

execute as @e[type=item_display,nbt={item:{id:"minecraft:mourner_pottery_sherd",components:{"minecraft:custom_data":{PowerUp:1b,ResistancePerm:1b}}}}] at @s run tp @s ~ ~ ~ ~10 ~


execute as @e[type=item_display,nbt={item:{id:"minecraft:mourner_pottery_sherd",components:{"minecraft:custom_data":{PowerUp:1b,ResistancePerm:1b}}}}] at @s run particle minecraft:cherry_leaves ^ ^1 ^1 0.2 0.2 0.2 0.1 1 normal @a

execute as @e[type=item_display,nbt={item:{id:"minecraft:mourner_pottery_sherd",components:{"minecraft:custom_data":{PowerUp:1b,ResistancePerm:1b}}}}] at @s as @a[distance=..2,limit=1,sort=nearest,gamemode=adventure,tag=ResistPermBuff2] at @s run title @s actionbar ["",{"text":"You already have "},{"text":"MAX","color":"green","bold":true},{"text":" Damage Resistance","color":"aqua","bold":true},{"text":"!","color":"white"}]
execute as @e[type=item_display,nbt={item:{id:"minecraft:mourner_pottery_sherd",components:{"minecraft:custom_data":{PowerUp:1b,ResistancePerm:1b}}}}] at @s as @a[distance=..2,limit=1,sort=nearest,gamemode=adventure,tag=!ResistPermBuff2] at @s run tag @s add ResistancePowUp
execute as @e[type=item_display,nbt={item:{id:"minecraft:mourner_pottery_sherd",components:{"minecraft:custom_data":{PowerUp:1b,ResistancePerm:1b}}}}] at @s as @a[distance=..2,limit=1,sort=nearest,gamemode=adventure,tag=!ResistPermBuff2] at @s run function battle:powerups/resist/resistancepoweroccur

execute as @a[tag=ResistPermBuff2] run effect give @s resistance infinite 1 true
execute as @a[tag=ResistPermBuff1] run effect give @s resistance infinite 0 true