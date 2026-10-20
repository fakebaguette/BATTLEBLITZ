scoreboard objectives add banner_itemCD dummy
scoreboard players add @s banner_itemCD 1
execute as @a[scores={banner_itemCD=1..}] at @s run function battle:classes/cavalier/banner/cd/cd