scoreboard players remove @s[scores={light_clicking_rune=1..}] light_clicking_rune 1

execute if score @s light_clicking_rune matches 1.. run return run advancement revoke @s only battle:lightwielder/rune_cd
execute as @s[scores={light_clicking_rune=0,light_rune_charge=2..}] run scoreboard players reset @s light_rune_charge