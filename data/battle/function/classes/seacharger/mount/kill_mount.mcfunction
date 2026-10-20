particle poof ~ ~.5 ~ 0.7 0.7 0.7 0.1 50 normal
playsound item.armor.equip_turtle master @a ~ ~ ~ 1 0
playsound entity.chicken.egg master @a ~ ~ ~ 1 0.8
data merge entity @s {Silent:1b}

execute if entity @s[tag=mob_Team1] run tag @a[tag=Team2] remove seach_mount_hit
execute if entity @s[tag=mob_Team2] run tag @a[tag=Team1] remove seach_mount_hit

execute on passengers as @s[tag=seacharger_class] at @s run function battle:classes/seacharger/mount/item_cd/loop
execute on passengers as @s[tag=seacharger_class] at @s run effect give @s absorption 4 0 false
execute on passengers as @s[tag=seacharger_class] at @s run tag @s remove seach_has_steed
execute on passengers as @s[tag=seacharger_class] run ride @s dismount
execute at @s on passengers on passengers on passengers as @s[tag=seach_model] run kill @s
execute at @s on passengers on passengers as @s[tag=seach_model] run kill @s
execute at @s on passengers as @s[tag=seach_model] run kill @s
kill @s

stopsound @a master entity.nautilus.riding