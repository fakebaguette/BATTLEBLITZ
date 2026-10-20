scoreboard players add @s life_time 1

execute if entity @e[tag=life_model] run schedule function battle:classes/conjurer/life/display/loop 1t

scoreboard players add @e[tag=life_main_model] life_time 1
execute as @e[tag=life_model] at @a if score @s life_ID = @p life_PID run tp @s ~ ~ ~ ~180 0

execute as @e[tag=life_model,scores={life_time=1}] at @s run playsound entity.experience_orb.pickup master @a ~ ~ ~ 0.5 1.2
execute as @e[tag=life_model,scores={life_time=1}] at @s run playsound minecraft:block.wet_grass.break master @a ~ ~ ~ 1 1.2
execute as @e[tag=life_model,scores={life_time=1}] at @s run playsound block.wet_grass.break master @a ~ ~ ~ 1 1.2

execute as @e[tag=life_model,scores={life_time=10}] at @s run playsound entity.experience_orb.pickup master @a ~ ~ ~ 0.5 1.2
execute as @e[tag=life_model,scores={life_time=10}] at @s run playsound minecraft:block.wet_grass.break master @a ~ ~ ~ 1 1.2
execute as @e[tag=life_model,scores={life_time=10}] at @s run playsound block.wet_grass.break master @a ~ ~ ~ 1 1.2

execute as @e[tag=life_model,scores={life_time=20}] at @s run playsound entity.experience_orb.pickup master @a ~ ~ ~ 0.5 1.2
execute as @e[tag=life_model,scores={life_time=20}] at @s run playsound minecraft:block.wet_grass.break master @a ~ ~ ~ 1 1.2
execute as @e[tag=life_model,scores={life_time=20}] at @s run playsound block.wet_grass.break master @a ~ ~ ~ 1 1.2

execute as @e[tag=life_model,scores={life_time=80..}] at @s run kill @e[tag=life_model,distance=..2]
execute as @e[tag=life_model] at @s unless entity @a[distance=..3] run kill @s