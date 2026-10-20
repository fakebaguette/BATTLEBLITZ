execute at @s positioned ^ ^1.5 ^2.5 run function battle:classes/lightwielder/effects/3/end
execute at @s positioned ^ ^1.5 ^2.5 run function battle:classes/lightwielder/effects/3/enc
execute at @s positioned ^ ^1.5 ^3 run function battle:classes/lightwielder/effects/light

particle minecraft:snowflake ~ ~.5 ~ 1 1 1 0.01 200 normal @a
playsound minecraft:block.beacon.power_select block @a ^ ^ ^1 2 0.7
playsound minecraft:block.respawn_anchor.deplete block @a ^ ^ ^1 2 0.7
playsound minecraft:entity.guardian.ambient block @a ^ ^ ^1 2 0.7

summon minecraft:interaction ^ ^ ^34 {Tags:["rayinteraction"],width:0.01f,height:0.01f}
summon minecraft:interaction ^ ^ ^33 {Tags:["rayinteraction"],width:0.01f,height:0.01f}
summon minecraft:interaction ^ ^ ^30 {Tags:["rayinteraction"],width:0.01f,height:0.01f}
summon minecraft:interaction ^ ^ ^27 {Tags:["rayinteraction"],width:0.01f,height:0.01f}
summon minecraft:interaction ^ ^ ^24 {Tags:["rayinteraction"],width:0.01f,height:0.01f}
summon minecraft:interaction ^ ^ ^21 {Tags:["rayinteraction"],width:0.01f,height:0.01f}
summon minecraft:interaction ^ ^ ^18 {Tags:["rayinteraction"],width:0.01f,height:0.01f}
summon minecraft:interaction ^ ^ ^15 {Tags:["rayinteraction"],width:0.01f,height:0.01f}
summon minecraft:interaction ^ ^ ^12 {Tags:["rayinteraction"],width:0.01f,height:0.01f}
summon minecraft:interaction ^ ^ ^9 {Tags:["rayinteraction"],width:0.01f,height:0.01f}
summon minecraft:interaction ^ ^ ^6 {Tags:["rayinteraction"],width:0.01f,height:0.01f}
summon minecraft:interaction ^ ^ ^3 {Tags:["rayinteraction"],width:0.01f,height:0.01f}

execute if entity @s[tag=Team1] as @e[type=interaction,tag=rayinteraction] at @s run tag @a[distance=..2,tag=!Team1] add light_got_hit
execute if entity @s[tag=Team2] as @e[type=interaction,tag=rayinteraction] at @s run tag @a[distance=..2,tag=!Team2] add light_got_hit

execute if entity @s[tag=Team1] as @e[type=interaction,tag=rayinteraction] at @s run tag @e[type=#battle:pets,distance=..2,tag=!mob_Team1] add light_got_hit
execute if entity @s[tag=Team2] as @e[type=interaction,tag=rayinteraction] at @s run tag @e[type=#battle:pets,distance=..2,tag=!mob_Team2] add light_got_hit

execute as @e[tag=light_got_hit] at @s run function battle:classes/lightwielder/effects/3/dmg

kill @e[type=interaction,tag=rayinteraction]

tag @s add light_eye_cd
scoreboard players set @s light_eye_timer 0
effect give @s slowness 3 1