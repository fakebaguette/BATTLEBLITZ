execute if entity @s[scores={puffer_itemCD=1..}] run schedule function battle:powerups/puffer/cd/loop 1t

scoreboard players add @s puffer_itemCD 1
advancement revoke @s[scores={puffer_itemCD=9..}] only battle:powerups/puffer
scoreboard players reset @s[scores={puffer_itemCD=9..}] puffer_itemCD