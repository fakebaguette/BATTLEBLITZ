scoreboard objectives add legion_shield_cd dummy

scoreboard players set @s legion_shield_dura 0
scoreboard players set @s legion_shield_cd 7
execute as @a[scores={legion_shield_cd=1..}] at @s run function battle:classes/legionnaire/shieldcd/item_cd/cd