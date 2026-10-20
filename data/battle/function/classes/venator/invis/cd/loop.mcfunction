scoreboard objectives add vena_invis_cd dummy
scoreboard players add @s vena_invis_cd 1
execute as @a[scores={vena_invis_cd=1..}] at @s run function battle:classes/venator/invis/cd/cd