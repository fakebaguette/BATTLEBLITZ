data merge entity @s {Item:{id:"polished_blackstone_button",count:1},Tags:["light_rune_mob"]}
execute store result score .x velocity run data get entity @s Pos[0] 1000
execute store result score .y velocity run data get entity @s Pos[1] 1000
execute store result score .z velocity run data get entity @s Pos[2] 1000

tp @s ~ ~0.1 ~
playsound minecraft:entity.bat.takeoff master @a ~ ~ ~ 0.6 2
playsound entity.chicken.egg master @a ~ ~ ~ 2 1.7
 
execute store result score .dx velocity run data get entity @s Pos[0] 1000
execute store result score .dy velocity run data get entity @s Pos[1] 1000
execute store result score .dz velocity run data get entity @s Pos[2] 1000
 
execute store result entity @s Motion[0] double 0.0000 run scoreboard players operation .dx velocity -= .x velocity
execute store result entity @s Motion[1] double 0.0070 run scoreboard players operation .dy velocity -= .y velocity
execute store result entity @s Motion[2] double 0.0000 run scoreboard players operation .dz velocity -= .z velocity