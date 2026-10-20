execute if entity @a[gamemode=adventure,tag=magus_class,nbt={Inventory:[{id:"minecraft:diamond_sword",components:{"minecraft:custom_data":{NoDrop:1b,Charged:1b}}}]}] run schedule function battle:classes/magus/anelace/run 1t

execute at @a[gamemode=adventure,tag=magus_class,nbt={Inventory:[{id:"minecraft:diamond_sword",components:{"minecraft:custom_data":{NoDrop:1b,Charged:1b}}}]}] run particle minecraft:flame ~ ~1 ~ 0.1 0.1 0.1 0.07 1 normal @a
execute at @a[gamemode=adventure,tag=magus_class,nbt={Inventory:[{id:"minecraft:diamond_sword",components:{"minecraft:custom_data":{NoDrop:1b,Charged:1b}}}]}] run particle minecraft:smoke ~ ~1 ~ 0.1 0.1 0.1 0.07 1 normal @a

execute as @a[tag=magus_class,scores={use_charged_attack=1..}] at @s run function battle:classes/magus/anelace/chargedoccur