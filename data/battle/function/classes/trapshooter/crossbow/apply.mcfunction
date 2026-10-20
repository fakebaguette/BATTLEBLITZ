
execute store result score .x velocity run data get entity @s Pos[0] 1000
execute store result score .y velocity run data get entity @s Pos[1] 1000
execute store result score .z velocity run data get entity @s Pos[2] 1000

tp @s ^ ^0.1 ^0.1
 
execute store result score .dx velocity run data get entity @s Pos[0] 1000
execute store result score .dy velocity run data get entity @s Pos[1] 1000
execute store result score .dz velocity run data get entity @s Pos[2] 1000
 
execute store result entity @s Motion[0] double 0.001 run scoreboard players operation .dx velocity -= .x velocity
execute store result entity @s Motion[1] double 0.00125 run scoreboard players operation .dy velocity -= .y velocity
execute store result entity @s Motion[2] double 0.001 run scoreboard players operation .dz velocity -= .z velocity