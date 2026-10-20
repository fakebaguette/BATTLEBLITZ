tag @s remove new_item
tag @s add cryo_active
execute on passengers run tag @s[tag=cryo_main_model] add cryo_active

execute at @s if entity @p[tag=Team1,distance=..1] run tag @s add cryo_Team1
execute at @s if entity @p[tag=Team2,distance=..1] run tag @s add cryo_Team2


execute at @s if entity @p[tag=Team1,distance=..1] on passengers run tag @s add cryo_Team1
execute at @s if entity @p[tag=Team2,distance=..1] on passengers run tag @s add cryo_Team2

data modify entity @s Motion set from entity @n[type=snowball,tag=!cryo_active,distance=..1] Motion
kill @n[type=snowball,tag=!cryo_active,distance=..1]