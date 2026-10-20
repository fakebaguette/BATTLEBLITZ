scoreboard objectives add life_itemCD dummy
scoreboard players add @s life_itemCD 1
execute as @a[scores={life_itemCD=1..}] at @s run function battle:classes/conjurer/life/cd/cd