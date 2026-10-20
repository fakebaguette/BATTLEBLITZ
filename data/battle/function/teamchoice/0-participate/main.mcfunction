scoreboard objectives add triggerParticipate trigger
scoreboard objectives add triggerNoParticipate trigger

scoreboard players add .participateTime vote_phase 1
execute if score .participateTime vote_phase matches 1..59 run schedule function battle:teamchoice/0-participate/main 5t
scoreboard objectives add vote_phase dummy

scoreboard players set @a[tag=chosePart] triggerParticipate 0
scoreboard players set @a[tag=chosePart] triggerNoParticipate 0
scoreboard players set @a[tag=choseNoPart] triggerParticipate 0
scoreboard players set @a[tag=choseNoPart] triggerNoParticipate 0
#start
execute if score .participateTime vote_phase matches 2 run tellraw @a ["-----------------------------------------------------\n\nAre you going to ",{"text":"participate","color":"green","bold":true}," in the next game or ",{"text":"not","bold":true,"color":"red"},"?\n\n",{"text":"[","click_event":{"action":"run_command","command":"/trigger triggerParticipate"}},{"text":"YES","click_event":{"action":"run_command","command":"/trigger triggerParticipate"},"bold":true,"color":"green"},{"text":"]","click_event":{"action":"run_command","command":"/trigger triggerParticipate"}},"\n\n",{"text":"[","click_event":{"action":"run_command","command":"/trigger triggerNoParticipate"}},{"text":"NO","click_event":{"action":"run_command","command":"/trigger triggerNoParticipate"},"bold":true,"color":"red"},{"text":"]","click_event":{"action":"run_command","command":"/trigger triggerNoParticipate"}},"\n\n",{"text":"15 SECONDS","color":"yellow","bold":true},"\n-----------------------------------------------------"]
execute if score .participateTime vote_phase matches 2 at @a run playsound minecraft:block.note_block.bell master @a ~ ~ ~ 0.5 1.2
execute if score .participateTime vote_phase matches 2 at @a run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 0.3 1.2

execute if score .participateTime vote_phase matches 3 at @a run playsound minecraft:block.note_block.bell master @a ~ ~ ~ 0.5 1.2
execute if score .participateTime vote_phase matches 3 at @a run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 0.3 1.2

scoreboard players enable @a[tag=!chosePart,tag=!choseNoPart] triggerParticipate
scoreboard players enable @a[tag=!chosePart,tag=!choseNoPart] triggerNoParticipate
#YES
execute as @a[scores={triggerParticipate=1..}] at @s run function battle:teamchoice/0-participate/yes

#NO
execute as @a[scores={triggerNoParticipate=1..}] at @s run function battle:teamchoice/0-participate/no

#NOT VOTED YET
execute if score .participateTime vote_phase matches 40 as @a[tag=!chosePart,tag=!choseNoPart] run tellraw @s ["-----------------------------------------------------\n\nAre you going to ",{"text":"participate","color":"green","bold":true}," in the next game or ",{"text":"not","bold":true,"color":"red"},"?\n\n",{"text":"[","click_event":{"action":"run_command","command":"/trigger triggerParticipate"}},{"text":"YES","click_event":{"action":"run_command","command":"/trigger triggerParticipate"},"bold":true,"color":"green"},{"text":"]","click_event":{"action":"run_command","command":"/trigger triggerParticipate"}},"\n\n",{"text":"[","click_event":{"action":"run_command","command":"/trigger triggerNoParticipate"}},{"text":"NO","click_event":{"action":"run_command","command":"/trigger triggerNoParticipate"},"bold":true,"color":"red"},{"text":"]","click_event":{"action":"run_command","command":"/trigger triggerNoParticipate"}},"\n\n",{"text":"5 SECONDS","color":"red","bold":true},"\n-----------------------------------------------------"]
execute if score .participateTime vote_phase matches 40 at @a run playsound minecraft:block.note_block.bit master @a[tag=!choseNoPart] ~ ~ ~ 0.3 0.8
execute if score .participateTime vote_phase matches 40 at @a run playsound minecraft:block.note_block.bell master @a ~ ~ ~ 0.5 1.2

#SPEEDUP
execute if score .participateTime vote_phase matches 1..55 unless entity @a[tag=!chosePart,tag=!choseNoPart] run tellraw @a ["-----------------------------------------------------\n\n",{"text":"Everyone","color":"green"},{"text":" ","bold":true,"color":"green"},"voted! ",{"text":"Speeding up vote...","color":"gray"},"\n\n-----------------------------------------------------"]
execute if score .participateTime vote_phase matches 1..55 unless entity @a[tag=!chosePart,tag=!choseNoPart] run scoreboard players set .participateTime vote_phase 56

#END
execute if score .participateTime vote_phase matches 60.. run function battle:teamchoice/0-participate/end

execute if score .participateTime vote_phase matches 2 run title @a actionbar ["",{"text":"Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"15 Seconds","color":"yellow"}]
execute if score .participateTime vote_phase matches 4 run title @a actionbar ["",{"text":"Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"14 Seconds","color":"yellow"}]
execute if score .participateTime vote_phase matches 8 run title @a actionbar ["",{"text":"Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"13 Seconds","color":"yellow"}]
execute if score .participateTime vote_phase matches 12 run title @a actionbar ["",{"text":"Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"12 Seconds","color":"yellow"}]
execute if score .participateTime vote_phase matches 16 run title @a actionbar ["",{"text":"Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"11 Seconds","color":"yellow"}]
execute if score .participateTime vote_phase matches 20 run title @a actionbar ["",{"text":"Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"10 Seconds","color":"gold"}]
execute if score .participateTime vote_phase matches 24 run title @a actionbar ["",{"text":"Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"9 Seconds","color":"gold"}]
execute if score .participateTime vote_phase matches 28 run title @a actionbar ["",{"text":"Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"8 Seconds","color":"gold"}]
execute if score .participateTime vote_phase matches 32 run title @a actionbar ["",{"text":"Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"7 Seconds","color":"gold"}]
execute if score .participateTime vote_phase matches 36 run title @a actionbar ["",{"text":"Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"6 Seconds","color":"gold"}]
execute if score .participateTime vote_phase matches 40 run title @a actionbar ["",{"text":"Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"5 Seconds","color":"red"}]
execute if score .participateTime vote_phase matches 44 run title @a actionbar ["",{"text":"Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"4 Seconds","color":"red"}]
execute if score .participateTime vote_phase matches 48 run title @a actionbar ["",{"text":"Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"3 Seconds","color":"red"}]
execute if score .participateTime vote_phase matches 52 run title @a actionbar ["",{"text":"Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"2 Seconds","color":"red"}]
execute if score .participateTime vote_phase matches 56 run title @a actionbar ["",{"text":"Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"1 Second","color":"red"}]
execute if score .participateTime vote_phase matches 60 run title @a actionbar ["",{"text":"Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"TIMES UP!","color":"dark_red"}]