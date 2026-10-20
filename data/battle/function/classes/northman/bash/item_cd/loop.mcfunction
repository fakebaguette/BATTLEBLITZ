scoreboard objectives add north_bash_cd dummy
tag @s add north_bash_cd
scoreboard players reset @s north_bash_time

scoreboard players set @s north_bash_cd 7
execute as @a[scores={north_bash_cd=1..}] at @s run function battle:classes/northman/bash/item_cd/cd