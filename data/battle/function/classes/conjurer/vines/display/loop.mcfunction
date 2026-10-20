scoreboard players add @s vine_time 1

execute if entity @e[tag=vine_main_model] run schedule function battle:classes/conjurer/vines/display/loop 1t

scoreboard players add @e[tag=vine_model,scores={vine_time=1..}] vine_time 1
execute as @e[tag=vine_model] at @a if score @s vine_ID = @p vine_PID run tp @s ~ ~ ~ ~ 0

execute as @e[tag=vine_model,scores={vine_time=1}] at @s run playsound block.grass.break master @a ~ ~ ~ 1 1.2
execute as @e[tag=vine_model,scores={vine_time=1}] at @s run playsound minecraft:block.wet_grass.break master @a ~ ~ ~ 1 1.2
execute as @e[tag=vine_model,scores={vine_time=1}] at @s run playsound block.wet_grass.break master @a ~ ~ ~ 1 1.2

execute as @e[tag=vine_model,scores={vine_time=10}] at @s run playsound block.grass.break master @a ~ ~ ~ 1 1.2
execute as @e[tag=vine_model,scores={vine_time=10}] at @s run playsound minecraft:block.wet_grass.break master @a ~ ~ ~ 1 1.2
execute as @e[tag=vine_model,scores={vine_time=10}] at @s run playsound block.wet_grass.break master @a ~ ~ ~ 1 1.2

execute as @e[tag=vine_model,scores={vine_time=20}] at @s run playsound block.grass.break master @a ~ ~ ~ 1 1.2
execute as @e[tag=vine_model,scores={vine_time=20}] at @s run playsound minecraft:block.wet_grass.break master @a ~ ~ ~ 1 1.2
execute as @e[tag=vine_model,scores={vine_time=20}] at @s run playsound block.wet_grass.break master @a ~ ~ ~ 1 1.2

execute as @e[tag=vine_model,scores={vine_time=80..}] at @s run kill @e[tag=vine_model,distance=..2]
execute as @e[tag=vine_model] at @s unless entity @a[distance=..3] run kill @s