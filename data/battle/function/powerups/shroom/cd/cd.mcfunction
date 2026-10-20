execute if entity @s[scores={shroom_itemCD=1..}] run schedule function battle:powerups/shroom/cd/loop 1t

scoreboard players add @s shroom_itemCD 1
advancement revoke @s[scores={shroom_itemCD=9..}] only battle:powerups/shroom
scoreboard players reset @s[scores={shroom_itemCD=9..}] shroom_itemCD