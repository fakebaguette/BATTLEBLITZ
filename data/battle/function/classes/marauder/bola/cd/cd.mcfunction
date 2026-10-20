execute if entity @s[scores={mara_bola_use_cd=1..}] run schedule function battle:classes/marauder/bola/cd/loop 1t

scoreboard players add @s mara_bola_use_cd 1
advancement revoke @s[scores={mara_bola_use_cd=9..}] only battle:marauder/bola_charge
scoreboard players reset @s[scores={mara_bola_use_cd=9..}] mara_bola_use_cd