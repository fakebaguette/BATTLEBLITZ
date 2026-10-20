execute if entity @a[tag=HealthBoostPowUp] as @e[type=item_display,nbt={item:{id:"minecraft:heart_pottery_sherd",components:{"minecraft:custom_data":{PowerUp:1b,HealthBoostPerm:1b}}}},limit=1,sort=nearest] at @s run particle cherry_leaves ~ ~ ~ 0.15 0.15 0.15 0.1 100 normal @a

execute as @a[tag=HealthBoostPowUp] run function battle:ingame/playerdeath/cosmetics/award/checkpower


execute as @a[tag=HealthBoostPowUp] run playsound minecraft:block.amethyst_block.resonate block @s ~ ~ ~ 100
execute as @a[tag=HealthBoostPowUp] run playsound minecraft:block.note_block.bell block @s ~ ~ ~ 100 1.2
execute as @a[tag=HealthBoostPowUp] run playsound minecraft:block.note_block.chime block @s ~ ~ ~ 100 1.2
execute as @a[tag=HealthBoostPowUp] run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"You just collected a Power Up and got:\n- ","color":"#F9CD71"},{"text":"+4 Max HP","bold":true,"color":"red"}]
execute as @a[tag=HealthBoostPowUp,tag=HealthBoostPermBuff1] run playsound minecraft:block.note_block.bit block @s ~ ~ ~ 100 1.2
execute as @a[tag=HealthBoostPowUp,tag=HealthBoostPermBuff1] run tag @s add HealthBoostPermBuff2
execute as @a[tag=HealthBoostPowUp,tag=!HealthBoostPermBuff1] run tag @s add HealthBoostPermBuff1

execute as @a[tag=HealthBoostPowUp] at @s run kill @e[type=item_display,nbt={item:{id:"minecraft:heart_pottery_sherd",components:{"minecraft:custom_data":{PowerUp:1b,HealthBoostPerm:1b}}}},distance=..2,limit=1,sort=nearest]
execute as @a[tag=HealthBoostPowUp] at @s run kill @e[type=text_display,tag=HealthBoostPerm,tag=PowerUp,distance=..4,limit=1,sort=nearest]
execute as @a[tag=HealthBoostPowUp] run tag @s remove HealthBoostPowUp