scoreboard players remove @s[scores={light_clicking_item=1..}] light_clicking_item 1

execute if score @s light_clicking_item matches 1.. run return run advancement revoke @s only battle:lightwielder/cooldown
execute as @s[scores={light_clicking_item=0,light_charge_ticks=2..}] run function battle:classes/lightwielder/shoot