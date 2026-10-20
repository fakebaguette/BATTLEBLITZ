schedule function battle:ingame/map_specific/crypt/fire/loops/tick 1t

scoreboard players add .fire_wall special_events 1
execute as @e[tag=5x5center,tag=map7,type=interaction] at @s run rotate @s ~5 ~
execute as @e[tag=5x5center,tag=map7,type=interaction] at @s run function battle:ingame/map_specific/crypt/fire/call_fire_effect with storage special_events

execute as @e[tag=wof_rotate,type=interaction] at @s run rotate @s ~5 ~
execute as @e[tag=wof_rotate,type=interaction] at @s run function battle:ingame/map_specific/crypt/fire/call_fire_effect with storage special_events
