execute as @e[type=item,nbt={OnGround:1b},tag=prosp_tnt_active] at @s run function battle:classes/prospector/supply/tnt_throw/display/end_throw

execute as @e[tag=prospTNT_model_main] at @s run rotate @s ~215 ~

execute if entity @e[type=item,tag=prosp_tnt_item] run schedule function battle:classes/prospector/supply/tnt_throw/land_loop 1t