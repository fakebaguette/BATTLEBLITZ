execute as @e[type=item,tag=fangs_active,tag=fangs_Team1] at @s if entity @a[tag=!Team1,distance=..1.5] run data merge entity @s {Motion:[0,-1,0]}
execute as @e[type=item,tag=fangs_active,tag=fangs_Team2] at @s if entity @a[tag=!Team2,distance=..1.5] run data merge entity @s {Motion:[0,-1,0]}

execute as @e[type=item,nbt={OnGround:1b},tag=fangs_active,tag=fangs_Team1,tag=!conj_up] at @s positioned ~ ~.1 ~ as @a[tag=!Team1,distance=..3,gamemode=adventure] at @s run function battle:classes/conjurer/fangs/item/on_target
execute as @e[type=item,nbt={OnGround:1b},tag=fangs_active,tag=fangs_Team2,tag=!conj_up] at @s positioned ~ ~.1 ~ as @a[tag=!Team2,distance=..3,gamemode=adventure] at @s run function battle:classes/conjurer/fangs/item/on_target

execute as @e[type=item,nbt={OnGround:1b},tag=fangs_active,tag=fangs_Team1,tag=conj_up] at @s positioned ~ ~.1 ~ as @a[tag=!Team1,distance=..4,gamemode=adventure] at @s run function battle:classes/conjurer/fangs/item/on_target
execute as @e[type=item,nbt={OnGround:1b},tag=fangs_active,tag=fangs_Team2,tag=conj_up] at @s positioned ~ ~.1 ~ as @a[tag=!Team2,distance=..4,gamemode=adventure] at @s run function battle:classes/conjurer/fangs/item/on_target


execute as @e[type=item,nbt={OnGround:1b},tag=fangs_active,tag=fangs_Team1,tag=!conj_up] at @s positioned ~ ~.1 ~ as @e[type=#battle:pets,tag=!mob_Team1,distance=..3] at @s run function battle:classes/conjurer/fangs/item/on_target
execute as @e[type=item,nbt={OnGround:1b},tag=fangs_active,tag=fangs_Team2,tag=!conj_up] at @s positioned ~ ~.1 ~ as @e[type=#battle:pets,tag=!mob_Team2,distance=..3] at @s run function battle:classes/conjurer/fangs/item/on_target

execute as @e[type=item,nbt={OnGround:1b},tag=fangs_active,tag=fangs_Team1,tag=conj_up] at @s positioned ~ ~.1 ~ as @e[type=#battle:pets,tag=!mob_Team1,distance=..4] at @s run function battle:classes/conjurer/fangs/item/on_target
execute as @e[type=item,nbt={OnGround:1b},tag=fangs_active,tag=fangs_Team2,tag=conj_up] at @s positioned ~ ~.1 ~ as @e[type=#battle:pets,tag=!mob_Team2,distance=..4] at @s run function battle:classes/conjurer/fangs/item/on_target


execute as @n[tag=mob_Team1] run data modify entity @s last_hurt_by_mob set from entity @p[gamemode=adventure,tag=!Team1] UUID
execute as @n[tag=mob_Team2] run data modify entity @s last_hurt_by_mob set from entity @p[gamemode=adventure,tag=!Team2] UUID

execute as @e[type=item,nbt={OnGround:1b},tag=fangs_active] at @s positioned ~ ~ ~ summon block_display run function battle:classes/conjurer/fangs/display/loop
execute as @e[type=item,nbt={OnGround:1b},tag=fangs_active,tag=!conj_up] at @s positioned ~ ~.1 ~ rotated 0 0 run function battle:classes/conjurer/fangs/display/fang1
execute as @e[type=item,nbt={OnGround:1b},tag=fangs_active,tag=conj_up] at @s positioned ~ ~.1 ~ rotated 0 0 run function battle:classes/conjurer/fangs/display/fang2
execute as @e[type=item,nbt={OnGround:1b},tag=fangs_active] at @s run kill @s

execute if entity @e[type=item,tag=fangs_active] run schedule function battle:classes/conjurer/fangs/item/land_loop 1t