execute as @e[type=item,tag=mara_bola_active,tag=mara_bola_T1] at @s positioned ~ ~-0.5 ~ if entity @a[tag=!Team1,distance=..1.25] run data merge entity @s {Motion:[0,-1,0]}
execute as @e[type=item,tag=mara_bola_active,tag=mara_bola_T2] at @s positioned ~ ~-0.5 ~ if entity @a[tag=!Team2,distance=..1.25] run data merge entity @s {Motion:[0,-1,0]}

execute as @e[type=item,nbt={OnGround:1b},tag=mara_bola_active,tag=mara_bola_T1] at @s positioned ~ ~.1 ~ as @a[tag=!Team1,distance=..2.5,gamemode=adventure] at @s run function battle:classes/marauder/bola/throw/2/on_target
execute as @e[type=item,nbt={OnGround:1b},tag=mara_bola_active,tag=mara_bola_T2] at @s positioned ~ ~.1 ~ as @a[tag=!Team2,distance=..2.5,gamemode=adventure] at @s run function battle:classes/marauder/bola/throw/2/on_target

execute as @e[type=item,nbt={OnGround:1b},tag=mara_bola_active] at @s run function battle:classes/marauder/bola/throw/2/display/end_throw

execute as @e[tag=mara_thrown_bola_model] at @s run rotate @s ~235 ~

execute if entity @e[type=item,tag=mara_bola_item] run schedule function battle:classes/marauder/bola/throw/2/land_loop 1t