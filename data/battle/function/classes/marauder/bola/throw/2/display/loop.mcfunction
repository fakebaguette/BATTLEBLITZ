scoreboard players add @s mara_bola_time 1

execute if entity @e[tag=mara_bola_model] run schedule function battle:classes/marauder/bola/throw/2/display/loop 1t

scoreboard players add @e[tag=mara_bola_main_model] mara_bola_time 1
execute as @e[tag=mara_bola_model] at @a if score @s mara_bola_ID = @p mara_bola_PID run tp @s ~ ~ ~ ~180 0

execute as @e[tag=mara_bola_model,scores={mara_bola_time=1}] at @s run playsound minecraft:block.big_dripleaf.break master @a ~ ~ ~ 1 1.2
execute as @e[tag=mara_bola_model,scores={mara_bola_time=1}] at @s run playsound block.wood.break master @a ~ ~ ~ 1 1.2

execute as @e[tag=mara_bola_model,scores={mara_bola_time=40..}] at @a if score @s mara_bola_ID = @p mara_bola_PID run tag @p remove mara_bola_hit
execute as @e[tag=mara_bola_model,scores={mara_bola_time=40..}] at @s run playsound minecraft:block.big_dripleaf.break master @a ~ ~ ~ 1 1.2
execute as @e[tag=mara_bola_model,scores={mara_bola_time=40..}] at @s run playsound block.wood.break master @a ~ ~ ~ 1 1.2

execute as @e[tag=mara_bola_model,scores={mara_bola_time=40..}] at @s run kill @e[tag=mara_bola_model,distance=..2]
execute as @e[tag=mara_bola_model] at @s unless entity @a[distance=..3] run kill @s