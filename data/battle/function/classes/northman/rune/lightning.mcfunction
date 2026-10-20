execute if entity @a[tag=north_has_lightning] run schedule function battle:classes/northman/rune/lightning 2t

scoreboard objectives add north_lightning_time dummy

execute as @a[tag=north_has_lightning] run scoreboard players add @s north_lightning_time 1
execute as @a[tag=north_has_lightning,gamemode=adventure] at @s run particle small_gust ~ ~ ~ 0.5 0.8 0.5 0.1 3
execute as @a[tag=north_has_lightning,gamemode=adventure] at @s run particle wax_off ~ ~ ~ 0.5 0.8 0.5 0.1 3
execute as @a[tag=north_has_lightning,gamemode=adventure] at @s run particle snowflake ~ ~ ~ 0.5 0.8 0.5 0.1 3
execute as @a[tag=north_has_lightning] at @s run effect give @s resistance 1 0 true
execute as @a[tag=north_has_lightning] at @s run effect give @s speed 1 0 true
execute as @a[tag=north_has_lightning] at @s run effect give @s haste 1 0 true
execute as @a[tag=north_has_lightning] at @s run effect give @s glowing 1 0 true 
tag @a[scores={north_lightning_time=80..}] remove north_has_lightning
scoreboard players reset @a[scores={north_lightning_time=80..}] north_lightning_time