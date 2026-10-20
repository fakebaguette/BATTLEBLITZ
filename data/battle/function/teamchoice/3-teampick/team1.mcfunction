#TEAM 1
tellraw @s ["-----------------------------------------------------\n\n",{"text":"You have joined ","color":"white"},{"text":"[","color":"white","bold":true},{"text":"TEAM 1","color":"dark_gray","bold":true},{"text":"]","color":"white","bold":true},{"text":"!","color":"white"},"\n\n",{"text":"TIMES UP!","bold":true,"color":"dark_red"},"\n",{"text":"-----------------------------------------------------","color":"white"}]
playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.5 1.4
playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.3 1.4

tag @s add choseTeam1
scoreboard players set @s team1 0
scoreboard players set @s team2 0
team join Team1 @s