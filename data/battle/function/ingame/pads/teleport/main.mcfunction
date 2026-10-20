schedule function battle:ingame/pads/teleport/main 5t

scoreboard objectives add teleportPadTime dummy



execute at @e[type=text_display,tag=teleportPad,tag=teleportX] run particle trial_spawner_detection_ominous ~ ~-1 ~ .5 1.5 .5 0 10 normal @a
execute at @e[type=text_display,tag=teleportPad,tag=teleportY] run particle trial_spawner_detection ~ ~-1 ~ .5 2 .5 0 10 normal @a

execute at @e[type=text_display,tag=teleportPad,tag=teleportXExit] run particle trial_spawner_detection_ominous ~ ~-1 ~ .5 1.5 .5 0 5 normal @a
execute at @e[type=text_display,tag=teleportPad,tag=teleportYExit] run particle trial_spawner_detection ~ ~-1 ~ .5 2 .5 0 5 normal @a

execute at @e[type=text_display,tag=teleportPad,tag=teleportX] run tag @a[distance=..3] add teleportingX
execute at @e[type=text_display,tag=teleportPad,tag=teleportY] run tag @a[distance=..3] add teleportingY

execute at @e[type=text_display,tag=teleportPad,tag=teleportX] run effect clear @a[distance=3..,tag=teleportingX,scores={teleportPadTime=0..}] levitation
execute at @e[type=text_display,tag=teleportPad,tag=teleportX] run scoreboard players reset @a[distance=3..,tag=teleportingX] teleportPadTime 
execute at @e[type=text_display,tag=teleportPad,tag=teleportX] run tag @a[distance=3..] remove teleportingX

execute at @e[type=text_display,tag=teleportPad,tag=teleportY] run effect clear @a[distance=3..,tag=teleportingY,scores={teleportPadTime=0..}] levitation
execute at @e[type=text_display,tag=teleportPad,tag=teleportY] run scoreboard players reset @a[distance=3..,tag=teleportingY] teleportPadTime 
execute at @e[type=text_display,tag=teleportPad,tag=teleportY] run tag @a[distance=3..] remove teleportingY

execute at @e[type=text_display,tag=teleportPad,tag=teleportX] run scoreboard players add @a[tag=teleportingX,distance=..3] teleportPadTime 0
execute at @e[type=text_display,tag=teleportPad,tag=teleportY] run scoreboard players add @a[tag=teleportingY,distance=..3] teleportPadTime 0

execute at @e[type=text_display,tag=teleportPad,tag=teleportX] run tag @a[distance=..3] add teleportingX
execute at @e[type=text_display,tag=teleportPad,tag=teleportY] run tag @a[distance=..3] add teleportingY

execute at @e[type=text_display,tag=teleportPad,tag=teleportX] run scoreboard players reset @a[distance=3..,tag=teleportingX] teleportPadTime 
execute at @e[type=text_display,tag=teleportPad,tag=teleportX] run tag @a[distance=3..] remove teleportingX
execute at @e[type=text_display,tag=teleportPad,tag=teleportY] run scoreboard players reset @a[distance=3..,tag=teleportingY] teleportPadTime 
execute at @e[type=text_display,tag=teleportPad,tag=teleportY] run tag @a[distance=3..] remove teleportingY

execute at @e[type=text_display,tag=teleportPad,tag=teleportX] run scoreboard players add @a[tag=teleportingX,distance=..3] teleportPadTime 0
execute at @e[type=text_display,tag=teleportPad,tag=teleportY] run scoreboard players add @a[tag=teleportingY,distance=..3] teleportPadTime 0



execute at @e[type=text_display,tag=teleportPad,tag=teleportA] run particle trial_spawner_detection_ominous ~ ~-1 ~ .5 1.5 .5 0 10 normal @a
execute at @e[type=text_display,tag=teleportPad,tag=teleportB] run particle trial_spawner_detection ~ ~-1 ~ .5 2 .5 0 10 normal @a

execute at @e[type=text_display,tag=teleportPad,tag=teleportAExit] run particle trial_spawner_detection_ominous ~ ~-1 ~ .5 1.5 .5 0 5 normal @a
execute at @e[type=text_display,tag=teleportPad,tag=teleportBExit] run particle trial_spawner_detection ~ ~-1 ~ .5 2 .5 0 5 normal @a

execute at @e[type=text_display,tag=teleportPad,tag=teleportA] run tag @a[distance=..3] add teleportingA
execute at @e[type=text_display,tag=teleportPad,tag=teleportB] run tag @a[distance=..3] add teleportingB

execute at @e[type=text_display,tag=teleportPad,tag=teleportA] run effect clear @a[distance=3..,tag=teleportingA,scores={teleportPadTime=0..}] levitation
execute at @e[type=text_display,tag=teleportPad,tag=teleportA] run scoreboard players reset @a[distance=3..,tag=teleportingA] teleportPadTime 
execute at @e[type=text_display,tag=teleportPad,tag=teleportA] run tag @a[distance=3..] remove teleportingA

execute at @e[type=text_display,tag=teleportPad,tag=teleportB] run effect clear @a[distance=3..,tag=teleportingB,scores={teleportPadTime=0..}] levitation
execute at @e[type=text_display,tag=teleportPad,tag=teleportB] run scoreboard players reset @a[distance=3..,tag=teleportingB] teleportPadTime 
execute at @e[type=text_display,tag=teleportPad,tag=teleportB] run tag @a[distance=3..] remove teleportingB

execute at @e[type=text_display,tag=teleportPad,tag=teleportA] run scoreboard players add @a[tag=teleportingA,distance=..3] teleportPadTime 0
execute at @e[type=text_display,tag=teleportPad,tag=teleportB] run scoreboard players add @a[tag=teleportingB,distance=..3] teleportPadTime 0

execute at @e[type=text_display,tag=teleportPad,tag=teleportA] run tag @a[distance=..3] add teleportingA
execute at @e[type=text_display,tag=teleportPad,tag=teleportB] run tag @a[distance=..3] add teleportingB

execute at @e[type=text_display,tag=teleportPad,tag=teleportA] run scoreboard players reset @a[distance=3..,tag=teleportingA] teleportPadTime 
execute at @e[type=text_display,tag=teleportPad,tag=teleportA] run tag @a[distance=3..] remove teleportingA
execute at @e[type=text_display,tag=teleportPad,tag=teleportB] run scoreboard players reset @a[distance=3..,tag=teleportingB] teleportPadTime 
execute at @e[type=text_display,tag=teleportPad,tag=teleportB] run tag @a[distance=3..] remove teleportingB

execute at @e[type=text_display,tag=teleportPad,tag=teleportA] run scoreboard players add @a[tag=teleportingA,distance=..3] teleportPadTime 0
execute at @e[type=text_display,tag=teleportPad,tag=teleportB] run scoreboard players add @a[tag=teleportingB,distance=..3] teleportPadTime 0


execute as @a[scores={teleportPadTime=0..}] at @s run function battle:ingame/pads/teleport/occur