
execute on passengers as @s[tag=seacharger_class] run tag @s add seach_temp_dismount
execute on passengers as @s[tag=seach_temp_dismount] run ride @s dismount
execute at @s as @n[tag=seach_temp_dismount] run ride @s mount @n[type=nautilus]
execute on passengers as @s[tag=seach_temp_dismount] run tag @s remove seach_temp_dismount