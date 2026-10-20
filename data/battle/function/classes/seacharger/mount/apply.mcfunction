execute store result score .x velocity run data get entity @s Pos[0] 1000
execute store result score .y velocity run data get entity @s Pos[1] 1000
execute store result score .z velocity run data get entity @s Pos[2] 1000

tp @s ^ ^0.1 ^0.1
playsound entity.breeze.jump master @a ~ ~ ~ 0.6 2
playsound entity.breeze.slide master @a ~ ~ ~ 0.6 2
playsound entity.breeze.charge master @a ~ ~ ~ 2 1.7
playsound entity.nautilus.riding master @a ~ ~ ~ 1 1.2

particle minecraft:gust_emitter_small ~ ~-0.5 ~ 2 2 2 0.15 10 normal
particle minecraft:sculk_charge_pop ~ ~-0.5 ~ 1 1 1 0.2 50 normal

execute store result score .dx velocity run data get entity @s Pos[0] 1000
execute store result score .dy velocity run data get entity @s Pos[1] 1000
execute store result score .dz velocity run data get entity @s Pos[2] 1000
 
execute store result entity @s Motion[0] double 0.005 run scoreboard players operation .dx velocity -= .x velocity
execute store result entity @s Motion[1] double 0.001 run scoreboard players operation .dy velocity -= .y velocity
execute store result entity @s Motion[2] double 0.005 run scoreboard players operation .dz velocity -= .z velocity