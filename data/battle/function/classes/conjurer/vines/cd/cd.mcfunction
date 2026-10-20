execute if entity @s[scores={vines_itemCD=1..}] run schedule function battle:classes/conjurer/vines/cd/loop 1t

scoreboard players add @s vines_itemCD 1
advancement revoke @s[scores={vines_itemCD=9..}] only battle:conjurer/vine
scoreboard players reset @s[scores={vines_itemCD=9..}] vines_itemCD