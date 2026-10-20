execute as @e[type=item,tag=shield_active,tag=shield_T1] at @s positioned ~ ~-0.5 ~ if entity @a[tag=!Team1,distance=..1.5] run data merge entity @s {Motion:[0,-1,0]}
execute as @e[type=item,tag=shield_active,tag=shield_T2] at @s positioned ~ ~-0.5 ~ if entity @a[tag=!Team2,distance=..1.5] run data merge entity @s {Motion:[0,-1,0]}

execute as @e[type=item,nbt={OnGround:1b},tag=shield_active,tag=shield_T1] at @s positioned ~ ~.1 ~ as @a[tag=!Team1,distance=..2.5,gamemode=adventure] at @s run function battle:classes/seacharger/shield_throw/on_target
execute as @e[type=item,nbt={OnGround:1b},tag=shield_active,tag=shield_T2] at @s positioned ~ ~.1 ~ as @a[tag=!Team2,distance=..2.5,gamemode=adventure] at @s run function battle:classes/seacharger/shield_throw/on_target

execute as @e[type=item,nbt={OnGround:1b},tag=shield_active] at @s run function battle:classes/seacharger/shield_throw/display/end_throw

execute as @e[tag=thrown_shield_model] at @s run rotate @s ~215 ~

execute if entity @e[type=item,tag=shield_item] run schedule function battle:classes/seacharger/shield_throw/land_loop 1t