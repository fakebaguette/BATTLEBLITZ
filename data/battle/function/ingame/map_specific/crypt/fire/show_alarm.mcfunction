title @a[tag=Participant] actionbar ["",{"text":"Wall of Fire","bold":true,"color":"#ffb868"},{"text":" starting "},{"text":"NOW! \u2620","color":"dark_red"}]

execute as @e[tag=5x5center,tag=map7,type=interaction] at @s run summon interaction ~ ~ ~ {Rotation:[90F,0F],width:0.1f,height:0.1f,Tags:["wof_rotate","wof_2"]}
execute as @e[tag=5x5center,tag=map7,type=interaction] at @s run summon interaction ~ ~ ~ {Rotation:[180F,0F],width:0.1f,height:0.1f,Tags:["wof_rotate","wof_3"]}
execute as @e[tag=5x5center,tag=map7,type=interaction] at @s run summon interaction ~ ~ ~ {Rotation:[270F,0F],width:0.1f,height:0.1f,Tags:["wof_rotate","wof_4"]}

execute as @e[tag=5x5center,tag=map7,type=interaction] at @s positioned ~ ~20 ~ run playsound item.firecharge.use master @a ~ ~ ~ 5 0.6
execute as @e[tag=5x5center,tag=map7,type=interaction] at @s positioned ~ ~20 ~ run playsound minecraft:ambient.nether_wastes.mood master @a ~ ~ ~ 5 1
execute as @e[tag=5x5center,tag=map7,type=interaction] at @s positioned ~ ~20 ~ run playsound minecraft:ambient.crimson_forest.mood master @a ~ ~ ~ 5 1
execute as @e[tag=5x5center,tag=map7,type=interaction] at @s positioned ~ ~20 ~ run playsound block.note_block.bass master @a ~ ~ ~ 5 0.6


scoreboard players set .fire_wall special_events 1
scoreboard players set .fire_wall_size special_events 50
function battle:ingame/map_specific/crypt/fire/loops/tick
function battle:ingame/map_specific/crypt/fire/loops/slow_loop
function battle:ingame/map_specific/crypt/fire/loops/damage_loop