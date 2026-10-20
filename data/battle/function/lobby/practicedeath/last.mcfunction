data modify entity @s Pos set from storage death Pos

execute at @s run particle minecraft:sculk_soul ~ ~1 ~ .5 .5 .5 .2 10 normal @a
execute at @s run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1.9

title @a[scores={killerPractice=1..}] times 10t 15t 10t
execute at @s run effect give @a[scores={killerPractice=1..},sort=nearest] instant_health 1 0 true
execute at @s run title @a[scores={killerPractice=1..},sort=nearest] actionbar ["",{"text":"+","color":"yellow"},{"text":"4 HP ","bold":true,"color":"green"},{"text":"\u2764","color":"green"},{"text":" - "},{"text":"Practice Kill","bold":true,"color":"red"}]
execute at @a[scores={killerPractice=1..},sort=nearest] run particle minecraft:crit ~ ~1 ~ 0.5 0.5 0.5 0.01 10 normal @a
execute at @a[scores={killerPractice=1..},sort=nearest] run particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.01 10 normal @a
execute at @a[scores={killerPractice=1..},sort=nearest] run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 20 1.5
execute at @a[scores={killerPractice=1..},sort=nearest] run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 20 2
execute as @a[scores={killerPractice=1..},sort=nearest] run scoreboard players add @s pvpKills 1 

tellraw @a[tag=!inGame] ["",{"selector":"@a[tag=deadPlayerPractice]"}," was defeated by ",{"selector":"@a[scores={killerPractice=1..}]"},"."]
execute at @s run title @a[scores={killerPractice=1..},distance=..6.99] title ["",{"text":"["},{"text":"🗡","bold":false,"color":"red"},{"text":"] "},{"selector":"@a[tag=deadPlayerPractice]"}]
scoreboard players reset @a[scores={killerPractice=1..}] killerPractice

kill @s
