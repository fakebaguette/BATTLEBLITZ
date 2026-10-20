execute if entity @s[scores={cava_bola_use_cd=1..}] run schedule function battle:classes/cavalier/bola/cd/loop 1t

scoreboard players add @s cava_bola_use_cd 1
advancement revoke @s[scores={cava_bola_use_cd=9..}] only battle:cavalier/bola_charge
scoreboard players reset @s[scores={cava_bola_use_cd=9..}] cava_bola_use_cd