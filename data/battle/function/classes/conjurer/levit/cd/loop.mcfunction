scoreboard objectives add levit_itemCD dummy
scoreboard players add @s levit_itemCD 1
execute as @a[scores={levit_itemCD=1..}] at @s run function battle:classes/conjurer/levit/cd/cd