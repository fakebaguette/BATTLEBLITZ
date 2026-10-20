scoreboard objectives add vena_shock_time dummy

tag @s remove new_item
data merge entity @s {Tags:[shock_active]}

execute if entity @p[tag=Team1,distance=..1,tag=venator_class] run tag @s add shock_Team1
execute if entity @p[tag=Team2,distance=..1,tag=venator_class] run tag @s add shock_Team2

execute store result score .x velocity run data get entity @s Pos[0] 1000
execute store result score .y velocity run data get entity @s Pos[1] 1000
execute store result score .z velocity run data get entity @s Pos[2] 1000

tp @s ^ ^ ^0.1
 
execute store result score .dx velocity run data get entity @s Pos[0] 1000
execute store result score .dy velocity run data get entity @s Pos[1] 1000
execute store result score .dz velocity run data get entity @s Pos[2] 1000
 
execute store result entity @s Motion[0] double 0.01 run scoreboard players operation .dx velocity -= .x velocity
execute store result entity @s Motion[1] double 0.01 run scoreboard players operation .dy velocity -= .y velocity
execute store result entity @s Motion[2] double 0.01 run scoreboard players operation .dz velocity -= .z velocity

kill @n[type=snowball,tag=!shock_active,distance=..2]