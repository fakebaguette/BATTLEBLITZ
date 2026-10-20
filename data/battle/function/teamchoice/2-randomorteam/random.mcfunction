tellraw @s ["-----------------------------------------------------\n\n",{"text":"You voted [","bold":false},{"text":"R","bold":true,"color":"light_purple"},{"text":"A","bold":true,"color":"light_purple"},{"text":"ND","bold":true,"color":"gold"},{"text":"OM","bold":true,"color":"green"},{"text":"IZ","bold":true,"color":"yellow"},{"text":"E","bold":true,"color":"red"},{"text":"]","bold":true,"color":"white"},"\n\n-----------------------------------------------------"]
playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.5 1.4
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.3 1.4
scoreboard players add choseRandom: vote_phase 1
tag @s add choseRandom
scoreboard players set @s vote_randomize 0