ride @p mount @s

data merge entity @s {Item:{id:"polished_blackstone_button",count:1},Tags:["prosp_crossbow_push"]}
execute store result score .x velocity run data get entity @s Pos[0] 1000
execute store result score .y velocity run data get entity @s Pos[1] 1000
execute store result score .z velocity run data get entity @s Pos[2] 1000
 
rotate @s facing entity @p
rotate @s ~ 0
execute as @s at @s run tp @s ^ ^0.1 ^-0.1

effect give @p absorption 1 0
execute at @p run playsound minecraft:entity.breeze.deflect master @a ~ ~ ~ 1 1.3
execute at @p run playsound minecraft:entity.firework_rocket.shoot master @a ~ ~ ~ 2 0.7
particle poof ~ ~ ~ 1 1 1 0 20
particle instant_effect ~ ~ ~ 1 1 1 0 20

execute store result score .dx velocity run data get entity @s Pos[0] 1000
execute store result score .dy velocity run data get entity @s Pos[1] 1000
execute store result score .dz velocity run data get entity @s Pos[2] 1000

execute store result entity @s Motion[0] double 0.0070 run scoreboard players operation .dx velocity -= .x velocity
execute store result entity @s Motion[1] double 0.0015 run scoreboard players operation .dy velocity -= .y velocity
execute store result entity @s Motion[2] double 0.0070 run scoreboard players operation .dz velocity -= .z velocity
