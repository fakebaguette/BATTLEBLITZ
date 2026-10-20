execute if score .copyRandom randomTeamPick matches 1.. run schedule function battle:teamchoice/3-teampick/end/randomteam 1t
execute if score .copyRandom randomTeamPick matches ..0 run team join Team2 @a[tag=Participant,team=!Team1,team=!Team2]

execute if score .copyRandom randomTeamPick matches ..0 run tellraw @a[tag=Participant] ["-----------------------------------------------------\n\n",{"text":"All players have been placed on teams.","color":"white"},"\n\n",{"text":"TIMES UP!","bold":true,"color":"dark_red"},"\n",{"text":"-----------------------------------------------------","color":"white"}]
execute if score .copyRandom randomTeamPick matches ..0 run execute as @a at @s run playsound minecraft:block.note_block.bell master @a[tag=Participant] ~ ~ ~ 0.5 0.8
execute if score .copyRandom randomTeamPick matches ..0 run execute as @a at @s run playsound minecraft:block.note_block.bit master @a[tag=Participant] ~ ~ ~ 0.3 0.8


execute if score .copyRandom randomTeamPick matches ..0 run scoreboard objectives remove team1
execute if score .copyRandom randomTeamPick matches ..0 run scoreboard objectives remove team2
execute if score .copyRandom randomTeamPick matches ..0 run tag @a[tag=Participant] remove choseTeam1
execute if score .copyRandom randomTeamPick matches ..0 run tag @a[tag=Participant] remove choseTeam2
execute if score .copyRandom randomTeamPick matches ..0 run scoreboard players reset choiceTeamTimer: vote_phase
execute if score .copyRandom randomTeamPick matches ..0 run schedule clear battle:teamchoice/3-teampick/main

execute if score .copyRandom randomTeamPick matches ..0 run function battle:teamchoice/4-color1/main
execute if score .copyRandom randomTeamPick matches ..0 run scoreboard players reset .copyRandom

scoreboard objectives remove vote_pick
scoreboard objectives remove vote_randomize
scoreboard objectives remove team1
scoreboard objectives remove team2