scoreboard players remove @s[scores={cava_bola_clicking_item=1..}] cava_bola_clicking_item 1

execute if score @s cava_bola_clicking_item matches 1.. run return run advancement revoke @s only battle:cavalier/bola_cooldown
execute as @s[scores={cava_bola_clicking_item=0,cava_bola_charge_ticks=2..}] run function battle:classes/cavalier/bola/shoot