scoreboard objectives add seach_shield_cd dummy

scoreboard players set @s seach_shield_dura 0
scoreboard players set @s[tag=!seach_threw_shield] seach_shield_cd 10

scoreboard players set @s[tag=seach_threw_shield] seach_shield_cd 15
tag @s remove seach_threw_shield
execute as @a[scores={seach_shield_cd=1..}] at @s run function battle:classes/seacharger/shieldcd/item_cd/cd