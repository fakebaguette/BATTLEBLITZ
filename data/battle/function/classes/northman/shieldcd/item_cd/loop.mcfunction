scoreboard objectives add north_shield_cd dummy

scoreboard players set @s north_shield_dura 0
scoreboard players set @s north_shield_cd 7
execute as @a[scores={north_shield_cd=1..}] at @s run function battle:classes/northman/shieldcd/item_cd/cd