execute if score .copyRandom randomTeamRandomize matches 1.. run schedule function battle:teamchoice/2-randomorteam/end/randomteam 1t
execute if score .copyRandom randomTeamRandomize matches ..0 run team join Team2 @a[tag=Participant,team=!Team1]

tag @a[team=Team1] add Team1
tag @a[team=Team2] add Team2

execute if score .copyRandom randomTeamRandomize matches ..0 if score .toggle toggleQuick matches 2 run tellraw @a[tag=Participant] ["-----------------------------------------------------\n\nThe teams will be",{"text":" [","bold":true},{"text":"R","bold":true,"color":"light_purple"},{"text":"A","bold":true,"color":"light_purple"},{"text":"ND","bold":true,"color":"gold"},{"text":"OM","bold":true,"color":"green"},{"text":"IZ","bold":true,"color":"yellow"},{"text":"ED","bold":true,"color":"red"},{"text":"]","bold":true,"color":"white"},{"text":"!","color":"white"},"\n\n",{"text":"TIMES UP!","bold":true,"color":"dark_red"},"\n-----------------------------------------------------"]
execute if score .copyRandom randomTeamRandomize matches ..0 run scoreboard players add choiceTeam1ColorTimer: vote_phase 1
execute if score .copyRandom randomTeamRandomize matches ..0 if score .toggle toggleQuick matches 2 run function battle:teamchoice/4-color1/main
execute if score .copyRandom randomTeamRandomize matches ..0 run tag @a[tag=Participant] remove choseRandom
execute if score .copyRandom randomTeamRandomize matches ..0 run tag @a[tag=Participant] remove chosePick
execute if score .copyRandom randomTeamRandomize matches ..0 run scoreboard players reset .copyRandom