scoreboard objectives add mara_bola_use_cd dummy
scoreboard players add @s mara_bola_use_cd 1
execute as @a[scores={mara_bola_use_cd=1..}] at @s run function battle:classes/marauder/bola/cd/cd