execute if entity @s[scores={use_cosmetics_dialog_cd=1..}] run schedule function battle:lobby/cosmetics/open_dialog/cd/loop 1t

scoreboard players add @s use_cosmetics_dialog_cd 1
advancement revoke @s[scores={use_cosmetics_dialog_cd=9..}] only battle:dialog/open_cosmetics
scoreboard players reset @s[scores={use_cosmetics_dialog_cd=9..}] use_cosmetics_dialog_cd