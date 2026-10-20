clear @s light_gray_dye[custom_data={NoDrop:1b,lightRuneshard:1b}] 1
scoreboard players reset @s light_rune_charge
scoreboard players reset @s light_ascend_time
scoreboard players add @s light_ascend_time 1

execute summon snowball run function battle:classes/lightwielder/rune/apply
ride @s mount @n[tag=light_rune_mob]
attribute @s gravity base set 0

#repeat
execute if entity @a[scores={light_ascend_time=1..}] run schedule function battle:classes/lightwielder/rune/run 1t

scoreboard objectives add light_ascend_time dummy
scoreboard players add @a[scores={light_ascend_time=1..}] light_ascend_time 1
execute as @a[scores={light_ascend_time=1..},gamemode=adventure] at @s run function battle:classes/lightwielder/effects/rune

execute as @a[scores={light_ascend_time=20..},gamemode=adventure] at @s on vehicle if entity @s[tag=light_rune_mob] run kill @s[tag=light_rune_mob]

execute as @a[scores={light_ascend_time=20..},gamemode=adventure] at @s if predicate battle:jump if block ~ ~0.25 ~ #battle:nonsolids run tp ~ ~0.25 ~
execute as @a[scores={light_ascend_time=20..},gamemode=adventure] at @s if predicate battle:shift if block ~ ~-0.25 ~ #battle:nonsolids run tp ~ ~-0.25 ~

execute as @a[scores={light_ascend_time=159..}] run attribute @s gravity base set 0.08
execute as @a[scores={light_ascend_time=160..}] run scoreboard players reset @s light_ascend_time