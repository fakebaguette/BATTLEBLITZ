execute at @a run playsound minecraft:block.note_block.bell master @a[tag=!choseNoPart] ~ ~ ~ 0.5 1.4
execute at @a run playsound minecraft:block.note_block.bit master @a[tag=!choseNoPart] ~ ~ ~ 0.3 1.4

#NO ONE VOTED
scoreboard players add chosePart: vote_phase 0
scoreboard players add choseNoPart: vote_phase 0

execute if score chosePart: vote_phase matches 0 if score choseNoPart: vote_phase matches 0 run tellraw @a ["-----------------------------------------------------\n\n",{"text":"No one voted to participate.","color":"red"},{"text":" Game will cancel.","color":"white"},"\n\n",{"text":"TIMES UP!","bold":true,"color":"dark_red"},"\n",{"text":"-----------------------------------------------------","color":"white"}]

#NOT ENOUGH
execute if score chosePart: vote_phase matches 1 run tellraw @a ["-----------------------------------------------------\n\n",{"text":"Not enough people are participating.","color":"red"},{"text":" Game will cancel.","color":"white"},"\n\n",{"text":"TIMES UP!","bold":true,"color":"dark_red"},"\n",{"text":"-----------------------------------------------------","color":"white"}]

#MSG TO NO PART
execute if score chosePart: vote_phase matches 2.. run tellraw @a[tag=choseNoPart] ["-----------------------------------------------------\n\n",{"text":"You did not participate.","color":"red"},{"text":" Game will continue for the participants.","color":"white"},"\n\n",{"text":"TIMES UP!","bold":true,"color":"dark_red"},"\n",{"text":"-----------------------------------------------------","color":"white"}]

#NEXT
execute if score chosePart: vote_phase matches 2.. run tellraw @a[tag=Participant] ["-----------------------------------------------------\n\n",{"text":"You voted to participate.","color":"green"},{"text":" Game will continue.","color":"white"},"\n\n",{"text":"TIMES UP!","bold":true,"color":"dark_red"},"\n",{"text":"-----------------------------------------------------","color":"white"}]
execute if score chosePart: vote_phase matches 2.. run tag @a[tag=chosePart] add Participant
execute if score chosePart: vote_phase matches 2.. run tellraw @a[tag=chosePart] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Game settings have been ","color":"white"},{"text":"locked","color":"red"},{"text":"!","color":"white"}]
execute if score chosePart: vote_phase matches 2.. run function battle:teamchoice/2-randomorteam/main
scoreboard objectives remove triggerParticipate
scoreboard objectives remove triggerNoParticipate
scoreboard players reset chosePart: vote_phase
scoreboard players reset choseNoPart: vote_phase
scoreboard players reset .participateTime vote_phase
tag @a remove chosePart
tag @a remove choseNoPart
gamemode adventure @a[tag=Participant]
schedule clear battle:teamchoice/0-participate/main

scoreboard objectives remove triggerParticipate
scoreboard objectives remove triggerNoParticipate