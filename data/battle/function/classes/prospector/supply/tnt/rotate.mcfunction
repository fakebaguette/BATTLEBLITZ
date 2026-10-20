schedule function battle:classes/prospector/supply/tnt/rotate 2t

execute as @e[type=item_display,nbt={item:{id:"minecraft:tnt",components:{"minecraft:custom_data":{PowerUp:1b,prospTNT:1b}}}}] at @s run tp @s ~ ~ ~ ~10 ~


execute as @e[type=item_display,nbt={item:{id:"minecraft:tnt",components:{"minecraft:custom_data":{PowerUp:1b,prospTNT:1b}}}}] at @s run particle wax_off ^ ^1 ^1 0.05 0.05 0.05 0 1 normal @a
execute as @e[type=item_display,nbt={item:{id:"minecraft:tnt",components:{"minecraft:custom_data":{PowerUp:1b,prospTNT:1b}}}}] at @s run particle wax_off ^ ^-1.2 ^1 0.05 0.05 0.05 0 1 normal @a

execute as @e[tag=prosp_Red,type=item_display,nbt={item:{id:"minecraft:tnt",components:{"minecraft:custom_data":{PowerUp:1b,prospTNT:1b}}}}] at @s as @p[team=Red,distance=..2,gamemode=adventure] at @s run tag @s add prospTNTPowUp
execute as @e[tag=prosp_Red,type=item_display,nbt={item:{id:"minecraft:tnt",components:{"minecraft:custom_data":{PowerUp:1b,prospTNT:1b}}}}] at @s as @p[team=Red,distance=..2,gamemode=adventure] at @s run function battle:classes/prospector/supply/tnt/pickup

execute as @e[tag=prosp_Aqua,type=item_display,nbt={item:{id:"minecraft:tnt",components:{"minecraft:custom_data":{PowerUp:1b,prospTNT:1b}}}}] at @s as @p[team=Aqua,distance=..2,gamemode=adventure] at @s run tag @s add prospTNTPowUp
execute as @e[tag=prosp_Aqua,type=item_display,nbt={item:{id:"minecraft:tnt",components:{"minecraft:custom_data":{PowerUp:1b,prospTNT:1b}}}}] at @s as @p[team=Aqua,distance=..2,gamemode=adventure] at @s run function battle:classes/prospector/supply/tnt/pickup

execute as @e[tag=prosp_Lime,type=item_display,nbt={item:{id:"minecraft:tnt",components:{"minecraft:custom_data":{PowerUp:1b,prospTNT:1b}}}}] at @s as @p[team=Lime,distance=..2,gamemode=adventure] at @s run tag @s add prospTNTPowUp
execute as @e[tag=prosp_Lime,type=item_display,nbt={item:{id:"minecraft:tnt",components:{"minecraft:custom_data":{PowerUp:1b,prospTNT:1b}}}}] at @s as @p[team=Lime,distance=..2,gamemode=adventure] at @s run function battle:classes/prospector/supply/tnt/pickup

execute as @e[tag=prosp_Magenta,type=item_display,nbt={item:{id:"minecraft:tnt",components:{"minecraft:custom_data":{PowerUp:1b,prospTNT:1b}}}}] at @s as @p[team=Magenta,distance=..2,gamemode=adventure] at @s run tag @s add prospTNTPowUp
execute as @e[tag=prosp_Magenta,type=item_display,nbt={item:{id:"minecraft:tnt",components:{"minecraft:custom_data":{PowerUp:1b,prospTNT:1b}}}}] at @s as @p[team=Magenta,distance=..2,gamemode=adventure] at @s run function battle:classes/prospector/supply/tnt/pickup

execute as @e[tag=prosp_Gold,type=item_display,nbt={item:{id:"minecraft:tnt",components:{"minecraft:custom_data":{PowerUp:1b,prospTNT:1b}}}}] at @s as @p[team=Gold,distance=..2,gamemode=adventure] at @s run tag @s add prospTNTPowUp
execute as @e[tag=prosp_Gold,type=item_display,nbt={item:{id:"minecraft:tnt",components:{"minecraft:custom_data":{PowerUp:1b,prospTNT:1b}}}}] at @s as @p[team=Gold,distance=..2,gamemode=adventure] at @s run function battle:classes/prospector/supply/tnt/pickup

execute as @e[tag=prosp_Yellow,type=item_display,nbt={item:{id:"minecraft:tnt",components:{"minecraft:custom_data":{PowerUp:1b,prospTNT:1b}}}}] at @s as @p[team=Yellow,distance=..2,gamemode=adventure] at @s run tag @s add prospTNTPowUp
execute as @e[tag=prosp_Yellow,type=item_display,nbt={item:{id:"minecraft:tnt",components:{"minecraft:custom_data":{PowerUp:1b,prospTNT:1b}}}}] at @s as @p[team=Yellow,distance=..2,gamemode=adventure] at @s run function battle:classes/prospector/supply/tnt/pickup

execute unless entity @e[type=item_display,tag=prospTNT] run schedule clear battle:classes/prospector/supply/tnt/rotate