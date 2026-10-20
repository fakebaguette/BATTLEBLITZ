schedule function battle:lobby/tutorial/click 1t
scoreboard objectives add tutorial dummy

function battle:lobby/tips/click

execute as @e[type=interaction,tag=tutorialClick] at @s unless score .time tutorial matches 0.. if data entity @s attack run particle enchanted_hit ~ ~.5 ~ 0.2 0.2 0.2 0 10 normal
execute as @e[type=interaction,tag=tutorialClick] at @s unless score .time tutorial matches 0.. if data entity @s interaction run particle enchanted_hit ~ ~.5 ~ 0.2 0.2 0.2 0 10 normal
execute as @e[type=interaction,tag=tutorialClick] at @s unless score .time tutorial matches 0.. if data entity @s attack run playsound block.note_block.pling master @a[distance=..20] ~ ~ ~ 1 1.9
execute as @e[type=interaction,tag=tutorialClick] at @s unless score .time tutorial matches 0.. if data entity @s interaction run playsound block.note_block.pling master @a[distance=..20] ~ ~ ~ 1 1.9

execute as @e[type=interaction,tag=tutorialClick] unless score .time tutorial matches 0.. if data entity @s attack run function battle:lobby/tutorial/tutorial
execute as @e[type=interaction,tag=tutorialClick] unless score .time tutorial matches 0.. if data entity @s interaction run function battle:lobby/tutorial/tutorial

execute as @e[type=interaction,tag=tutorialClick] run data remove entity @s attack
execute as @e[type=interaction,tag=tutorialClick] run data remove entity @s interaction