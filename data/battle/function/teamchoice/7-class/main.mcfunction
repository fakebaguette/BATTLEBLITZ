scoreboard players add choose_class_timer: vote_phase 1
execute if score choose_class_timer: vote_phase matches 1..180 run schedule function battle:teamchoice/7-class/main 5t
function battle:gameobjective/gameobjectiveextra/update/updatescoreboards
function battle:gameobjective/gameobjectiveextra/gamecheck
execute as @a[tag=Participant] at @s run function battle:gameobjective/gameobjectiveextra/escape_box

#START
scoreboard players enable @a[tag=!chose_class,tag=Participant] vote_random
scoreboard players enable @a[tag=!chose_class,tag=Participant] vote_lightwielder
scoreboard players enable @a[tag=!chose_class,tag=Participant] vote_marauder
scoreboard players enable @a[tag=!chose_class,tag=Participant] vote_legionnaire
scoreboard players enable @a[tag=!chose_class,tag=Participant] vote_venator
scoreboard players enable @a[tag=!chose_class,tag=Participant] vote_conjurer
scoreboard players enable @a[tag=!chose_class,tag=Participant] vote_revenant
scoreboard players enable @a[tag=!chose_class,tag=Participant] vote_magus
scoreboard players enable @a[tag=!chose_class,tag=Participant] vote_trapshooter
scoreboard players enable @a[tag=!chose_class,tag=Participant] vote_northman
scoreboard players enable @a[tag=!chose_class,tag=Participant] vote_praetorian
scoreboard players enable @a[tag=!chose_class,tag=Participant] vote_prospector
scoreboard players enable @a[tag=!chose_class,tag=Participant] vote_cavalier
scoreboard players enable @a[tag=!chose_class,tag=Participant] vote_seacharger


execute if score choose_class_timer: vote_phase matches 3 as @a[tag=Participant] run function battle:teamchoice/7-class/open_dialog/use
execute if score choose_class_timer: vote_phase matches 3 at @a[tag=Participant] run playsound minecraft:block.note_block.bit master @a[tag=Participant] ~ ~ ~ 0.3 0.8

#CLOCK
execute if score choose_class_timer: vote_phase matches 1..180 run function battle:teamchoice/7-class/run

#SPEEDUP
execute if score choose_class_timer: vote_phase matches 1..176 unless entity @a[tag=!chose_class,tag=Participant] run scoreboard players set .classSpeedup vote_phase 1
execute if score choose_class_timer: vote_phase matches 1..176 if score .classSpeedup vote_phase matches 1 run tellraw @a[tag=Participant] ["-----------------------------------------------------\n\n",{"text":"Everyone","color":"green"},{"text":" ","bold":true,"color":"green"},"chose a class! ",{"text":"Speeding up vote...","color":"gray"},"\n\n-----------------------------------------------------"]
execute if score choose_class_timer: vote_phase matches 1..176 if score .classSpeedup vote_phase matches 1 run scoreboard players set choose_class_timer: vote_phase 177
execute if score choose_class_timer: vote_phase matches 1..176 if score .classSpeedup vote_phase matches 1 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"Speeding up...","color":"gray"}]

#END
execute if score choose_class_timer: vote_phase matches 180 run function battle:teamchoice/7-class/end

