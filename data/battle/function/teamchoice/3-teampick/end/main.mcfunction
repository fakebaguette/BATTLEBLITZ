execute as @a[tag=Participant] at @s run playsound minecraft:block.note_block.bell master @a[tag=Participant] ~ ~ ~ 0.5 0.8
execute as @a[tag=Participant] at @s run playsound minecraft:block.note_block.bit master @a[tag=Participant] ~ ~ ~ 0.3 0.8

#AUTO RANDOMIZE THE REST (THIS ALWAYS RUNS)
scoreboard objectives add randomTeamPick dummy
scoreboard players operation .copyRandom randomTeamPick = #ofplayers: vote_phase
scoreboard players set .divide randomTeamPick 2
scoreboard players operation .copyRandom randomTeamPick /= .divide randomTeamPick

scoreboard players operation .copyRandom randomTeamPick -= #ofplayersTeam1: vote_phase

execute if score .copyRandom randomTeamPick matches 1.. run schedule function battle:teamchoice/3-teampick/end/randomteam 1t

tag @a[team=Team1] add Team1
tag @a[team=Team2] add Team2

#END (AFTER ALL PLAYERS ON TEAM)
execute if score .copyRandom randomTeamPick matches ..0 run function battle:teamchoice/3-teampick/end/randomend

scoreboard objectives remove team1
scoreboard objectives remove team2
scoreboard objectives add team1 trigger
scoreboard objectives add team2 trigger