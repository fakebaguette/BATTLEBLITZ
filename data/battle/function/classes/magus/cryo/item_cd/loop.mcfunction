scoreboard objectives add magus_use_cd dummy
scoreboard players set @s magus_use_cd 12
execute as @a[scores={magus_use_cd=1..}] at @s run function battle:classes/magus/cryo/item_cd/cd