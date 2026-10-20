scoreboard objectives add mara_bola_charge_ticks dummy
scoreboard objectives add mara_bola_clicking_item dummy

scoreboard players set @s mara_bola_clicking_item 2
scoreboard players add @s mara_bola_charge_ticks 2

advancement revoke @s only battle:marauder/bola_charge
advancement revoke @s only battle:marauder/bola_cooldown

#Visual and sounds
execute as @s[scores={mara_bola_charge_ticks=2..59}] at @s run playsound minecraft:block.note_block.harp master @s ^ ^ ^1 0.1 0.7

execute as @s[scores={mara_bola_charge_ticks=2..9}] at @s run experience set @s 0 levels
execute as @s[scores={mara_bola_charge_ticks=2..9}] at @s run experience set @s 1 points
execute as @s[scores={mara_bola_charge_ticks=10..19}] at @s run experience set @s 2 points
execute as @s[scores={mara_bola_charge_ticks=20..29}] at @s run experience set @s 3 points
execute as @s[scores={mara_bola_charge_ticks=30..39}] at @s run experience set @s 4 points
execute as @s[scores={mara_bola_charge_ticks=40..49}] at @s run experience set @s 5 points
execute as @s[scores={mara_bola_charge_ticks=50..59}] at @s run experience set @s 6 points
execute as @s[scores={mara_bola_charge_ticks=60..}] at @s run experience set @s 1 levels
execute as @s[scores={mara_bola_charge_ticks=60..}] at @s run experience set @s 0 points

execute as @s[scores={mara_bola_charge_ticks=2}] at @s run playsound minecraft:block.note_block.bit master @s ^ ^ ^1 0.8 0.7
execute as @s[scores={mara_bola_charge_ticks=30}] at @s run playsound minecraft:block.note_block.bit master @s ^ ^ ^1 0.8 0.9
execute as @s[scores={mara_bola_charge_ticks=60}] at @s run playsound minecraft:block.note_block.bit master @s ^ ^ ^1 0.8 1.1

execute as @s[scores={mara_bola_charge_ticks=1..59}] at @s run particle minecraft:crit ~ ~-0.1 ~ 0.5 1 0.5 0 1 normal
execute as @s[scores={mara_bola_charge_ticks=30..}] at @s run particle minecraft:enchanted_hit ~ ~0.5 ~ 0.5 1 0.5 0.01 1 normal
execute as @s[scores={mara_bola_charge_ticks=60..}] at @s run particle minecraft:raid_omen ~ ~-0.1 ~ 0.5 1 0.5 0.2 1 normal