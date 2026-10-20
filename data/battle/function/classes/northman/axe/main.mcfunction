schedule function battle:classes/northman/axe/main 2t

scoreboard objectives add north_axe_dealt minecraft.custom:damage_dealt
scoreboard objectives add north_axe_taken minecraft.custom:damage_taken

execute as @a at @s unless entity @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{NorthAxe:1b}}}},distance=..5] run scoreboard players reset @s north_axe_taken
execute at @a[tag=north_has_lightning,nbt={SelectedItem:{components:{"minecraft:custom_data":{NorthAxe:1b}}}},scores={north_axe_dealt=50..},tag=Team1] as @a[scores={north_axe_taken=50..},distance=..7,tag=!Team1] at @s run summon lightning_bolt ~ ~-2 ~
execute at @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{NorthAxe:1b}}}},scores={north_axe_dealt=35..},tag=Team1] as @a[scores={north_axe_taken=35..},distance=..7,tag=!Team1] at @s run function battle:classes/northman/axe/occur

execute at @a[tag=north_has_lightning,nbt={SelectedItem:{components:{"minecraft:custom_data":{NorthAxe:1b}}}},scores={north_axe_dealt=50..},tag=Team2] as @a[scores={north_axe_taken=50..},distance=..7,tag=!Team2] at @s run summon lightning_bolt ~ ~-2 ~
execute at @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{NorthAxe:1b}}}},scores={north_axe_dealt=35..},tag=Team2] as @a[scores={north_axe_taken=35..},distance=..7,tag=!Team2] at @s run function battle:classes/northman/axe/occur

execute as @a[tag=north_has_lightning,nbt={SelectedItem:{components:{"minecraft:custom_data":{NorthAxe:1b}}}},scores={north_axe_dealt=50..}] run effect give @s absorption 1 0 true

scoreboard players reset @a north_axe_dealt
scoreboard players reset @a north_axe_taken