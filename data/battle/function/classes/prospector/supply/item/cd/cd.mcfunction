execute if entity @s[scores={prosp_supply_itemCD=1..}] run schedule function battle:classes/prospector/supply/item/cd/loop 1t

scoreboard players add @s prosp_supply_itemCD 1
advancement revoke @s[scores={prosp_supply_itemCD=9..}] only battle:prospector/supply_drop
scoreboard players reset @s[scores={prosp_supply_itemCD=9..}] prosp_supply_itemCD