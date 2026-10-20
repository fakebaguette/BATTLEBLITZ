advancement revoke @s only battle:venator/invis

scoreboard players reset @s vena_invis_cd
scoreboard players reset @s vena_invis_cap
scoreboard players reset @s vena_invis_charges
scoreboard players reset @s vena_invis_itemCD
scoreboard players reset @s vena_invis_scan_i
scoreboard players reset @s vena_invis_slot
scoreboard players reset @s vena_invis_time
scoreboard players reset @s vena_hit
scoreboard players reset @s vena_kill
scoreboard players reset @s vena_take
scoreboard players reset @s vena_shock_cd
scoreboard players reset @s vena_shock_time
scoreboard players reset @s use_venator_shock

execute as @s[tag=venator_class] run scoreboard players add @s vena_invis_charges 2
execute as @s[tag=venator_class] run scoreboard players set @s vena_invis_cap 2

tag @s remove vena_is_invis
tag @s remove vena_target
tag @s remove vena_shock_hit