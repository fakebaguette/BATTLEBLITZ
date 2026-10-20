execute if entity @s[scores={banner_itemCD=1..}] run schedule function battle:classes/cavalier/banner/cd/loop 1t

scoreboard players add @s banner_itemCD 1
advancement revoke @s[scores={banner_itemCD=9..}] only battle:cavalier/banner
scoreboard players reset @s[scores={banner_itemCD=9..}] banner_itemCD