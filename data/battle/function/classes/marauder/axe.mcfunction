scoreboard objectives add mara_axe_dealt minecraft.custom:damage_dealt
scoreboard objectives add mara_axe_taken minecraft.custom:damage_taken

execute if entity @s[gamemode=adventure] at @s run particle minecraft:crimson_spore ~ ~0.5 ~ 0.1 0.1 0.1 1 2 normal @a

execute if entity @s[nbt={SelectedItem:{components:{"minecraft:custom_data":{NoDrop:1b,MaraShAxe:1b}}}}] run scoreboard players reset @a[distance=5..] mara_axe_taken

execute at @s[tag=Team1,scores={mara_next_axe=1..,mara_axe_dealt=1..}] as @a[scores={mara_axe_taken=1..},distance=..5,tag=!Team1] at @s run effect give @s slowness 2 2
execute at @s[tag=Team1,scores={mara_next_axe=1..,mara_axe_dealt=1..}] as @a[scores={mara_axe_taken=1..},distance=..5,tag=!Team1] at @s run particle minecraft:raid_omen ~ ~0.5 ~ 0.5 0.8 0.5 0 10
execute at @s[tag=Team1,scores={mara_next_axe=1..,mara_axe_dealt=1..}] as @a[scores={mara_axe_taken=1..},distance=..5,tag=!Team1] at @s run playsound minecraft:block.trial_spawner.ominous_activate master @a ~ ~ ~ 1 1.6

execute at @s[tag=Team2,scores={mara_next_axe=1..,mara_axe_dealt=1..}] as @a[scores={mara_axe_taken=1..},distance=..5,tag=!Team2] at @s run effect give @s slowness 2 2
execute at @s[tag=Team2,scores={mara_next_axe=1..,mara_axe_dealt=1..}] as @a[scores={mara_axe_taken=1..},distance=..5,tag=!Team2] at @s run particle minecraft:raid_omen ~ ~0.5 ~ 0.5 0.8 0.5 0 10
execute at @s[tag=Team2,scores={mara_next_axe=1..,mara_axe_dealt=1..}] as @a[scores={mara_axe_taken=1..},distance=..5,tag=!Team2] at @s run playsound minecraft:block.trial_spawner.ominous_activate master @a ~ ~ ~ 1 1.6
scoreboard players reset @a mara_axe_dealt
scoreboard players reset @a mara_axe_taken

execute as @s[scores={mara_next_axe=1..}] at @s run function battle:classes/marauder/end