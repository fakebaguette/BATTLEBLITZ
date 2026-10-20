scoreboard objectives add puffer_itemCD dummy
scoreboard players add @s puffer_itemCD 1
execute as @a[scores={puffer_itemCD=1..}] at @s run function battle:powerups/puffer/cd/cd