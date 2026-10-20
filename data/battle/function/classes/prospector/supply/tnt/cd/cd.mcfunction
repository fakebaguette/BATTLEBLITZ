execute if entity @s[scores={prosp_tnt_itemCD=1..}] run schedule function battle:classes/prospector/supply/tnt/cd/loop 1t

scoreboard players add @s prosp_tnt_itemCD 1
advancement revoke @s[scores={prosp_tnt_itemCD=9..}] only battle:prospector/tnt
scoreboard players reset @s[scores={prosp_tnt_itemCD=9..}] prosp_tnt_itemCD