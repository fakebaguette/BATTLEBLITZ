execute if entity @s[scores={legion_swipe_cd=1..}] run schedule function battle:classes/legionnaire/swipe/cd/loop 1t

scoreboard players add @s legion_swipe_cd 1
advancement revoke @s[scores={legion_swipe_cd=20..}] only battle:legionnaire/swipe
scoreboard players reset @s[scores={legion_swipe_cd=20..}] legion_swipe_cd