execute as @e[type=item,tag=cava_bola_active,tag=cava_bola_T1] at @s positioned ~ ~-0.5 ~ if entity @a[tag=!Team1,distance=..1.25] run data merge entity @s {Motion:[0,-1,0]}
execute as @e[type=item,tag=cava_bola_active,tag=cava_bola_T2] at @s positioned ~ ~-0.5 ~ if entity @a[tag=!Team2,distance=..1.25] run data merge entity @s {Motion:[0,-1,0]}

execute as @e[type=item,nbt={OnGround:1b},tag=cava_bola_active,tag=cava_bola_T1] at @s positioned ~ ~.1 ~ as @a[tag=!Team1,distance=..2.5,gamemode=adventure] at @s run function battle:classes/cavalier/bola/throw/1/on_target
execute as @e[type=item,nbt={OnGround:1b},tag=cava_bola_active,tag=cava_bola_T2] at @s positioned ~ ~.1 ~ as @a[tag=!Team2,distance=..2.5,gamemode=adventure] at @s run function battle:classes/cavalier/bola/throw/1/on_target

execute as @e[type=item,nbt={OnGround:1b},tag=cava_bola_active] at @s run function battle:classes/cavalier/bola/throw/1/display/end_throw

execute as @e[tag=cava_thrown_bola_model] at @s run rotate @s ~215 ~

execute if entity @e[type=item,tag=cava_bola_item] run schedule function battle:classes/cavalier/bola/throw/1/land_loop 1t