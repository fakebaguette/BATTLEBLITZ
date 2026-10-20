scoreboard objectives add randomTeamOrRandomize dummy
execute store result score .random randomTeamOrRandomize run random value 1..2

#TIE - RANDOMIZE
execute unless score choseRandom: vote_phase matches 0 unless score chosePick: vote_phase matches 0 if score choseRandom: vote_phase = chosePick: vote_phase run tellraw @a[tag=Participant] ["-----------------------------------------------------\n\n",{"text":"The vote was tied. The vote will ","color":"white"},{"text":"randomize","color":"light_purple","bold":true},{"text":".","color":"white"},"\n\n",{"text":"TIMES UP!","bold":true,"color":"dark_red"},"\n",{"text":"-----------------------------------------------------","color":"white"}]
execute unless score choseRandom: vote_phase matches 0 unless score chosePick: vote_phase matches 0 if score choseRandom: vote_phase = chosePick: vote_phase if score .random randomTeamOrRandomize matches 1 run scoreboard players add choseRandom: vote_phase 1
execute unless score choseRandom: vote_phase matches 0 unless score chosePick: vote_phase matches 0 if score choseRandom: vote_phase = chosePick: vote_phase if score .random randomTeamOrRandomize matches 2 run scoreboard players add chosePick: vote_phase 1

#RANDOMIZE WINS
scoreboard objectives add randomTeamRandomize dummy
scoreboard players operation .copyRandom randomTeamRandomize = #ofplayers: vote_phase
scoreboard players set .divide randomTeamRandomize 2
scoreboard players operation .copyRandom randomTeamRandomize /= .divide randomTeamRandomize
execute if score choseRandom: vote_phase > chosePick: vote_phase run function battle:teamchoice/2-randomorteam/end/randomend

#PICK WIN
execute if score choseRandom: vote_phase < chosePick: vote_phase run tellraw @a[tag=Participant] ["-----------------------------------------------------\n\nYou will be able to",{"text":" [","bold":true},{"text":"PICK","bold":true,"color":"gold"},{"text":"] ","bold":true,"color":"white"},{"text":"your teams!","color":"white"},"\n\n",{"text":"TIMES UP!","bold":true,"color":"dark_red"},"\n-----------------------------------------------------"]
execute if score choseRandom: vote_phase < chosePick: vote_phase run function battle:teamchoice/3-teampick/main

#NO VOTE, RANDOMIZE
execute if score choseRandom: vote_phase matches 0 if score chosePick: vote_phase matches 0 run tellraw @a[tag=Participant] ["-----------------------------------------------------\n\nNot enough votes. Teams will be",{"text":" [","bold":true},{"text":"R","bold":true,"color":"light_purple"},{"text":"A","bold":true,"color":"light_purple"},{"text":"ND","bold":true,"color":"gold"},{"text":"OM","bold":true,"color":"green"},{"text":"IZ","bold":true,"color":"yellow"},{"text":"ED","bold":true,"color":"red"},{"text":"]","bold":true,"color":"white"},{"text":"!","color":"white"},"\n\n",{"text":"TIMES UP!","bold":true,"color":"dark_red"},"\n-----------------------------------------------------"]
execute if score choseRandom: vote_phase matches 0 if score chosePick: vote_phase matches 0 run function battle:teamchoice/2-randomorteam/end/randomend

#END, NEXT
execute at @a run playsound minecraft:block.note_block.bell master @a[tag=Participant] ~ ~ ~ 0.5 1.4
execute at @a run playsound minecraft:block.note_block.bit master @a[tag=Participant] ~ ~ ~ 0.3 1.4
scoreboard objectives remove vote_randomize
scoreboard objectives remove vote_pick
tag @a remove choseRandom
tag @a remove chosePick
scoreboard players reset choseRandom: vote_phase
scoreboard players reset chosePick: vote_phase
scoreboard players reset choiceTimer: vote_phase
schedule clear battle:teamchoice/2-randomorteam/main