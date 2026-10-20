scoreboard objectives add vote_red trigger
scoreboard objectives add vote_mag trigger
scoreboard objectives add vote_aqu trigger
scoreboard objectives add vote_lim trigger
scoreboard objectives add vote_gol trigger
scoreboard objectives add vote_yel trigger

scoreboard players add choiceTeam2ColorTimer: vote_phase 1
execute if score choiceTeam2ColorTimer: vote_phase matches 1..40 run schedule function battle:teamchoice/5-color2/main 5t
function battle:gameobjective/gameobjectiveextra/gamecheck

execute if score choiceTeam2ColorTimer: vote_phase matches 2 run tellraw @a[tag=Participant,team=Team2] ["-----------------------------------------------------\n\nVote on a color for your team (Team 2).\n\n","[",{"text":"RED | 🔥","click_event":{"action":"run_command","command":"/trigger vote_red"},"color":"red","bold":true},"] ","[",{"text":"MAGENTA | 🐖","click_event":{"action":"run_command","command":"/trigger vote_mag"},"color":"light_purple","bold":true},"] ","[",{"text":"AQUA | 🐟","click_event":{"action":"run_command","command":"/trigger vote_aqu"},"color":"aqua","bold":true},"] ","[",{"text":"LIME | 🐲","click_event":{"action":"run_command","command":"/trigger vote_lim"},"color":"green","bold":true},"] ","[",{"text":"GOLD | 🐒","click_event":{"action":"run_command","command":"/trigger vote_gol"},"color":"gold","bold":true},"] ","[",{"text":"YELLOW | 🍪","click_event":{"action":"run_command","command":"/trigger vote_yel"},"color":"yellow","bold":true},"]\n\n",{"text":"10 SECONDS","bold":true,"color":"yellow"},"\n-----------------------------------------------------"]
execute if score choiceTeam2ColorTimer: vote_phase matches 2 at @a[tag=Participant,team=Team2] run playsound minecraft:block.note_block.bit master @a[tag=Participant,team=Team2] ~ ~ ~ 0.3 0.8

execute if score choiceTeam2ColorTimer: vote_phase matches 2 run tellraw @a[tag=Participant,tag=Team1] ["-----------------------------------------------------\n\nTeam 2 is currently voting for their color.\n\n",{"text":"10 SECONDS","bold":true,"color":"yellow"},"\n\n-----------------------------------------------------"]
execute if score choiceTeam2ColorTimer: vote_phase matches 2 at @a[tag=Participant,tag=Team1] run playsound minecraft:block.note_block.bit master @a[tag=Participant,team=Team2] ~ ~ ~ 0.3 0.8

scoreboard players enable @a[tag=!vote_red,tag=!vote_mag,tag=!vote_aqu,tag=!vote_lim,tag=!vote_gol,tag=!vote_yel,tag=Participant,team=Team2] vote_red
scoreboard players enable @a[tag=!vote_red,tag=!vote_mag,tag=!vote_aqu,tag=!vote_lim,tag=!vote_gol,tag=!vote_yel,tag=Participant,team=Team2] vote_mag
scoreboard players enable @a[tag=!vote_red,tag=!vote_mag,tag=!vote_aqu,tag=!vote_lim,tag=!vote_gol,tag=!vote_yel,tag=Participant,team=Team2] vote_aqu
scoreboard players enable @a[tag=!vote_red,tag=!vote_mag,tag=!vote_aqu,tag=!vote_lim,tag=!vote_gol,tag=!vote_yel,tag=Participant,team=Team2] vote_lim
scoreboard players enable @a[tag=!vote_red,tag=!vote_mag,tag=!vote_aqu,tag=!vote_lim,tag=!vote_gol,tag=!vote_yel,tag=Participant,team=Team2] vote_gol
scoreboard players enable @a[tag=!vote_red,tag=!vote_mag,tag=!vote_aqu,tag=!vote_lim,tag=!vote_gol,tag=!vote_yel,tag=Participant,team=Team2] vote_yel

scoreboard players set @a[tag=vote_red] vote_red 0
scoreboard players set @a[tag=vote_red] vote_mag 0
scoreboard players set @a[tag=vote_red] vote_aqu 0
scoreboard players set @a[tag=vote_red] vote_lim 0
scoreboard players set @a[tag=vote_red] vote_gol 0
scoreboard players set @a[tag=vote_red] vote_yel 0

scoreboard players set @a[tag=vote_mag] vote_red 0
scoreboard players set @a[tag=vote_mag] vote_mag 0
scoreboard players set @a[tag=vote_mag] vote_aqu 0
scoreboard players set @a[tag=vote_mag] vote_lim 0
scoreboard players set @a[tag=vote_mag] vote_gol 0
scoreboard players set @a[tag=vote_mag] vote_yel 0

scoreboard players set @a[tag=vote_aqu] vote_red 0
scoreboard players set @a[tag=vote_aqu] vote_mag 0
scoreboard players set @a[tag=vote_aqu] vote_aqu 0
scoreboard players set @a[tag=vote_aqu] vote_lim 0
scoreboard players set @a[tag=vote_aqu] vote_gol 0
scoreboard players set @a[tag=vote_aqu] vote_yel 0

