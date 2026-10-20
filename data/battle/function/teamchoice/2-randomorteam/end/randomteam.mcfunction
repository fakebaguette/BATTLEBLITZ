scoreboard players set .subtract randomTeamRandomize 1
scoreboard players operation .copyRandom randomTeamRandomize -= .subtract randomTeamRandomize
team join Team1 @a[tag=Participant,team=!Team1,team=!Team2,sort=random,limit=1]
tag @a[team=Team1] add Team1
tag @a[team=Team2] add Team2
function battle:teamchoice/2-randomorteam/end/randomend

