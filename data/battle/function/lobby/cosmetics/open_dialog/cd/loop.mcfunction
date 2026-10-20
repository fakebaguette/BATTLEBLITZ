scoreboard objectives add use_cosmetics_dialog_cd dummy
scoreboard players add @s use_cosmetics_dialog_cd 1

execute as @a[scores={use_cosmetics_dialog_cd=1..}] at @s run function battle:lobby/cosmetics/open_dialog/cd/cd