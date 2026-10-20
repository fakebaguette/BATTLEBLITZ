#execute as @e[type=item,tag=life_active,tag=life_Team1] at @s if entity @a[tag=Team1,distance=..1] run data merge entity @s {Motion:[0,-1,0]}
#execute as @e[type=item,tag=life_active,tag=life_Team2] at @s if entity @a[tag=Team2,distance=..1] run data merge entity @s {Motion:[0,-1,0]}

execute as @e[type=item,nbt={OnGround:1b},tag=life_active,tag=life_Team1] at @s positioned ~ ~.1 ~ as @a[tag=Team1,distance=..4,gamemode=adventure] at @s run function battle:classes/conjurer/life/item/on_target
execute as @e[type=item,nbt={OnGround:1b},tag=life_active,tag=life_Team2] at @s positioned ~ ~.1 ~ as @a[tag=Team2,distance=..4,gamemode=adventure] at @s run function battle:classes/conjurer/life/item/on_target

execute as @e[type=item,nbt={OnGround:1b},tag=life_active,tag=life_Team1] at @s positioned ~ ~.1 ~ as @e[type=#battle:pets,tag=mob_Team1,distance=..4] at @s run function battle:classes/conjurer/life/item/on_target
execute as @e[type=item,nbt={OnGround:1b},tag=life_active,tag=life_Team2] at @s positioned ~ ~.1 ~ as @e[type=#battle:pets,tag=mob_Team2,distance=..4] at @s run function battle:classes/conjurer/life/item/on_target

execute as @e[type=item,nbt={OnGround:1b},tag=life_active,tag=!conj_up] at @s positioned ~ ~.1 ~ rotated 0 0 run function battle:classes/conjurer/life/display/life1
execute as @e[type=item,nbt={OnGround:1b},tag=life_active,tag=conj_up] at @s positioned ~ ~.1 ~ rotated 0 0 run function battle:classes/conjurer/life/display/life2
execute as @e[type=item,nbt={OnGround:1b},tag=life_active] at @s run kill @s

execute if entity @e[type=item,tag=life_active] run schedule function battle:classes/conjurer/life/item/land_loop 1t