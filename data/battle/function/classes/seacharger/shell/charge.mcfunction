scoreboard objectives add seach_rune_charge dummy
scoreboard objectives add seach_clicking_rune dummy

scoreboard players set @s seach_clicking_rune 2
scoreboard players add @s seach_rune_charge 1

advancement revoke @s only battle:seacharger/runeshard
advancement revoke @s only battle:seacharger/rune_cd

execute if score @s seach_rune_charge matches 3.. run particle nautilus ~ ~ ~ 0.5 0.8 0.5 0.3 3 normal
execute if score @s seach_rune_charge matches 3.. run particle dripping_water ~ ~ ~ 0.5 0.8 0.5 0.1 3 normal

execute if score @s seach_rune_charge matches 10.. run particle enchanted_hit ~ ~ ~ 0.5 0.8 0.5 0.3 3 normal
execute if score @s seach_rune_charge matches 10.. run particle bubble_pop ~ ~ ~ 0.5 0.8 0.5 0.3 3 normal
execute if score @s seach_rune_charge matches 20.. run particle sculk_charge_pop ~ ~ ~ 0.5 0.8 0.5 0.1 3 normal

execute if score @s seach_rune_charge matches 3 run playsound entity.breeze.charge master @a ~ ~ ~ 2 1.4
execute if score @s seach_rune_charge matches 3 run playsound entity.nautilus.eat master @a ~ ~ ~ 2 0.9

execute if score @s seach_rune_charge matches 15 run playsound entity.nautilus.eat master @a ~ ~ ~ 2 1.3

execute if score @s seach_rune_charge matches 9..11 run playsound block.conduit.ambient.short master @a ~ ~ ~ 2 0.7
execute if score @s seach_rune_charge matches ..8 run stopsound @a master block.conduit.ambient.short

execute if score @s seach_rune_charge matches 30.. run function battle:classes/seacharger/shell/occur
