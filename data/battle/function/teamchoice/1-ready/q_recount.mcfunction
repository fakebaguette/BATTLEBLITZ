#recount

execute if entity @a[tag=Participant,tag=!CountedParticipant] run scoreboard players add #ofplayers: vote_phase 1
execute as @a[tag=Participant,tag=!CountedParticipant,limit=1] run tag @s add CountedParticipant

execute if entity @a[tag=Participant,tag=!CountedTeamNumber,team=Team1] run scoreboard players add #ofplayersTeam1: vote_phase 1
execute as @a[tag=Participant,tag=!CountedTeamNumber,team=Team1,limit=1] run tag @s add CountedTeamNumber

execute if entity @a[tag=Participant,tag=!CountedTeamNumber,team=Team2] run scoreboard players add #ofplayersTeam2: vote_phase 1
execute as @a[tag=Participant,tag=!CountedTeamNumber,team=Team2,limit=1] run tag @s add CountedTeamNumber

#

scoreboard objectives add randomTeamOrRandomize dummy
execute store result score .random randomTeamOrRandomize run random value 1..2
scoreboard objectives add randomTeamRandomize dummy
scoreboard players operation .copyRandom randomTeamRandomize = #ofplayers: vote_phase
scoreboard players set .divide randomTeamRandomize 2
scoreboard players operation .copyRandom randomTeamRandomize /= .divide randomTeamRandomize