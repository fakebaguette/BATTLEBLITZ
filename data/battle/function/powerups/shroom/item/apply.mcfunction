tag @s remove new_item
tag @s add temp_delay_item
data merge entity @s {PickupDelay:32767, OnGround:0b}
tag @s add shroom_active


execute store result score .x velocity run data get entity @s Pos[0] 1000
execute store result score .y velocity run data get entity @s Pos[1] 1000
execute store result score .z velocity run data get entity @s Pos[2] 1000

tp @s ^ ^0.05 ^0.1
 
execute store result score .dx velocity run data get entity @s Pos[0] 1000
execute store result score .dy velocity run data get entity @s Pos[1] 1000
execute store result score .dz velocity run data get entity @s Pos[2] 1000
 
execute store result entity @s Motion[0] double 0.0035 run scoreboard players operation .dx velocity -= .x velocity
execute store result entity @s Motion[1] double 0.0035 run scoreboard players operation .dy velocity -= .y velocity
execute store result entity @s Motion[2] double 0.0035 run scoreboard players operation .dz velocity -= .z velocity