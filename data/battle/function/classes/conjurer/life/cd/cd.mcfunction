execute if entity @s[scores={life_itemCD=1..}] run schedule function battle:classes/conjurer/life/cd/loop 1t

scoreboard players add @s life_itemCD 1
advancement revoke @s[scores={life_itemCD=9..}] only battle:conjurer/life
scoreboard players reset @s[scores={life_itemCD=9..}] life_itemCD