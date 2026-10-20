scoreboard objectives add team1 trigger
scoreboard objectives add team2 trigger

scoreboard players add choiceTeamTimer: vote_phase 1
execute if score choiceTeamTimer: vote_phase matches 1..119 run schedule function battle:teamchoice/3-teampick/main 5t

scoreboard players set @a[tag=choseTeam1] team1 0
scoreboard players set @a[tag=choseTeam1] team2 0
scoreboard players set @a[tag=choseTeam2] team1 0
scoreboard players set @a[tag=choseTeam2] team2 0

#START
execute if score choiceTeamTimer: vote_phase matches 2 run tellraw @a[tag=Participant] ["-----------------------------------------------------\n\nAre you going to join ",{"text":"TEAM 1","color":"dark_gray","bold":true}," or ",{"text":"TEAM 2","bold":true,"color":"gray"},"?\n\n",{"text":"[","click_event":{"action":"run_command","command":"/trigger team1"}},{"text":"TEAM 1","click_event":{"action":"run_command","command":"/trigger team1"},"color":"dark_gray","bold":true},{"text":"]","click_event":{"action":"run_command","command":"/trigger team1"}},"\n\n",{"text":"[","click_event":{"action":"run_command","command":"/trigger team2"}},{"text":"TEAM 2","click_event":{"action":"run_command","command":"/trigger team2"},"color":"gray","bold":true},{"text":"]","click_event":{"action":"run_command","command":"/trigger team2"}},"\n\n",{"text":"30 SECONDS","color":"yellow","bold":true},"\n-----------------------------------------------------"]
execute if score choiceTeamTimer: vote_phase matches 2 at @a[tag=Participant] run playsound minecraft:block.note_block.bell master @a[tag=Participant] ~ ~ ~ 0.5 0.8
execute if score choiceTeamTimer: vote_phase matches 2 at @a[tag=Participant] run playsound minecraft:block.note_block.bit master @a[tag=Participant] ~ ~ ~ 0.3 0.8
scoreboard players enable @a[tag=!choseTeam1,tag=!choseTeam2,tag=Participant] team1
scoreboard players enable @a[tag=!choseTeam1,tag=!choseTeam2,tag=Participant] team2

#TEAM1
execute as @a[scores={team1=1..},tag=Participant] at @s run function battle:teamchoice/3-teampick/team1

#TEAM2
execute as @a[scores={team2=1..},tag=Participant] at @s run function battle:teamchoice/3-teampick/team2

#NOT VOTED YET
execute if score choiceTeamTimer: vote_phase matches 60 as @a[tag=!choseTeam1,tag=!choseTeam2,tag=Participant] run tellraw @s ["-----------------------------------------------------\n\nAre you going to join ",{"text":"TEAM 1","color":"dark_gray","bold":true}," or ",{"text":"TEAM 2","bold":true,"color":"gray"},"?\n\n",{"text":"[","click_event":{"action":"run_command","command":"/trigger team1"}},{"text":"TEAM 1","click_event":{"action":"run_command","command":"/trigger team1"},"color":"dark_gray","bold":true},{"text":"]","click_event":{"action":"run_command","command":"/trigger team1"}},"\n\n",{"text":"[","click_event":{"action":"run_command","command":"/trigger team2"}},{"text":"TEAM 2","click_event":{"action":"run_command","command":"/trigger team2"},"color":"gray","bold":true},{"text":"]","click_event":{"action":"run_command","command":"/trigger team2"}},"\n\n",{"text":"15 SECONDS","color":"gold","bold":true},"\n-----------------------------------------------------"]
execute if score choiceTeamTimer: vote_phase matches 60 at @a run playsound minecraft:block.note_block.bell master @a[tag=Participant] ~ ~ ~ 0.5 0.8
execute if score choiceTeamTimer: vote_phase matches 60 at @a run playsound minecraft:block.note_block.bit master @a[tag=Participant] ~ ~ ~ 0.3 0.8

