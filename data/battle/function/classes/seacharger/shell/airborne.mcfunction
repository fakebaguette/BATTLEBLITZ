execute if entity @a[tag=seach_has_airborne] run schedule function battle:classes/seacharger/shell/airborne 2t

scoreboard objectives add seach_airborne_time dummy

execute as @a[tag=seach_has_airborne] run scoreboard players add @s seach_airborne_time 1
execute as @a[tag=seach_has_airborne,gamemode=adventure] at @s run particle nautilus ~ ~ ~ 0.5 0.8 0.5 0.1 3
execute as @a[tag=seach_has_airborne,gamemode=adventure] at @s run particle bubble_pop ~ ~ ~ 0.5 0.8 0.5 0.1 3
execute as @a[tag=seach_has_airborne,gamemode=adventure] at @s run particle sculk_charge_pop ~ ~ ~ 0.5 0.8 0.5 0.1 3
tag @a[scores={seach_airborne_time=80..}] remove seach_has_airborne
scoreboard players reset @a[scores={seach_airborne_time=80..}] seach_airborne_time