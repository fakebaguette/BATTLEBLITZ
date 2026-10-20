scoreboard objectives add shroom_itemCD dummy
scoreboard players add @s shroom_itemCD 1
execute as @a[scores={shroom_itemCD=1..}] at @s run function battle:powerups/shroom/cd/cd