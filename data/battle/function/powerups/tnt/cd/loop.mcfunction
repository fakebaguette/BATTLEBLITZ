scoreboard objectives add tnt_itemCD dummy
scoreboard players add @s tnt_itemCD 1
execute as @a[scores={tnt_itemCD=1..}] at @s run function battle:powerups/tnt/cd/cd