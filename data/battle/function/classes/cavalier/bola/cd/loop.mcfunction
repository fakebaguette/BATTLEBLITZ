scoreboard objectives add cava_bola_use_cd dummy
scoreboard players add @s cava_bola_use_cd 1
execute as @a[scores={cava_bola_use_cd=1..}] at @s run function battle:classes/cavalier/bola/cd/cd