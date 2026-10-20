execute if entity @s[scores={use_class_dialog_cd=1..}] run schedule function battle:teamchoice/7-class/open_dialog/cd/loop 1t

scoreboard players add @s use_class_dialog_cd 1
advancement revoke @s[scores={use_class_dialog_cd=9..}] only battle:dialog/open_class
scoreboard players reset @s[scores={use_class_dialog_cd=9..}] use_class_dialog_cd