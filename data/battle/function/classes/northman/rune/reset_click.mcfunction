scoreboard players remove @s[scores={north_clicking_rune=1..}] north_clicking_rune 1

execute if score @s north_clicking_rune matches 1.. run return run advancement revoke @s only battle:northman/rune_cd
execute as @s[scores={north_clicking_rune=0,north_rune_charge=2..}] run scoreboard players reset @s north_rune_charge