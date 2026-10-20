scoreboard objectives add vena_shock_cd dummy
scoreboard players add @s vena_shock_cd 1
execute as @a[scores={vena_shock_cd=1..}] at @s run function battle:classes/venator/shock/cd/cd