tellraw @s ["-----------------------------------------------------\n\nYou voted ","[",{"text":"NO","color":"red","bold":true},"]\n\n-----------------------------------------------------"]
playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.5 1.4
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.3 1.4

tag @s add choseNoPart
scoreboard players set @s triggerNoParticipate 0