#SPEEDUP
execute if score choiceTeamTimer: vote_phase matches 1..116 unless entity @a[tag=!choseTeam1,tag=!choseTeam2,tag=Participant] run tellraw @a[tag=Participant] ["-----------------------------------------------------\n\n",{"text":"Everyone","color":"green"},{"text":" ","bold":true,"color":"green"},"voted! ",{"text":"Speeding up vote...","color":"gray"},"\n\n-----------------------------------------------------"]
execute if score choiceTeamTimer: vote_phase matches 1..116 unless entity @a[tag=!choseTeam1,tag=!choseTeam2,tag=Participant] run scoreboard players set choiceTeamTimer: vote_phase 117
execute if score choiceTeamTimer: vote_phase matches 1..116 unless entity @a[tag=!choseTeam1,tag=!choseTeam2,tag=Participant] run title @a[tag=Participant] actionbar ["",{"text":"Pick","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"Speeding up...","color":"gray"}]
#END
execute if score choiceTeamTimer: vote_phase matches 120.. run function battle:teamchoice/3-teampick/end/main

execute if score choiceTeamTimer: vote_phase matches 2 run title @a[tag=Participant] actionbar ["",{"text":"Pick","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"30 Seconds","color":"yellow"}]
execute if score choiceTeamTimer: vote_phase matches 4 run title @a[tag=Participant] actionbar ["",{"text":"Pick","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"29 Seconds","color":"yellow"}]
execute if score choiceTeamTimer: vote_phase matches 8 run title @a[tag=Participant] actionbar ["",{"text":"Pick","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"28 Seconds","color":"yellow"}]
execute if score choiceTeamTimer: vote_phase matches 12 run title @a[tag=Participant] actionbar ["",{"text":"Pick","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"27 Seconds","color":"yellow"}]
execute if score choiceTeamTimer: vote_phase matches 16 run title @a[tag=Participant] actionbar ["",{"text":"Pick","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"26 Seconds","color":"yellow"}]
execute if score choiceTeamTimer: vote_phase matches 20 run title @a[tag=Participant] actionbar ["",{"text":"Pick","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"25 Seconds","color":"yellow"}]
execute if score choiceTeamTimer: vote_phase matches 24 run title @a[tag=Participant] actionbar ["",{"text":"Pick","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"24 Seconds","color":"yellow"}]
execute if score choiceTeamTimer: vote_phase matches 28 run title @a[tag=Participant] actionbar ["",{"text":"Pick","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"23 Seconds","color":"yellow"}]
execute if score choiceTeamTimer: vote_phase matches 32 run title @a[tag=Participant] actionbar ["",{"text":"Pick","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"22 Seconds","color":"yellow"}]
execute if score choiceTeamTimer: vote_phase matches 36 run title @a[tag=Participant] actionbar ["",{"text":"Pick","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"21 Seconds","color":"yellow"}]
execute if score choiceTeamTimer: vote_phase matches 40 run title @a[tag=Participant] actionbar ["",{"text":"Pick","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"20 Seconds","color":"yellow"}]
execute if score choiceTeamTimer: vote_phase matches 44 run title @a[tag=Participant] actionbar ["",{"text":"Pick","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"19 Seconds","color":"yellow"}]
execute if score choiceTeamTimer: vote_phase matches 48 run title @a[tag=Participant] actionbar ["",{"text":"Pick","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"18 Seconds","color":"yellow"}]
execute if score choiceTeamTimer: vote_phase matches 52 run title @a[tag=Participant] actionbar ["",{"text":"Pick","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"17 Seconds","color":"yellow"}]
execute if score choiceTeamTimer: vote_phase matches 56 run title @a[tag=Participant] actionbar ["",{"text":"Pick","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"16 Seconds","color":"yellow"}]
execute if score choiceTeamTimer: vote_phase matches 60 run title @a[tag=Participant] actionbar ["",{"text":"Pick","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"15 Seconds","color":"gold"}]
execute if score choiceTeamTimer: vote_phase matches 64 run title @a[tag=Participant] actionbar ["",{"text":"Pick","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"14 Seconds","color":"gold"}]
execute if score choiceTeamTimer: vote_phase matches 68 run title @a[tag=Participant] actionbar ["",{"text":"Pick","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"13 Seconds","color":"gold"}]
execute if score choiceTeamTimer: vote_phase matches 72 run title @a[tag=Participant] actionbar ["",{"text":"Pick","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"12 Seconds","color":"gold"}]
execute if score choiceTeamTimer: vote_phase matches 76 run title @a[tag=Participant] actionbar ["",{"text":"Pick","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"11 Seconds","color":"gold"}]
execute if score choiceTeamTimer: vote_phase matches 80 run title @a[tag=Participant] actionbar ["",{"text":"Pick","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"10 Seconds","color":"gold"}]
execute if score choiceTeamTimer: vote_phase matches 84 run title @a[tag=Participant] actionbar ["",{"text":"Pick","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"9 Seconds","color":"gold"}]
execute if score choiceTeamTimer: vote_phase matches 88 run title @a[tag=Participant] actionbar ["",{"text":"Pick","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"8 Seconds","color":"gold"}]
execute if score choiceTeamTimer: vote_phase matches 92 run title @a[tag=Participant] actionbar ["",{"text":"Pick","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"7 Seconds","color":"gold"}]
execute if score choiceTeamTimer: vote_phase matches 96 run title @a[tag=Participant] actionbar ["",{"text":"Pick","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"6 Seconds","color":"gold"}]
execute if score choiceTeamTimer: vote_phase matches 100 run title @a[tag=Participant] actionbar ["",{"text":"Pick","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"5 Seconds","color":"red"}]
execute if score choiceTeamTimer: vote_phase matches 104 run title @a[tag=Participant] actionbar ["",{"text":"Pick","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"4 Seconds","color":"red"}]
execute if score choiceTeamTimer: vote_phase matches 108 run title @a[tag=Participant] actionbar ["",{"text":"Pick","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"3 Seconds","color":"red"}]
execute if score choiceTeamTimer: vote_phase matches 112 run title @a[tag=Participant] actionbar ["",{"text":"Pick","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"2 Seconds","color":"red"}]
execute if score choiceTeamTimer: vote_phase matches 116 run title @a[tag=Participant] actionbar ["",{"text":"Pick","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"1 Seconds","color":"red"}]
execute if score choiceTeamTimer: vote_phase matches 120 run title @a[tag=Participant] actionbar ["",{"text":"Pick","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"TIMES UP!","color":"dark_red"}]
