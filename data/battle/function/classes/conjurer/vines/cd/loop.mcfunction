scoreboard objectives add vines_itemCD dummy
scoreboard players add @s vines_itemCD 1
execute as @a[scores={vines_itemCD=1..}] at @s run function battle:classes/conjurer/vines/cd/cd