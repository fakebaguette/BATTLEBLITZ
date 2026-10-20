scoreboard objectives add use_class_dialog_cd dummy
scoreboard players add @s use_class_dialog_cd 1

execute as @a[scores={use_class_dialog_cd=2}] at @s run function battle:teamchoice/7-class/open_dialog/class with storage class_selection
execute as @a[scores={use_class_dialog_cd=1..}] at @s run function battle:teamchoice/7-class/open_dialog/cd/cd