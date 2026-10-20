scoreboard objectives add prosp_tnt_itemCD dummy
scoreboard players add @s prosp_tnt_itemCD 1
execute as @a[scores={prosp_tnt_itemCD=1..}] at @s run function battle:classes/prospector/supply/tnt/cd/cd