execute if entity @s[scores={tnt_itemCD=1..}] run schedule function battle:powerups/tnt/cd/loop 1t

scoreboard players add @s tnt_itemCD 1
advancement revoke @s[scores={tnt_itemCD=9..}] only battle:powerups/tnt
scoreboard players reset @s[scores={tnt_itemCD=9..}] tnt_itemCD