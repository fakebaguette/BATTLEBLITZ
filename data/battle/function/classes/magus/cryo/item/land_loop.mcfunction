execute as @e[type=block_display,tag=cryo_active] at @s if entity @a[distance=..2,gamemode=adventure] run tag @s add cryo_hit
execute as @e[type=block_display,tag=cryo_active] at @s unless predicate battle:magus/novarune run tag @s add cryo_hit

execute as @e[type=block_display,tag=cryo_hit,tag=cryo_Team1] at @s as @a[tag=!Team1,distance=..3,gamemode=adventure] at @s run function battle:classes/magus/cryo/item/on_enemy
execute as @e[type=block_display,tag=cryo_hit,tag=cryo_Team2] at @s as @a[tag=!Team2,distance=..3,gamemode=adventure] at @s run function battle:classes/magus/cryo/item/on_enemy

execute as @e[type=block_display,tag=cryo_hit,tag=cryo_Team1] at @s as @a[tag=Team1,distance=..3,gamemode=adventure] at @s run function battle:classes/magus/cryo/item/on_ally
execute as @e[type=block_display,tag=cryo_hit,tag=cryo_Team2] at @s as @a[tag=Team2,distance=..3,gamemode=adventure] at @s run function battle:classes/magus/cryo/item/on_ally


execute as @e[type=block_display,tag=cryo_hit,tag=cryo_Team1] at @s as @e[type=#battle:pets,tag=!mob_Team1,distance=..4] at @s run function battle:classes/magus/cryo/item/on_enemy
execute as @e[type=block_display,tag=cryo_hit,tag=cryo_Team2] at @s as @e[type=#battle:pets,tag=!mob_Team2,distance=..4] at @s run function battle:classes/magus/cryo/item/on_enemy

execute as @e[type=block_display,tag=cryo_hit,tag=cryo_Team1] at @s as @e[type=#battle:pets,tag=mob_Team1,distance=..4] at @s run function battle:classes/magus/cryo/item/on_ally
execute as @e[type=block_display,tag=cryo_hit,tag=cryo_Team2] at @s as @e[type=#battle:pets,tag=mob_Team2,distance=..4] at @s run function battle:classes/magus/cryo/item/on_ally


execute as @e[type=block_display,tag=cryo_hit] at @s run function battle:classes/magus/cryo/display/cryo1

execute if entity @e[type=block_display,tag=cryo_active] run schedule function battle:classes/magus/cryo/item/land_loop 1t