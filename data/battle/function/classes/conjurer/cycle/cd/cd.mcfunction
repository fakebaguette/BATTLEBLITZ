execute if entity @s[scores={conj_swap_cd=1..}] run schedule function battle:classes/conjurer/cycle/cd/loop 1t

scoreboard players add @s conj_swap_cd 1
advancement revoke @s[scores={conj_swap_cd=9..}] only battle:conjurer/swap
advancement revoke @s[scores={conj_swap_cd=9..}] only battle:conjurer/cycle_bool
scoreboard players reset @s[scores={conj_swap_cd=9..}] conj_swap_cd