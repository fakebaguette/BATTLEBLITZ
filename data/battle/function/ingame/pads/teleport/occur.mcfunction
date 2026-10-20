execute if score @s teleportPadTime matches 0..1 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 0.8
effect give @s[scores={teleportPadTime=0..5}] minecraft:levitation 1 0 true

scoreboard players add @s teleportPadTime 1
particle end_rod ~ ~0.5 ~ 0.5 0.8 0.5 0 4 normal

tp @s[scores={teleportPadTime=10..},tag=teleportingX] @e[type=text_display,tag=teleportPad,tag=teleportXExit,limit=1]
tp @s[scores={teleportPadTime=10..},tag=teleportingY] @e[type=text_display,tag=teleportPad,tag=teleportYExit,limit=1]

tp @s[scores={teleportPadTime=10..},tag=teleportingA] @e[type=text_display,tag=teleportPad,tag=teleportAExit,limit=1]
tp @s[scores={teleportPadTime=10..},tag=teleportingB] @e[type=text_display,tag=teleportPad,tag=teleportBExit,limit=1]
execute at @s[scores={teleportPadTime=10..},tag=teleportingX] run particle trial_spawner_detection_ominous ~ ~.2 ~ .5 1.5 .5 0 100 normal @a
execute at @s[scores={teleportPadTime=10..},tag=teleportingY] run particle trial_spawner_detection ~ ~.2 ~ .5 1.5 .5 0 100 normal @a

execute at @s[scores={teleportPadTime=10..},tag=teleportingA] run particle trial_spawner_detection_ominous ~ ~.2 ~ .5 1.5 .5 0 100 normal @a
execute at @s[scores={teleportPadTime=10..},tag=teleportingB] run particle trial_spawner_detection ~ ~.2 ~ .5 1.5 .5 0 100 normal @a
execute at @s[scores={teleportPadTime=10..},tag=teleportingB] run effect give @s levitation 3 0

execute at @s[scores={teleportPadTime=10..}] run effect give @s resistance 5 0
execute at @s[scores={teleportPadTime=10..}] run effect give @s speed 4 0
execute at @s[scores={teleportPadTime=10..}] run playsound minecraft:entity.fox.teleport master @a ~ ~ ~ 2 0.8
execute at @s[scores={teleportPadTime=10..}] run particle end_rod ~ ~0.5 ~ 0.5 0.8 0.5 0 50 normal

tag @s[scores={teleportPadTime=10..}] remove teleportingX 
tag @s[scores={teleportPadTime=10..}] remove teleportingY
scoreboard players reset @s[scores={teleportPadTime=10..}] teleportPadTime