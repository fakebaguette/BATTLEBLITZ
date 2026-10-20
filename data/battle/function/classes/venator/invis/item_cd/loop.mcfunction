scoreboard objectives add vena_invis_itemCD dummy

scoreboard players reset @s[scores={vena_invis_itemCD=..0}] vena_invis_itemCD
execute unless score @s vena_invis_itemCD matches 0.. run scoreboard players set @s vena_invis_itemCD 10
execute as @a[scores={vena_invis_itemCD=1..}] at @s run function battle:classes/venator/invis/item_cd/cd