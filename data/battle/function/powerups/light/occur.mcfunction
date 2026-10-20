execute if entity @a[tag=LightBottlePowUp] as @e[type=item_display,nbt={item: {id: "minecraft:experience_bottle", components:{"minecraft:custom_data": {PowerUp: 1b, LightBottle: 1b,}}}},distance=..2,limit=1,sort=nearest] at @s run particle minecraft:end_rod ~ ~ ~ 0.15 0.15 0.15 0.1 100 normal @a

execute as @a[tag=LightBottlePowUp] run function battle:ingame/playerdeath/cosmetics/award/checkpower


execute as @a[tag=LightBottlePowUp] run playsound minecraft:block.amethyst_block.resonate block @s ~ ~ ~ 100
execute as @a[tag=LightBottlePowUp] run playsound minecraft:block.note_block.bell block @s ~ ~ ~ 100 1.2
execute as @a[tag=LightBottlePowUp] run playsound minecraft:block.note_block.chime block @s ~ ~ ~ 100 1.2
execute as @a[tag=LightBottlePowUp] run give @s experience_bottle[custom_name={"bold":true,"color":"yellow","italic":false,"text":"Bottle of Light"},lore=[[{"color":"white","italic":false,"text":"Use: When this lands, "},{"bold":true,"color":"dark_gray","italic":false,"text":"blind"},{"bold":false,"color":"white","italic":false,"text":" and "},{"bold":true,"color":"gray","italic":false,"text":"slow"}," all"],{"bold":false,"color":"white","italic":false,"text":"nearby enemies."}],custom_data={PowerUp:1b,LightBottle:1b},enchantments={"minecraft:infinity":1},tooltip_display={hide_tooltip:false,hidden_components:["enchantments","unbreakable","attribute_modifiers","dyed_color","potion_contents","provides_trim_material","potion_duration_scale","enchantment_glint_override","can_break","can_place_on","banner_patterns","provides_banner_patterns"]}] 1
execute as @a[tag=LightBottlePowUp] run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"You just collected a Power Up and got:\n- ","color":"#F9CD71"},{"text":"1 Bottle of Light","bold":true,"color":"yellow"}]
execute as @a[tag=LightBottlePowUp] at @s run kill @e[type=item_display,nbt={item: {id: "minecraft:experience_bottle", components:{"minecraft:custom_data": {PowerUp: 1b, LightBottle: 1b,}}}},distance=..2,limit=1,sort=nearest]
execute as @a[tag=LightBottlePowUp] at @s run kill @e[type=text_display,tag=LightBottle,tag=PowerUp,distance=..4,limit=1,sort=nearest]
execute as @a[tag=LightBottlePowUp] run tag @s remove LightBottlePowUp