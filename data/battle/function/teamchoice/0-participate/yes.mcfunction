tellraw @s ["-----------------------------------------------------\n\nYou voted ","[",{"text":"YES","color":"green","bold":true},"]\n\n-----------------------------------------------------"]
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.3 1.4
playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.5 1.4

tag @s add chosePart
scoreboard players add chosePart: vote_phase 1
scoreboard players set @s triggerParticipate 0