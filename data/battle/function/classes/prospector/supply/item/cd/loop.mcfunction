scoreboard objectives add prosp_supply_itemCD dummy
scoreboard players add @s prosp_supply_itemCD 1
execute as @a[scores={prosp_supply_itemCD=1..}] at @s run function battle:classes/prospector/supply/item/cd/cd