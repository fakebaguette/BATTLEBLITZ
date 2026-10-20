scoreboard players add @s cava_bola_time 1

execute if entity @e[tag=cava_bola_model] run schedule function battle:classes/cavalier/bola/throw/1/display/loop 1t

scoreboard players add @e[tag=cava_bola_main_model] cava_bola_time 1
execute as @e[tag=cava_bola_model] at @a if score @s cava_bola_ID = @p cava_bola_PID run tp @s ~ ~ ~ ~180 0

execute as @e[tag=cava_bola_model,scores={cava_bola_time=1}] at @s run playsound minecraft:block.wet_grass.break master @a ~ ~ ~ 1 1.2
execute as @e[tag=cava_bola_model,scores={cava_bola_time=1}] at @s run playsound block.wood.break master @a ~ ~ ~ 1 1.2

execute as @e[tag=cava_bola_model,scores={cava_bola_time=10}] at @s run playsound minecraft:block.wet_grass.break master @a ~ ~ ~ 1 1.2
execute as @e[tag=cava_bola_model,scores={cava_bola_time=10}] at @s run playsound block.wood.break master @a ~ ~ ~ 1 1.2

execute as @e[tag=cava_bola_model,scores={cava_bola_time=20}] at @s run playsound minecraft:block.wet_grass.break master @a ~ ~ ~ 1 1.2
execute as @e[tag=cava_bola_model,scores={cava_bola_time=20}] at @s run playsound block.wood.break master @a ~ ~ ~ 1 1.2

execute as @e[tag=cava_bola_model,scores={cava_bola_time=80..}] at @a if score @s cava_bola_ID = @p cava_bola_PID run attribute @p gravity base set 0.08
execute as @e[tag=cava_bola_model,scores={cava_bola_time=80..}] at @s run playsound minecraft:block.wet_grass.break master @a ~ ~ ~ 1 1.2
execute as @e[tag=cava_bola_model,scores={cava_bola_time=80..}] at @s run playsound block.wood.break master @a ~ ~ ~ 1 1.2
execute as @e[tag=cava_bola_model,scores={cava_bola_time=80..}] at @s run kill @e[tag=cava_bola_model,distance=..2]
execute as @e[tag=cava_bola_model] at @s unless entity @a[distance=..3] run kill @s