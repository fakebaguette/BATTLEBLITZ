execute as @e[type=arrow,tag=shock_active] run scoreboard players add @s vena_shock_time 1

execute as @e[type=arrow,tag=shock_active,tag=shock_Team1] at @s as @a[tag=!Team1,distance=..2.9,gamemode=adventure,tag=!vena_shock_hit] at @s run function battle:classes/venator/shock/item/on_target1
execute as @e[type=arrow,tag=shock_active,tag=shock_Team2] at @s as @a[tag=!Team2,distance=..2.9,gamemode=adventure,tag=!vena_shock_hit] at @s run function battle:classes/venator/shock/item/on_target2

execute as @e[type=block_display,tag=vena_main_model] at @s run function battle:classes/venator/shock/display/square

execute as @e[type=arrow,tag=shock_active,nbt={inGround:1b},tag=shock_Team1] run tag @a[tag=!Team1] remove vena_shock_hit
execute as @e[type=arrow,tag=shock_active,nbt={inGround:1b},tag=shock_Team2] run tag @a[tag=!Team2] remove vena_shock_hit
execute as @e[type=arrow,tag=shock_active,nbt={inGround:1b}] run kill @s

execute as @e[type=arrow,tag=shock_active,scores={vena_shock_time=10..},tag=shock_Team1] run tag @a[tag=!Team1] remove vena_shock_hit
execute as @e[type=arrow,tag=shock_active,scores={vena_shock_time=10..},tag=shock_Team2] run tag @a[tag=!Team2] remove vena_shock_hit
execute as @e[type=arrow,tag=shock_active,scores={vena_shock_time=10..}] run kill @s

execute if entity @e[type=arrow,tag=shock_active] run schedule function battle:classes/venator/shock/item/land_loop 1t