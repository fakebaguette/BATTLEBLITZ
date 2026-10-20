execute if entity @s[scores={vena_shock_cd=1..}] run schedule function battle:classes/venator/shock/cd/loop 1t

scoreboard players add @s vena_shock_cd 1
advancement revoke @s[scores={vena_shock_cd=20..}] only battle:venator/shock
scoreboard players reset @s[scores={vena_shock_cd=20..}] vena_shock_cd