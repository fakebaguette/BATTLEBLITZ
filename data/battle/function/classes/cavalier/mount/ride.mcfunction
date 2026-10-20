execute if entity @a[tag=cavalier_class,tag=cava_has_steed] run schedule function battle:classes/cavalier/mount/ride 5t

execute as @e[type=camel,tag=cavaSteed] run item replace entity @s saddle with saddle[custom_data={cavaSaddle:1b,NoDrop:1b}]

clear @a saddle[custom_data={cavaSaddle:1b,NoDrop:1b}]

execute as @e[type=camel,tag=cavaSteed] at @s unless predicate battle:cavalier/is_ridden run function battle:classes/cavalier/mount/kill_mount
execute as @a[tag=cavalier_class,tag=cava_has_steed] at @s unless predicate battle:cavalier/is_riding run kill @n[type=item,nbt={Item:{id:"minecraft:saddle"}}]
execute as @a[tag=cavalier_class,tag=cava_has_steed] at @s unless predicate battle:cavalier/is_riding run effect give @s speed 3 0 false
execute as @a[tag=cavalier_class,tag=cava_has_steed] at @s unless predicate battle:cavalier/is_riding run effect give @s absorption 6 0 false
execute as @a[tag=cavalier_class,tag=cava_has_steed] at @s unless predicate battle:cavalier/is_riding run attribute @s entity_interaction_range modifier remove plus_eir2
execute as @a[tag=cavalier_class,tag=cava_has_steed] at @s unless predicate battle:cavalier/is_riding run attribute @s attack_knockback modifier remove plus_ak1
execute as @a[tag=cavalier_class,tag=cava_has_steed] at @s unless predicate battle:cavalier/is_riding run function battle:classes/cavalier/replace_spear/no_camel

execute as @a[tag=!cavalier_class] at @s if predicate battle:cavalier/is_riding run attribute @s entity_interaction_range modifier add plus_eir1 1 add_value
#reset this modifier in other tick 5t

execute as @a[tag=cavalier_class,tag=cava_has_steed,tag=Team1] at @s unless predicate battle:cavalier/is_riding run function battle:classes/cavalier/mount/item_cd/loop
execute as @a[tag=cavalier_class,tag=cava_has_steed,tag=Team2] at @s unless predicate battle:cavalier/is_riding run function battle:classes/cavalier/mount/item_cd/loop