scoreboard players set @a[tag=vote_lim] vote_red 0
scoreboard players set @a[tag=vote_lim] vote_mag 0
scoreboard players set @a[tag=vote_lim] vote_aqu 0
scoreboard players set @a[tag=vote_lim] vote_lim 0
scoreboard players set @a[tag=vote_lim] vote_gol 0
scoreboard players set @a[tag=vote_lim] vote_yel 0

scoreboard players set @a[tag=vote_gol] vote_red 0
scoreboard players set @a[tag=vote_gol] vote_mag 0
scoreboard players set @a[tag=vote_gol] vote_aqu 0
scoreboard players set @a[tag=vote_gol] vote_lim 0
scoreboard players set @a[tag=vote_gol] vote_gol 0
scoreboard players set @a[tag=vote_gol] vote_yel 0

scoreboard players set @a[tag=vote_yel] vote_red 0
scoreboard players set @a[tag=vote_yel] vote_mag 0
scoreboard players set @a[tag=vote_yel] vote_aqu 0
scoreboard players set @a[tag=vote_yel] vote_lim 0
scoreboard players set @a[tag=vote_yel] vote_gol 0
scoreboard players set @a[tag=vote_yel] vote_yel 0

scoreboard players set @a[tag=Team1] vote_red 0
scoreboard players set @a[tag=Team1] vote_mag 0
scoreboard players set @a[tag=Team1] vote_aqu 0
scoreboard players set @a[tag=Team1] vote_lim 0
scoreboard players set @a[tag=Team1] vote_gol 0
scoreboard players set @a[tag=Team1] vote_yel 0

#CLOCK
execute if score choiceTeam2ColorTimer: vote_phase matches 2..40 run function battle:teamchoice/5-color2/run

#SPEEDUP
execute if score choiceTeam2ColorTimer: vote_phase matches 1..36 unless entity @a[tag=!vote_red,tag=!vote_mag,tag=!vote_aqu,tag=!vote_lim,tag=!vote_gol,tag=!vote_yel,team=Team2,tag=Participant] run tellraw @a[tag=Participant] ["-----------------------------------------------------\n\n",{"text":"Everyone","color":"green"},{"text":" ","bold":true,"color":"green"},"voted! ",{"text":"Speeding up vote...","color":"gray"},"\n\n-----------------------------------------------------"]
execute if score choiceTeam2ColorTimer: vote_phase matches 1..36 unless entity @a[tag=!vote_red,tag=!vote_mag,tag=!vote_aqu,tag=!vote_lim,tag=!vote_gol,tag=!vote_yel,team=Team2,tag=Participant] run scoreboard players set choiceTeam2ColorTimer: vote_phase 37
execute if score choiceTeam2ColorTimer: vote_phase matches 1..36 unless entity @a[tag=!vote_red,tag=!vote_mag,tag=!vote_aqu,tag=!vote_lim,tag=!vote_gol,tag=!vote_yel,team=Team2,tag=Participant] run title @a[tag=Participant] actionbar ["",{"text":"Team 2 Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"Speeding up...","color":"gray"}]

#END
execute if score choiceTeam2ColorTimer: vote_phase matches 40 run function battle:teamchoice/5-color2/end

execute if score choiceTeam2ColorTimer: vote_phase matches 2 run title @a[tag=Participant] actionbar ["",{"text":"Team 2 Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"10 Seconds","color":"yellow"}]
execute if score choiceTeam2ColorTimer: vote_phase matches 4 run title @a[tag=Participant] actionbar ["",{"text":"Team 2 Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"9 Seconds","color":"yellow"}]
execute if score choiceTeam2ColorTimer: vote_phase matches 8 run title @a[tag=Participant] actionbar ["",{"text":"Team 2 Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"8 Seconds","color":"gold"}]
execute if score choiceTeam2ColorTimer: vote_phase matches 12 run title @a[tag=Participant] actionbar ["",{"text":"Team 2 Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"7 Seconds","color":"gold"}]
execute if score choiceTeam2ColorTimer: vote_phase matches 16 run title @a[tag=Participant] actionbar ["",{"text":"Team 2 Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"6 Seconds","color":"gold"}]
execute if score choiceTeam2ColorTimer: vote_phase matches 20 run title @a[tag=Participant] actionbar ["",{"text":"Team 2 Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"5 Seconds","color":"red"}]
execute if score choiceTeam2ColorTimer: vote_phase matches 24 run title @a[tag=Participant] actionbar ["",{"text":"Team 2 Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"4 Seconds","color":"red"}]
execute if score choiceTeam2ColorTimer: vote_phase matches 28 run title @a[tag=Participant] actionbar ["",{"text":"Team 2 Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"3 Seconds","color":"red"}]
execute if score choiceTeam2ColorTimer: vote_phase matches 32 run title @a[tag=Participant] actionbar ["",{"text":"Team 2 Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"2 Seconds","color":"red"}]
execute if score choiceTeam2ColorTimer: vote_phase matches 36 run title @a[tag=Participant] actionbar ["",{"text":"Team 2 Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"1 Seconds","color":"red"}]
execute if score choiceTeam2ColorTimer: vote_phase matches 40 run title @a[tag=Participant] actionbar ["",{"text":"Team 2 Vote","bold":false,"color":"white"},{"text":" - ","color":"gold"},{"text":"TIMES UP!","color":"dark_red"}]