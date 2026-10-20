schedule function battle:other/5t 5t

#Player Count
execute store result score #ofAllPlayers teamPlayerCount if entity @a

execute if entity @a[tag=Participant,tag=!CountedParticipant] run scoreboard players add #ofplayers: vote_phase 1
execute as @a[tag=Participant,tag=!CountedParticipant,limit=1] run tag @s add CountedParticipant

execute if entity @a[tag=Participant,tag=!CountedTeamNumber,team=Team1] run scoreboard players add #ofplayersTeam1: vote_phase 1
execute as @a[tag=Participant,tag=!CountedTeamNumber,team=Team1,limit=1] run tag @s add CountedTeamNumber

execute if entity @a[tag=Participant,tag=!CountedTeamNumber,team=Team2] run scoreboard players add #ofplayersTeam2: vote_phase 1
execute as @a[tag=Participant,tag=!CountedTeamNumber,team=Team2,limit=1] run tag @s add CountedTeamNumber

execute store result score #ofplayersT1 teamPlayerCount if entity @a[tag=Participant,tag=Team1]
execute store result score #ofplayersT2 teamPlayerCount if entity @a[tag=Participant,tag=Team2]

execute if entity @a[tag=Participant,tag=!CountedTeam,team=Red] run scoreboard players add #ofaliveRed: teamPlayerCount 1
execute as @a[tag=Participant,tag=!CountedTeam,team=Red,limit=1] run tag @s add CountedTeam
execute if entity @a[tag=Participant,tag=!CountedTeam,team=Magenta] run scoreboard players add #ofaliveMag: teamPlayerCount 1
execute as @a[tag=Participant,tag=!CountedTeam,team=Magenta,limit=1] run tag @s add CountedTeam
execute if entity @a[tag=Participant,tag=!CountedTeam,team=Aqua] run scoreboard players add #ofaliveAqu: teamPlayerCount 1
execute as @a[tag=Participant,tag=!CountedTeam,team=Aqua,limit=1] run tag @s add CountedTeam
execute if entity @a[tag=Participant,tag=!CountedTeam,team=Lime] run scoreboard players add #ofaliveLim: teamPlayerCount 1
execute as @a[tag=Participant,tag=!CountedTeam,team=Lime,limit=1] run tag @s add CountedTeam
execute if entity @a[tag=Participant,tag=!CountedTeam,team=Gold] run scoreboard players add #ofaliveGol: teamPlayerCount 1
execute as @a[tag=Participant,tag=!CountedTeam,team=Gold,limit=1] run tag @s add CountedTeam
execute if entity @a[tag=Participant,tag=!CountedTeam,team=Yellow] run scoreboard players add #ofaliveYel: teamPlayerCount 1
execute as @a[tag=Participant,tag=!CountedTeam,team=Yellow,limit=1] run tag @s add CountedTeam

execute as @e[type=slime] at @s run function battle:other/slime/hit

kill @e[type=item,nbt={Item:{id:"minecraft:wooden_hoe"}}]
clear @a[tag=Participant] wooden_hoe

execute as @a[tag=!cavalier_class] at @s unless predicate battle:cavalier/is_riding run attribute @s entity_interaction_range modifier remove plus_eir1

execute as @a[tag=Team1] at @s if predicate battle:cavalier/is_riding on passengers if entity @s[tag=camel_team2] run ride @p dismount
execute as @a[tag=Team2] at @s if predicate battle:cavalier/is_riding on passengers if entity @s[tag=camel_team1] run ride @p dismount