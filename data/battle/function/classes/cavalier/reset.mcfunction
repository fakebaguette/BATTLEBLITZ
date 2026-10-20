advancement revoke @s only battle:cavalier/mount
advancement revoke @s only battle:cavalier/ride
advancement revoke @s only battle:cavalier/banner
advancement revoke @s only battle:cavalier/bola_charge
advancement revoke @s only battle:cavalier/bola_cooldown

scoreboard players reset @s cava_mount_timer
scoreboard players reset @s cava_bola_use_cd
scoreboard players reset @s cava_bola_charge_ticks
scoreboard players reset @s cava_bola_clicking_item
scoreboard players reset @s banner_itemCD

tag @s remove cava_has_steed
tag @s remove cava_inside_rally
tag @s remove cava_banner_hit
attribute @s entity_interaction_range modifier remove plus_eir1
attribute @s entity_interaction_range modifier remove plus_eir2
attribute @s attack_knockback modifier remove plus_ak1