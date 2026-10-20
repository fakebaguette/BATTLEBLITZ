execute if entity @a[tag=praetorian_class,tag=praet_has_steed] run schedule function battle:classes/praetorian/mount/ride 5t

execute as @e[type=horse,tag=praetSteed] run item replace entity @s armor.body with iron_horse_armor[custom_data={praetHorseArmor:1b,NoDrop:1b}]
execute as @e[type=horse,tag=praetSteed] run item replace entity @s saddle with saddle[custom_data={praetSaddle:1b,NoDrop:1b}]

execute as @a[tag=praet_has_steed] run attribute @s entity_interaction_range base set 5
clear @a saddle[custom_data={praetSaddle:1b,NoDrop:1b}]
clear @a iron_horse_armor[custom_data={praetHorseArmor:1b,NoDrop:1b}]

execute as @e[type=horse,tag=praetSteed] at @s unless predicate battle:praetorian/is_ridden run function battle:classes/praetorian/mount/kill_mount
execute as @a[tag=praetorian_class,tag=praet_has_steed] at @s unless predicate battle:praetorian/is_riding run kill @n[type=item,nbt={Item:{id:"minecraft:saddle"}}]
execute as @a[tag=praetorian_class,tag=praet_has_steed] at @s unless predicate battle:praetorian/is_riding run effect give @s speed 3 0 false
execute as @a[tag=praetorian_class,tag=praet_has_steed] at @s unless predicate battle:praetorian/is_riding run effect give @s absorption 5 0 false

execute as @a[tag=praetorian_class,tag=praet_has_steed,tag=Team1] at @s unless predicate battle:praetorian/is_riding run function battle:classes/praetorian/mount/item_cd/loop
execute as @a[tag=praetorian_class,tag=praet_has_steed,tag=Team2] at @s unless predicate battle:praetorian/is_riding run function battle:classes/praetorian/mount/item_cd/loop