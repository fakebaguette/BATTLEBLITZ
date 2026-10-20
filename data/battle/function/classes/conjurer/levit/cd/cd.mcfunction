execute if entity @s[scores={levit_itemCD=1..}] run schedule function battle:classes/conjurer/levit/cd/loop 1t

scoreboard players add @s levit_itemCD 1
advancement revoke @s[scores={levit_itemCD=9..}] only battle:conjurer/levit
scoreboard players reset @s[scores={levit_itemCD=9..}] levit_itemCD