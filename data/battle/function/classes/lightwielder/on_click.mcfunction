scoreboard objectives add light_charge_ticks dummy
scoreboard objectives add light_eye_timer dummy
scoreboard objectives add light_clicking_item dummy

scoreboard players set @s light_clicking_item 2
scoreboard players add @s light_charge_ticks 2

advancement revoke @s only battle:lightwielder/charge
advancement revoke @s only battle:lightwielder/cooldown

#Backup, resets scores if we are on CD or if spyglass is not in mainhand 
scoreboard players reset @s[tag=light_eye_cd] light_charge_ticks

#Visual and sounds
execute as @s[scores={light_charge_ticks=2..}] at @s run playsound minecraft:block.note_block.harp master @s ^ ^ ^1 0.3 1.3
execute as @s[scores={light_charge_ticks=2..}] at @s run effect give @s slowness 1 4 true

execute as @s[scores={light_charge_ticks=2..9}] at @s run experience set @s 1 levels
execute as @s[scores={light_charge_ticks=2}] at @s run playsound minecraft:block.note_block.bit master @s ^ ^ ^1 1 1.5
execute as @s[scores={light_charge_ticks=10..19}] at @s run experience set @s 2 points
execute as @s[scores={light_charge_ticks=20..29}] at @s run experience set @s 4 points
execute as @s[scores={light_charge_ticks=30..39}] at @s run experience set @s 6 points
execute as @s[scores={light_charge_ticks=40..49}] at @s run experience set @s 2 levels
execute as @s[scores={light_charge_ticks=40}] at @s run playsound minecraft:block.note_block.bit master @s ^ ^ ^1 1 1.7
execute as @s[scores={light_charge_ticks=40..49}] at @s run experience set @s 0 points
execute as @s[scores={light_charge_ticks=50..59}] at @s run experience set @s 3 points
execute as @s[scores={light_charge_ticks=60..69}] at @s run experience set @s 5 points
execute as @s[scores={light_charge_ticks=70..79}] at @s run experience set @s 7 points
execute as @s[scores={light_charge_ticks=80..}] at @s run experience set @s 3 levels
execute as @s[scores={light_charge_ticks=80}] at @s run playsound minecraft:block.note_block.bit master @s ^ ^ ^1 1 1.9
execute as @s[scores={light_charge_ticks=80..}] at @s run experience set @s 0 points
execute as @s[scores={light_charge_ticks=80..}] at @s run title @s actionbar ["Your ",{"text":"Eye of the Lightwielder","color":"yellow","bold":true}," is ",{"text":"fully charged","color":"green"},"!"]

execute as @s[scores={light_charge_ticks=1..39}] at @s run particle minecraft:end_rod ~ ~0.5 ~ 0.5 1 0.5 0.01 1 force

execute as @s[scores={light_charge_ticks=1..39}] at @s positioned ^ ^1.5 ^7 run particle instant_effect ~ ~-0.1 ~ 0 0 0 0 1 force

execute as @s[scores={light_charge_ticks=40..79}] at @s run particle minecraft:end_rod ~ ~0.5 ~ 0.5 1 0.5 0.01 1 force
execute as @s[scores={light_charge_ticks=40..79}] at @s run particle minecraft:wax_off ~ ~0.5 ~ 0.5 1 0.5 1 1 force

execute as @s[scores={light_charge_ticks=40..79}] at @s positioned ^ ^1.5 ^15 run particle instant_effect ~ ~-0.1 ~ 0 0 0 0 1 force

execute as @s[scores={light_charge_ticks=80..}] at @s run particle minecraft:end_rod ~ ~0.5 ~ 0.5 1 0.5 0.01 1 force
execute as @s[scores={light_charge_ticks=80..}] at @s run particle minecraft:wax_off ~ ~0.5 ~ 0.5 1 0.5 1 1 force
execute as @s[scores={light_charge_ticks=80..}] at @s run particle minecraft:instant_effect ~ ~0.5 ~ 0.5 1 0.5 0 1 force

execute as @s[scores={light_charge_ticks=80..}] at @s positioned ^ ^1.5 ^35 run particle instant_effect ~ ~-0.1 ~ 0 0 0 0 1 force