execute if score choose_class_timer: vote_phase matches 2 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"45 Seconds","color":"yellow"}]
execute if score choose_class_timer: vote_phase matches 4 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"44 Seconds","color":"yellow"}]
execute if score choose_class_timer: vote_phase matches 8 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"43 Seconds","color":"yellow"}]
execute if score choose_class_timer: vote_phase matches 12 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"42 Seconds","color":"yellow"}]
execute if score choose_class_timer: vote_phase matches 16 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"41 Seconds","color":"yellow"}]
execute if score choose_class_timer: vote_phase matches 20 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"40 Seconds","color":"yellow"}]
execute if score choose_class_timer: vote_phase matches 24 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"39 Seconds","color":"yellow"}]
execute if score choose_class_timer: vote_phase matches 28 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"38 Seconds","color":"yellow"}]
execute if score choose_class_timer: vote_phase matches 32 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"37 Seconds","color":"yellow"}]
execute if score choose_class_timer: vote_phase matches 36 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"36 Seconds","color":"yellow"}]
execute if score choose_class_timer: vote_phase matches 40 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"35 Seconds","color":"yellow"}]
execute if score choose_class_timer: vote_phase matches 44 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"34 Seconds","color":"yellow"}]
execute if score choose_class_timer: vote_phase matches 48 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"33 Seconds","color":"yellow"}]
execute if score choose_class_timer: vote_phase matches 52 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"32 Seconds","color":"yellow"}]
execute if score choose_class_timer: vote_phase matches 56 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"31 Seconds","color":"yellow"}]
execute if score choose_class_timer: vote_phase matches 60 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"30 Seconds","color":"gold"}]
execute if score choose_class_timer: vote_phase matches 64 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"29 Seconds","color":"gold"}]
execute if score choose_class_timer: vote_phase matches 68 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"28 Seconds","color":"gold"}]
execute if score choose_class_timer: vote_phase matches 72 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"27 Seconds","color":"gold"}]
execute if score choose_class_timer: vote_phase matches 76 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"26 Seconds","color":"gold"}]
execute if score choose_class_timer: vote_phase matches 80 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"25 Seconds","color":"gold"}]
execute if score choose_class_timer: vote_phase matches 84 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"24 Seconds","color":"gold"}]
execute if score choose_class_timer: vote_phase matches 88 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"23 Seconds","color":"gold"}]
execute if score choose_class_timer: vote_phase matches 92 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"22 Seconds","color":"gold"}]
execute if score choose_class_timer: vote_phase matches 96 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"21 Seconds","color":"gold"}]
execute if score choose_class_timer: vote_phase matches 100 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"20 Seconds","color":"gold"}]
execute if score choose_class_timer: vote_phase matches 104 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"19 Seconds","color":"gold"}]
execute if score choose_class_timer: vote_phase matches 108 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"18 Seconds","color":"gold"}]
execute if score choose_class_timer: vote_phase matches 112 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"17 Seconds","color":"gold"}]
execute if score choose_class_timer: vote_phase matches 116 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"16 Seconds","color":"gold"}]
execute if score choose_class_timer: vote_phase matches 120 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"15 Seconds","color":"red"}]
execute if score choose_class_timer: vote_phase matches 124 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"14 Seconds","color":"red"}]
execute if score choose_class_timer: vote_phase matches 128 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"13 Seconds","color":"red"}]
execute if score choose_class_timer: vote_phase matches 132 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"12 Seconds","color":"red"}]
execute if score choose_class_timer: vote_phase matches 136 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"11 Seconds","color":"red"}]
execute if score choose_class_timer: vote_phase matches 140 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"10 Seconds","color":"red"}]
execute if score choose_class_timer: vote_phase matches 144 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"9 Seconds","color":"red"}]
execute if score choose_class_timer: vote_phase matches 148 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"8 Seconds","color":"red"}]
execute if score choose_class_timer: vote_phase matches 152 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"7 Seconds","color":"red"}]
execute if score choose_class_timer: vote_phase matches 156 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"6 Seconds","color":"red"}]
execute if score choose_class_timer: vote_phase matches 160 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"5 Seconds","color":"red"}]
execute if score choose_class_timer: vote_phase matches 164 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"4 Seconds","color":"red"}]
execute if score choose_class_timer: vote_phase matches 168 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"3 Seconds","color":"red"}]
execute if score choose_class_timer: vote_phase matches 172 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"2 Seconds","color":"red"}]
execute if score choose_class_timer: vote_phase matches 176 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"1 Seconds","color":"red"}]
execute if score choose_class_timer: vote_phase matches 179 run title @a[tag=Participant] actionbar ["",{"text":"Select","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"TIMES UP!","color":"dark_red"}]