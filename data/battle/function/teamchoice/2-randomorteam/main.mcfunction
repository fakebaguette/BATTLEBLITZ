scoreboard objectives add vote_randomize trigger
scoreboard objectives add vote_pick trigger

scoreboard objectives add vote_phase dummy
scoreboard players add choiceTimer: vote_phase 1
execute if score choiceTimer: vote_phase matches 1..59 run schedule function battle:teamchoice/2-randomorteam/main 5t

scoreboard players set @a[tag=chosePick] vote_randomize 0
scoreboard players set @a[tag=chosePick] vote_pick 0
scoreboard players set @a[tag=choseRandom] vote_randomize 0
scoreboard players set @a[tag=choseRandom] vote_pick 0

scoreboard players add chosePick: vote_phase 0
scoreboard players add choseRandom: vote_phase 0

#start
execute if score choiceTimer: vote_phase matches 2 run tellraw @a[tag=Participant] ["-----------------------------------------------------\n\nDo you want to have the teams ",{"text":"ra","bold":true,"color":"light_purple"},{"text":"nd","bold":true,"color":"gold"},{"text":"om","bold":true,"color":"green"},{"text":"iz","bold":true,"color":"yellow"},{"text":"ed","bold":true,"color":"red"}," or do you\nwant to be able to ",{"text":"pick","bold":true,"color":"gold"}," the teams?\n\n",{"text":"[","bold":true,"color":"white","click_event":{"action":"run_command","command":"/trigger vote_randomize"}},{"text":"RA","bold":true,"color":"light_purple","click_event":{"action":"run_command","command":"/trigger vote_randomize"}},{"text":"ND","bold":true,"color":"gold","click_event":{"action":"run_command","command":"/trigger vote_randomize"}},{"text":"OM","bold":true,"click_event":{"action":"run_command","command":"/trigger vote_randomize"},"color":"green"},{"text":"IZ","bold":true,"click_event":{"action":"run_command","command":"/trigger vote_randomize"},"color":"yellow"},{"text":"E","bold":true,"click_event":{"action":"run_command","command":"/trigger vote_randomize"},"color":"red"},{"text":"]","bold":true,"click_event":{"action":"run_command","command":"/trigger vote_randomize"},"color":"white"},"\n\n",{"text":"[","bold":true,"color":"white","click_event":{"action":"run_command","command":"/trigger vote_pick"}},{"text":"PICK","bold":true,"click_event":{"action":"run_command","command":"/trigger vote_pick"},"color":"gold"},{"text":"]","bold":true,"click_event":{"action":"run_command","command":"/trigger vote_pick"},"color":"white"},"\n\n",{"text":"15 SECONDS","bold":true,"color":"yellow"},"\n-----------------------------------------------------"]
execute if score choiceTimer: vote_phase matches 2 run tellraw @a[tag=Participant] ["",{"text":"Tip: You can speedup a vote if everyone votes!","color":"gray"}]
execute if score choiceTimer: vote_phase matches 2 at @a[tag=Participant] run playsound minecraft:block.note_block.bell master @a[tag=Participant] ~ ~ ~ 0.5 0.8
execute if score choiceTimer: vote_phase matches 2 at @a[tag=Participant] run playsound minecraft:block.note_block.bit master @a[tag=Participant] ~ ~ ~ 0.3 0.8
scoreboard players enable @a[tag=!choseRandom,tag=!chosePick,tag=Participant] vote_randomize
scoreboard players enable @a[tag=!choseRandom,tag=!chosePick,tag=Participant] vote_pick

#RANDOMIZE
execute as @a[scores={vote_randomize=1..}] at @s run function battle:teamchoice/2-randomorteam/random

#PICK
execute as @a[scores={vote_pick=1..}] at @s run function battle:teamchoice/2-randomorteam/pick

#SPEEDUP
execute if score choiceTimer: vote_phase matches 1..56 unless entity @a[tag=!choseRandom,tag=!chosePick,tag=Participant] run tellraw @a[tag=Participant] ["-----------------------------------------------------\n\n",{"text":"Everyone","color":"green"},{"text":" ","bold":true,"color":"green"},"voted! ",{"text":"Speeding up vote...","color":"gray"},"\n\n-----------------------------------------------------"]
execute if score choiceTimer: vote_phase matches 1..56 unless entity @a[tag=!choseRandom,tag=!chosePick,tag=Participant] run scoreboard players set choiceTimer: vote_phase 57
execute if score choiceTimer: vote_phase matches 1..56 unless entity @a[tag=!choseRandom,tag=!chosePick,tag=Participant] run title @a[tag=Participant] actionbar ["",{"text":"Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"Speeding up...","color":"gray"}]
#END


execute if score choiceTimer: vote_phase matches 60 run function battle:teamchoice/2-randomorteam/end/main


execute if score choiceTimer: vote_phase matches 2 run title @a[tag=Participant] actionbar ["",{"text":"Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"15 Seconds","color":"yellow"}]
execute if score choiceTimer: vote_phase matches 4 run title @a[tag=Participant] actionbar ["",{"text":"Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"14 Seconds","color":"yellow"}]
execute if score choiceTimer: vote_phase matches 8 run title @a[tag=Participant] actionbar ["",{"text":"Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"13 Seconds","color":"yellow"}]
execute if score choiceTimer: vote_phase matches 12 run title @a[tag=Participant] actionbar ["",{"text":"Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"12 Seconds","color":"yellow"}]
execute if score choiceTimer: vote_phase matches 16 run title @a[tag=Participant] actionbar ["",{"text":"Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"11 Seconds","color":"yellow"}]
execute if score choiceTimer: vote_phase matches 20 run title @a[tag=Participant] actionbar ["",{"text":"Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"10 Seconds","color":"gold"}]
execute if score choiceTimer: vote_phase matches 24 run title @a[tag=Participant] actionbar ["",{"text":"Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"9 Seconds","color":"gold"}]
execute if score choiceTimer: vote_phase matches 28 run title @a[tag=Participant] actionbar ["",{"text":"Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"8 Seconds","color":"gold"}]
execute if score choiceTimer: vote_phase matches 32 run title @a[tag=Participant] actionbar ["",{"text":"Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"7 Seconds","color":"gold"}]
execute if score choiceTimer: vote_phase matches 36 run title @a[tag=Participant] actionbar ["",{"text":"Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"6 Seconds","color":"gold"}]
execute if score choiceTimer: vote_phase matches 40 run title @a[tag=Participant] actionbar ["",{"text":"Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"5 Seconds","color":"red"}]
execute if score choiceTimer: vote_phase matches 44 run title @a[tag=Participant] actionbar ["",{"text":"Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"4 Seconds","color":"red"}]
execute if score choiceTimer: vote_phase matches 48 run title @a[tag=Participant] actionbar ["",{"text":"Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"3 Seconds","color":"red"}]
execute if score choiceTimer: vote_phase matches 52 run title @a[tag=Participant] actionbar ["",{"text":"Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"2 Seconds","color":"red"}]
execute if score choiceTimer: vote_phase matches 56 run title @a[tag=Participant] actionbar ["",{"text":"Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"1 Seconds","color":"red"}]
execute if score choiceTimer: vote_phase matches 60 run title @a[tag=Participant] actionbar ["",{"text":"Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"TIMES UP!","color":"dark_red"}]
