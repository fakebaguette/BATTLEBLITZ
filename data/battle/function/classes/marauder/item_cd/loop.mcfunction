scoreboard objectives add mara_horn_cd dummy

scoreboard players set @s mara_horn_cd 10
execute as @a[scores={mara_horn_cd=1..}] at @s run function battle:classes/marauder/item_cd/cd