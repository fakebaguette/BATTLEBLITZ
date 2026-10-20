scoreboard players reset @s playerDiedIntPractice

execute store result storage death Pos[0] double 1.0 run data get entity @s LastDeathLocation.pos[0]
execute store result storage death Pos[1] double 1.0 run data get entity @s LastDeathLocation.pos[1]
execute store result storage death Pos[2] double 1.0 run data get entity @s LastDeathLocation.pos[2]

summon marker ~ ~ ~ {Tags:["deathMarkerPractice"]}
tag @s add deadPlayerPractice
clear @s
tp @s 0 104 166 180 0
tag @s remove practicePvp
execute as @e[type=marker,tag=deathMarkerPractice] run function battle:lobby/practicedeath/last
tag @s remove deadPlayerPractice