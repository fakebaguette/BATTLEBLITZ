scoreboard objectives add curse_itemCD dummy
scoreboard players add @s curse_itemCD 1
execute as @a[scores={curse_itemCD=1..}] at @s run function battle:powerups/curse/cd/cd