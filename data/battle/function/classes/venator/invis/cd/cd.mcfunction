execute if entity @s[scores={vena_invis_cd=1..}] run schedule function battle:classes/venator/invis/cd/loop 1t

scoreboard players add @s vena_invis_cd 1
advancement revoke @s[scores={vena_invis_cd=20..}] only battle:venator/invis
scoreboard players reset @s[scores={vena_invis_cd=20..}] vena_invis_cd