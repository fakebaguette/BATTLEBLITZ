tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| You were sent back to the lobby because you left. \n\n",{"text":"Found a bug ","color":"red"},{"text":"or","color":"white"},{"text":" ","color":"red"},{"text":"have feedback?","color":"green"},{"text":" Click ","color":"white"},{"text":"here","color":"gold"},{"text":"! ","color":"white"},"\n",{"text":"Bugged?","color":"red"}," Use ",{"text":"/trigger ResetAll","color":"yellow"},"!"]
#Scores
function battle:reset/resetscore
function battle:reset/runereset
function battle:reset/advancement

execute store result score .firstjoin firstjoin if entity @a
execute if score .firstjoin firstjoin matches 1 run function battle:reset/reset
execute if score .firstjoin firstjoin matches 1 run schedule function battle:reset/entities 1s
scoreboard players reset .firstjoin firstjoin

#Tags
function battle:reset/resettag

#General
dialog clear @s
scoreboard players reset @s logInReset
tp @s[gamemode=!creative] 0 104 166 180 0
spawnpoint @s 0 104 166
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
attribute @s entity_interaction_range base set 3
attribute @s gravity base set 0.08
tag @s add inLobby
