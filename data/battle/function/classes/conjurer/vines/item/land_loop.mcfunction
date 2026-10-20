execute as @e[type=item,tag=vines_active,tag=vines_Team1] at @s if entity @a[tag=!Team1,distance=..1.5] run data merge entity @s {Motion:[0,-1,0]}
execute as @e[type=item,tag=vines_active,tag=vines_Team2] at @s if entity @a[tag=!Team2,distance=..1.5] run data merge entity @s {Motion:[0,-1,0]}

execute as @e[type=item,nbt={OnGround:1b},tag=vines_active,tag=vines_Team1] at @s positioned ~ ~.1 ~ as @a[tag=!Team1,distance=..4,gamemode=adventure] run function battle:classes/conjurer/vines/item/on_target
execute as @e[type=item,nbt={OnGround:1b},tag=vines_active,tag=vines_Team2] at @s positioned ~ ~.1 ~ as @a[tag=!Team2,distance=..4,gamemode=adventure] run function battle:classes/conjurer/vines/item/on_target

execute as @n[tag=mob_Team1] run data modify entity @s last_hurt_by_mob set from entity @p[gamemode=adventure,tag=!Team1] UUID
execute as @n[tag=mob_Team2] run data modify entity @s last_hurt_by_mob set from entity @p[gamemode=adventure,tag=!Team2] UUID

execute as @e[type=item,nbt={OnGround:1b},tag=vines_active,tag=vines_Team1] at @s positioned ~ ~.1 ~ as @e[type=#battle:pets,tag=!mob_Team1,distance=..4] run function battle:classes/conjurer/vines/item/on_target
execute as @e[type=item,nbt={OnGround:1b},tag=vines_active,tag=vines_Team2] at @s positioned ~ ~.1 ~ as @e[type=#battle:pets,tag=!mob_Team2,distance=..4] run function battle:classes/conjurer/vines/item/on_target


execute as @e[type=item,nbt={OnGround:1b},tag=vines_active] at @s positioned ~ ~.1 ~ rotated 0 0 run function battle:classes/conjurer/vines/display/vine1
execute as @e[type=item,nbt={OnGround:1b},tag=vines_active] at @s run kill @s

execute if entity @e[type=item,tag=vines_active] run schedule function battle:classes/conjurer/vines/item/land_loop 1t