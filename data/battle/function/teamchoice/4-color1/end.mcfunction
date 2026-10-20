scoreboard players reset .random randomColor

scoreboard players operation .max vote_phase = vote_red: vote_phase
scoreboard players operation .max vote_phase > vote_mag: vote_phase
scoreboard players operation .max vote_phase > vote_aqu: vote_phase
scoreboard players operation .max vote_phase > vote_lim: vote_phase
scoreboard players operation .max vote_phase > vote_gol: vote_phase
scoreboard players operation .max vote_phase > vote_yel: vote_phase

scoreboard objectives add randomColor dummy
execute if score .max vote_phase matches 0 store result score .random randomColor run random value 1..6

execute if score .max vote_phase = vote_red: vote_phase run scoreboard players set .choice vote_phase 1
execute if score .max vote_phase = vote_mag: vote_phase run scoreboard players set .choice vote_phase 2
execute if score .max vote_phase = vote_aqu: vote_phase run scoreboard players set .choice vote_phase 3
execute if score .max vote_phase = vote_lim: vote_phase run scoreboard players set .choice vote_phase 4
execute if score .max vote_phase = vote_gol: vote_phase run scoreboard players set .choice vote_phase 5
execute if score .max vote_phase = vote_yel: vote_phase run scoreboard players set .choice vote_phase 6

execute if score .random randomColor matches 1 run scoreboard players set .choice vote_phase 1
execute if score .random randomColor matches 2 run scoreboard players set .choice vote_phase 2
execute if score .random randomColor matches 3 run scoreboard players set .choice vote_phase 3
execute if score .random randomColor matches 4 run scoreboard players set .choice vote_phase 4
execute if score .random randomColor matches 5 run scoreboard players set .choice vote_phase 5
execute if score .random randomColor matches 6 run scoreboard players set .choice vote_phase 6

execute if score .choice vote_phase matches 1 if score .toggle toggleQuick matches 2 run tellraw @a[tag=Participant] ["-----------------------------------------------------\n\nTeam 1's color was voted to be ","[",{"text":"RED | 🔥","color":"red","bold":true},"]!\n\n",{"text":"TIMES UP!","color":"dark_red","bold":true},"\n\n-----------------------------------------------------"]
execute if score .choice vote_phase matches 1 run scoreboard objectives remove vote_red
execute if score .choice vote_phase matches 1 run team join Red @a[team=Team1]

execute if score .choice vote_phase matches 2 if score .toggle toggleQuick matches 2 run tellraw @a[tag=Participant] ["-----------------------------------------------------\n\nTeam 1's color was voted to be ","[",{"text":"MAGENTA | 🐖","color":"light_purple","bold":true},"]!\n\n",{"text":"TIMES UP!","color":"dark_red","bold":true},"\n\n-----------------------------------------------------"]
execute if score .choice vote_phase matches 2 run scoreboard objectives remove vote_mag
execute if score .choice vote_phase matches 2 run team join Magenta @a[team=Team1]

execute if score .choice vote_phase matches 3 if score .toggle toggleQuick matches 2 run tellraw @a[tag=Participant] ["-----------------------------------------------------\n\nTeam 1's color was voted to be ","[",{"text":"AQUA | 🐟","color":"aqua","bold":true},"]!\n\n",{"text":"TIMES UP!","color":"dark_red","bold":true},"\n\n-----------------------------------------------------"]
execute if score .choice vote_phase matches 3 run scoreboard objectives remove vote_aqu
execute if score .choice vote_phase matches 3 run team join Aqua @a[team=Team1]

execute if score .choice vote_phase matches 4 if score .toggle toggleQuick matches 2 run tellraw @a[tag=Participant] ["-----------------------------------------------------\n\nTeam 1's color was voted to be ","[",{"text":"LIME | 🐲","color":"green","bold":true},"]!\n\n",{"text":"TIMES UP!","color":"dark_red","bold":true},"\n\n-----------------------------------------------------"]
execute if score .choice vote_phase matches 4 run scoreboard objectives remove vote_lim
execute if score .choice vote_phase matches 4 run team join Lime @a[team=Team1]

execute if score .choice vote_phase matches 5 if score .toggle toggleQuick matches 2 run tellraw @a[tag=Participant] ["-----------------------------------------------------\n\nTeam 1's color was voted to be ","[",{"text":"GOLD | 🐒","color":"gold","bold":true},"]!\n\n",{"text":"TIMES UP!","color":"dark_red","bold":true},"\n\n-----------------------------------------------------"]
execute if score .choice vote_phase matches 5 run scoreboard objectives remove vote_gol
execute if score .choice vote_phase matches 5 run team join Gold @a[team=Team1]

execute if score .choice vote_phase matches 6 if score .toggle toggleQuick matches 2 run tellraw @a[tag=Participant] ["-----------------------------------------------------\n\nTeam 1's color was voted to be ","[",{"text":"YELLOW | 🍪","color":"yellow","bold":true},"]!\n\n",{"text":"TIMES UP!","color":"dark_red","bold":true},"\n\n-----------------------------------------------------"]
execute if score .choice vote_phase matches 6 run scoreboard objectives remove vote_yel
execute if score .choice vote_phase matches 6 run team join Yellow @a[team=Team1]

execute if score .toggle toggleQuick matches 2 run function battle:teamchoice/5-color2/main
execute if score .toggle toggleQuick matches 2 at @a run playsound minecraft:block.note_block.bell master @a[tag=Participant] ~ ~ ~ 0.5 1.4
execute if score .toggle toggleQuick matches 2 at @a run playsound minecraft:block.note_block.bit master @a[tag=Participant] ~ ~ ~ 0.3 1.4

scoreboard players set vote_red: vote_phase 0
scoreboard players set vote_mag: vote_phase 0
scoreboard players set vote_aqu: vote_phase 0
scoreboard players set vote_lim: vote_phase 0
scoreboard players set vote_gol: vote_phase 0
scoreboard players set vote_yel: vote_phase 0

scoreboard players set .max vote_phase 0
scoreboard players reset .choice vote_phase
tag @a remove vote_red
tag @a remove vote_mag
tag @a remove vote_aqu
tag @a remove vote_lim
tag @a remove vote_gol
tag @a remove vote_yel

schedule clear battle:teamchoice/4-color1/main
scoreboard players set choiceTeam1ColorTimer: vote_phase 0

scoreboard objectives remove vote_red
scoreboard objectives remove vote_mag
scoreboard objectives remove vote_aqu
scoreboard objectives remove vote_lim
scoreboard objectives remove vote_gol
scoreboard objectives remove vote_yel