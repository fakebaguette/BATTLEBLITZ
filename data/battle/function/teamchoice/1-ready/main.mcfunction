schedule function battle:teamchoice/1-ready/main 2t

execute if score .ready vote_phase matches ..1 unless entity @a[tag=Participant] if score .readyTime vote_phase matches 1.. run playsound minecraft:block.note_block.cow_bell master @a ~ ~ ~ 10 0.6
execute if score .ready vote_phase matches ..1 unless entity @a[tag=Participant] if score .readyTime vote_phase matches 1.. run tellraw @a ["-----------------------------------------------------\n\nThe ready timer has ",{"text":"canceled","bold":true,"color":"red"},"! Not enough players.\n\n-----------------------------------------------------"]
execute if score .ready vote_phase matches ..1 unless entity @a[tag=Participant] if score .readyTime vote_phase matches 1.. run scoreboard players reset .readyTime vote_phase
execute if score .ready vote_phase matches 2.. unless entity @a[tag=Participant] run scoreboard players add .readyTime vote_phase 1
execute if score .readyTime vote_phase matches 10 run tag @a[team=Ready] add Participant
execute if score .readyTime vote_phase matches 10 run tellraw @a ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Game settings have been ","color":"white"},{"text":"locked","color":"red"},{"text":"!","color":"white"}]

execute if score .readyTime vote_phase matches 10 if score .toggle toggleQuick matches 1 run function battle:teamchoice/1-ready/quickmatch
execute if score .readyTime vote_phase matches 10 if score .toggle toggleQuick matches 2 run function battle:teamchoice/2-randomorteam/main
execute if score .readyTime vote_phase matches 10 run scoreboard players reset .ready vote_phase
execute if score .readyTime vote_phase matches 10 run scoreboard players reset .readyTime vote_phase
#
execute if score .readyTime vote_phase matches 01 run tellraw @a[team=!Ready] ["-----------------------------------------------------\n\nThe game will start in ",{"text":"15 seconds","bold":true,"color":"yellow"},"! ",{"text":"Ready up","color":"green","bold":true}," to join!\n\n-----------------------------------------------------"]
execute if score .readyTime vote_phase matches 50 run tellraw @a[team=!Ready] ["-----------------------------------------------------\n\nThe game will start in ",{"text":"10 seconds","bold":true,"color":"gold"},"! ",{"text":"Ready up","color":"green","bold":true}," to join!\n\n-----------------------------------------------------"]
execute if score .readyTime vote_phase matches 100 run tellraw @a[team=!Ready] ["-----------------------------------------------------\n\nThe game will start in ",{"text":"5 seconds","bold":true,"color":"red"},"! ",{"text":"Ready up","color":"green","bold":true}," to join!\n\n-----------------------------------------------------"]

execute if score .readyTime vote_phase matches 01 run playsound minecraft:block.note_block.bell master @a ~ ~ ~ 0.5 0.8
execute if score .readyTime vote_phase matches 01 run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 0.3 0.8

execute if score .readyTime vote_phase matches 50 run playsound minecraft:block.note_block.bell master @a ~ ~ ~ 0.5 0.8
execute if score .readyTime vote_phase matches 50 run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 0.3 0.8

execute if score .readyTime vote_phase matches 100 run playsound minecraft:block.note_block.bell master @a ~ ~ ~ 0.5 0.8
execute if score .readyTime vote_phase matches 100 run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 0.3 0.8

execute if score .readyTime vote_phase matches 01 run title @a actionbar ["",{"text":"Game begins in","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"15 Seconds","color":"yellow"}]
execute if score .readyTime vote_phase matches 10 run title @a actionbar ["",{"text":"Game begins in","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"14 Seconds","color":"yellow"}]
execute if score .readyTime vote_phase matches 20 run title @a actionbar ["",{"text":"Game begins in","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"13 Seconds","color":"yellow"}]
execute if score .readyTime vote_phase matches 30 run title @a actionbar ["",{"text":"Game begins in","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"12 Seconds","color":"yellow"}]
execute if score .readyTime vote_phase matches 40 run title @a actionbar ["",{"text":"Game begins in","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"11 Seconds","color":"yellow"}]
execute if score .readyTime vote_phase matches 50 run title @a actionbar ["",{"text":"Game begins in","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"10 Seconds","color":"gold"}]
execute if score .readyTime vote_phase matches 60 run title @a actionbar ["",{"text":"Game begins in","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"9 Seconds","color":"gold"}]
execute if score .readyTime vote_phase matches 70 run title @a actionbar ["",{"text":"Game begins in","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"8 Seconds","color":"gold"}]
execute if score .readyTime vote_phase matches 80 run title @a actionbar ["",{"text":"Game begins in","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"7 Seconds","color":"gold"}]
execute if score .readyTime vote_phase matches 90 run title @a actionbar ["",{"text":"Game begins in","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"6 Seconds","color":"gold"}]
execute if score .readyTime vote_phase matches 100 run title @a actionbar ["",{"text":"Game begins in","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"5 Seconds","color":"red"}]
execute if score .readyTime vote_phase matches 110 run title @a actionbar ["",{"text":"Game begins in","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"4 Seconds","color":"red"}]
execute if score .readyTime vote_phase matches 120 run title @a actionbar ["",{"text":"Game begins in","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"3 Seconds","color":"red"}]
execute if score .readyTime vote_phase matches 130 run title @a actionbar ["",{"text":"Game begins in","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"2 Seconds","color":"red"}]
execute if score .readyTime vote_phase matches 140 run title @a actionbar ["",{"text":"Game begins in","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"1 Second","color":"red"}]
execute if score .readyTime vote_phase matches 150 run title @a actionbar ["",{"text":"Game begins in","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"TIMES UP!","color":"dark_red"}]

