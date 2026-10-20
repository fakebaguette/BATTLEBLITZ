scoreboard objectives add legion_swipe_itemCD dummy
scoreboard players set @s legion_swipe_itemCD 12
tag @s add legion_swipe_cd
execute as @a[scores={legion_swipe_itemCD=1..}] at @s run function battle:classes/legionnaire/swipe/item_cd/cd