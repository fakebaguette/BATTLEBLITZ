scoreboard players set .subtract randomTeamPick 1
scoreboard players operation .copyRandom randomTeamPick -= .subtract randomTeamPick
team join Team1 @a[tag=Participant,team=!Team1,team=!Team2,sort=random,limit=1]
function battle:teamchoice/3-teampick/end/randomend

scoreboard objectives remove vote_pick
scoreboard objectives remove vote_randomize
scoreboard objectives remove team1
scoreboard objectives remove team2