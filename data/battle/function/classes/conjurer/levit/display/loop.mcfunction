scoreboard objectives add levit_time dummy

scoreboard players add @s levit_time 1
tag @s add levit_model
execute if entity @n[tag=levit_Team1] run tag @s add levit_Team1
execute if entity @n[tag=levit_Team2] run tag @s add levit_Team2
execute if entity @n[type=item,tag=conj_up] run tag @s add conj_up

execute if entity @e[tag=levit_model] run schedule function battle:classes/conjurer/levit/display/loop 1t

scoreboard players add @e[tag=levit_model,scores={levit_time=1..}] levit_time 1

execute as @e[tag=levit_model,tag=!conj_up] at @s run particle minecraft:gust ~ ~2 ~ 1 5 1 10 1 normal @a
execute as @e[tag=levit_model,tag=!conj_up] at @s run particle minecraft:sonic_boom ~ ~2 ~ 1 5 1 10 1 normal @a
execute as @e[tag=levit_model,tag=!conj_up] at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.1 0.1 0.1 0.05 1 normal @a

execute as @e[tag=levit_model,tag=conj_up] at @s run particle minecraft:gust ~ ~2 ~ 2 5 2 10 1 normal @a
execute as @e[tag=levit_model,tag=conj_up] at @s run particle minecraft:sonic_boom ~ ~2 ~ 2 5 2 10 1 normal @a
execute as @e[tag=levit_model,tag=conj_up] at @s run particle minecraft:campfire_cosy_smoke ~ ~ ~ 0.1 0.1 0.1 0.05 1 normal @a

execute as @a[tag=levit_hit] at @s run tp @s ~ ~0.075 ~
execute as @a[tag=levit_hit] at @s run tp @s @s

execute as @e[tag=levit_model,tag=!conj_up,tag=levit_Team1,scores={levit_time=25..}] run tag @a[tag=levit_hit,tag=!Team1] remove levit_hit
execute as @e[tag=levit_model,tag=!conj_up,tag=levit_Team2,scores={levit_time=25..}] run tag @a[tag=levit_hit,tag=!Team2] remove levit_hit
kill @e[tag=levit_model,tag=!conj_up,scores={levit_time=25..}]

execute as @e[tag=levit_model,tag=conj_up,tag=levit_Team1,scores={levit_time=50..}] run tag @a[tag=levit_hit,tag=!Team1] remove levit_hit
execute as @e[tag=levit_model,tag=conj_up,tag=levit_Team2,scores={levit_time=50..}] run tag @a[tag=levit_hit,tag=!Team2] remove levit_hit
kill @e[tag=levit_model,tag=conj_up,scores={levit_time=50..}]