execute if entity @s[scores={fangs_itemCD=1..}] run schedule function battle:classes/conjurer/fangs/cd/loop 1t

scoreboard players add @s fangs_itemCD 1
advancement revoke @s[scores={fangs_itemCD=9..}] only battle:conjurer/fang
scoreboard players reset @s[scores={fangs_itemCD=9..}] fangs_itemCD