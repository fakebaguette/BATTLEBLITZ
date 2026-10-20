execute at @s positioned ^ ^1.5 ^2.5 run function battle:classes/lightwielder/effects/1/end
execute at @s positioned ^ ^1.5 ^2.5 run function battle:classes/lightwielder/effects/1/enc
execute at @s positioned ^ ^1.5 ^3 run function battle:classes/lightwielder/effects/light

particle minecraft:snowflake ~ ~.5 ~ 1 1 1 0.01 50 normal @a
playsound minecraft:block.beacon.power_select block @a ^ ^ ^1 1 2
playsound minecraft:block.respawn_anchor.deplete block @a ^ ^ ^1 1 2

summon minecraft:interaction ^ ^ ^7 {Tags:["rayinteraction"],width:0.01f,height:0.01f}
summon minecraft:interaction ^ ^ ^3 {Tags:["rayinteraction"],width:0.01f,height:0.01f}

execute if entity @s[tag=Team1] as @e[type=interaction,tag=rayinteraction] at @s run tag @a[distance=..2,tag=!Team1] add light_got_hit
execute if entity @s[tag=Team2] as @e[type=interaction,tag=rayinteraction] at @s run tag @a[distance=..2,tag=!Team2] add light_got_hit

execute if entity @s[tag=Team1] as @e[type=interaction,tag=rayinteraction] at @s run tag @e[type=#battle:pets,distance=..2,tag=!mob_Team1] add light_got_hit
execute if entity @s[tag=Team2] as @e[type=interaction,tag=rayinteraction] at @s run tag @e[type=#battle:pets,distance=..2,tag=!mob_Team2] add light_got_hit

execute as @e[tag=light_got_hit] at @s run function battle:classes/lightwielder/effects/1/dmg

kill @e[type=interaction,tag=rayinteraction]

tag @s add light_eye_cd
scoreboard players set @s light_eye_timer 0
effect give @s slowness 1 0