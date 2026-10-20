tellraw @s ["-----------------------------------------------------\n\n",{"text":"You voted [","bold":false},{"text":"PICK","bold":true,"color":"gold"},{"text":"]","bold":true,"color":"white"},"\n\n-----------------------------------------------------"]
playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.5 1.4
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.3 1.4
scoreboard players add chosePick: vote_phase 1
tag @s add chosePick
scoreboard players set @s vote_pick 0