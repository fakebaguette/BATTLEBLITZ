schedule function battle:classes/seacharger/shell/hit/main 2t

scoreboard objectives add seach_rune_dealt minecraft.custom:damage_dealt
scoreboard objectives add seach_rune_taken minecraft.custom:damage_taken

scoreboard players reset @a[tag=!seacharger_class] seach_rune_dealt
execute as @a at @s unless entity @a[tag=seach_has_airborne,distance=..7] run scoreboard players reset @s seach_rune_taken
execute as @a[tag=seach_has_airborne,scores={seach_rune_dealt=1..},tag=Team1] at @s if items entity @s weapon diamond_axe as @a[scores={seach_rune_taken=1..},distance=..7,tag=!Team1] at @s run function battle:classes/seacharger/shell/hit/occur

execute as @a[tag=seach_has_airborne,scores={seach_rune_dealt=1..},tag=Team2] at @s if items entity @s weapon diamond_axe as @a[scores={seach_rune_taken=1..},distance=..7,tag=!Team2] at @s run function battle:classes/seacharger/shell/hit/occur

scoreboard players reset @a seach_rune_dealt
scoreboard players reset @a seach_rune_taken