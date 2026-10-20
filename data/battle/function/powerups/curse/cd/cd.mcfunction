execute if entity @s[scores={curse_itemCD=1..}] run schedule function battle:powerups/curse/cd/loop 1t

scoreboard players add @s curse_itemCD 1
advancement revoke @s[scores={curse_itemCD=9..}] only battle:powerups/curse
scoreboard players reset @s[scores={curse_itemCD=9..}] curse_itemCD