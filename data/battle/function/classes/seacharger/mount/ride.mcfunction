execute if entity @a[tag=seacharger_class,tag=seach_has_steed] run schedule function battle:classes/seacharger/mount/ride 5t

execute as @e[type=nautilus,tag=seachSteed] run item replace entity @s saddle with saddle[custom_data={seachSaddle:1b,NoDrop:1b}]
execute as @e[type=nautilus,tag=seachSteed] run item replace entity @s armor.body with diamond_nautilus_armor[custom_data={seachArmor:1b,NoDrop:1b}]

clear @a saddle[custom_data={seachSaddle:1b,NoDrop:1b}]
clear @a diamond_nautilus_armor[custom_data={seachArmor:1b,NoDrop:1b}]

#execute as @e[type=nautilus,tag=seachSteed] at @s unless predicate battle:seacharger/is_ridden run function battle:classes/seacharger/mount/kill_mount
execute as @a[tag=seacharger_class,tag=seach_has_steed] at @s unless predicate battle:seacharger/is_riding run effect give @s absorption 4 0 false
execute as @a[tag=seacharger_class,tag=seach_has_steed] at @s unless predicate battle:seacharger/is_riding run function battle:classes/seacharger/mount/item_cd/loop
execute as @a[tag=seacharger_class,tag=seach_has_steed] at @s unless predicate battle:seacharger/is_riding run tag @s remove seach_has_steed