scoreboard players remove @s[scores={mara_bola_clicking_item=1..}] mara_bola_clicking_item 1

execute if score @s mara_bola_clicking_item matches 1.. run return run advancement revoke @s only battle:marauder/bola_cooldown
execute as @s[scores={mara_bola_clicking_item=0,mara_bola_charge_ticks=2..}] run function battle:classes/marauder/bola/shoot