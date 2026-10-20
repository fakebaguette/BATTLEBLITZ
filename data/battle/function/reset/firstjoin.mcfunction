tellraw @a ["\n",{"selector":"@s","color":"yellow"}," has logged into ",{"text":"BATTLE BLITZ","bold":true,"color":"#ff6600"}," for the first time! "]
scoreboard players set @s firstjoin 1

#Scores
function battle:reset/resetscore
function battle:reset/runereset
function battle:reset/advancement

#Tags
function battle:reset/resettag

#General
spawnpoint @a 0 104 166
scoreboard players reset @s logInReset
tp @s[gamemode=!creative] 0 104 166 180 0
execute at @s run playsound block.note_block.pling master @s ~ ~ ~ 1 2
clear @s[gamemode=!creative]
gamemode adventure @s[gamemode=!creative]
time set day
weather clear
experience set @s 0 levels
experience set @s 0 points
effect clear @s[tag=!operator]
effect give @s instant_health 2 255 true
effect give @s saturation 1 255 true
title @s clear
scoreboard players set #ofplayers: vote_phase 0
team leave @s
execute as @s run attribute @s scale base set 1
execute as @s run attribute @s max_health base set 20
tag @s add inLobby