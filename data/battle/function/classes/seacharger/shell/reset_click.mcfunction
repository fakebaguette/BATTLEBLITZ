scoreboard players remove @s[scores={seach_clicking_rune=1..}] seach_clicking_rune 1

execute if score @s seach_clicking_rune matches 1.. run return run advancement revoke @s only battle:seacharger/rune_cd
execute as @s[scores={seach_clicking_rune=0,seach_rune_charge=2..}] run scoreboard players reset @s seach_rune_charge