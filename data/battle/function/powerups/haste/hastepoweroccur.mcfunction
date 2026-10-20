execute if entity @a[tag=HastePowUp] as @e[type=item_display,nbt={item:{id:"minecraft:miner_pottery_sherd",components:{"minecraft:custom_data":{PowerUp:1b,HastePerm:1b}}}},limit=1,sort=nearest] at @s run particle cherry_leaves ~ ~ ~ 0.15 0.15 0.15 0.1 100 normal @a

execute as @a[tag=HastePowUp] run function battle:ingame/playerdeath/cosmetics/award/checkpower


execute as @a[tag=HastePowUp] run playsound minecraft:block.amethyst_block.resonate block @s ~ ~ ~ 100
execute as @a[tag=HastePowUp] run playsound minecraft:block.note_block.bell block @s ~ ~ ~ 100 1.2
execute as @a[tag=HastePowUp] run playsound minecraft:block.note_block.chime block @s ~ ~ ~ 100 1.2
execute as @a[tag=HastePowUp] run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"You just collected a Power Up and got:\n- ","color":"#F9CD71"},{"text":"+10% Attack Speed","bold":true,"color":"#F8F8A4"},{"text":"\n"},{"text":"- ","color":"#F9CD71"},{"text":"+20% Mining Speed","bold":true,"color":"yellow"}]
execute as @a[tag=HastePowUp,tag=HastePermBuff1] run playsound minecraft:block.note_block.bit block @s ~ ~ ~ 100 1.2
execute as @a[tag=HastePowUp,tag=HastePermBuff1] run tag @s add HastePermBuff2
execute as @a[tag=HastePowUp,tag=!HastePermBuff1] run tag @s add HastePermBuff1

execute as @a[tag=HastePowUp] at @s run kill @e[type=item_display,nbt={item:{id:"minecraft:miner_pottery_sherd",components:{"minecraft:custom_data":{PowerUp:1b,HastePerm:1b}}}},distance=..2,limit=1,sort=nearest]
execute as @a[tag=HastePowUp] at @s run kill @n[type=text_display,tag=HastePerm,tag=PowerUp,distance=..4,tag=TopText]
execute as @a[tag=HastePowUp] at @s run kill @n[type=text_display,tag=HastePerm,tag=PowerUp,distance=..4,tag=BottomText]
execute as @a[tag=HastePowUp] run tag @s remove HastePowUp