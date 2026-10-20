scoreboard players reset @s playerDiedInt

execute store result storage death Pos[0] double 1.0 run data get entity @s LastDeathLocation.pos[0]
execute store result storage death Pos[1] double 1.0 run data get entity @s LastDeathLocation.pos[1]
execute store result storage death Pos[2] double 1.0 run data get entity @s LastDeathLocation.pos[2]

tag @s add deadPlayer
tag @s add teamDied

execute summon marker run function battle:ingame/playerdeath/last with storage death