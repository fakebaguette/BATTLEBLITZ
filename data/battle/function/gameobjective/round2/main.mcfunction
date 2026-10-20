scoreboard objectives add gameTimer dummy
scoreboard objectives add starCountTeam1 dummy
scoreboard objectives add starCountTeam2 dummy

execute if score round2: gameTimer matches 4.. run scoreboard players add round2: gameTimer 4
execute if score round2: gameTimer matches 1 run scoreboard players set round2: gameTimer 4
execute unless score round2: gameTimer matches 1.. run scoreboard players add round2: gameTimer 1
execute if score round2: gameTimer matches 1.. run schedule function battle:gameobjective/round2/main 1s

execute if score round2: gameTimer matches 1 run function battle:gameobjective/gameobjectiveextra/init

execute as @a[tag=teamDied] at @s run function battle:gameobjective/gameobjectiveextra/maptp
execute as @a[tag=diedTp] at @s run function battle:gameobjective/gameobjectiveextra/death
function battle:gameobjective/gameobjectiveextra/gamecheck

execute if score .toggle toggleRound matches 1 run function battle:gameobjective/gameobjectiveextra/update/time/l1
execute if score .toggle toggleRound matches 2 run function battle:gameobjective/gameobjectiveextra/update/time/l2
execute if score .toggle toggleRound matches 3 run function battle:gameobjective/gameobjectiveextra/update/time/l3

execute if score round2: gameTimer matches 1..20 if score .toggle toggleCenter matches 1 run function battle:gameobjective/center/5scenter
execute if score round2: gameTimer matches 1..40 if score .toggle toggleCenter matches 2 run function battle:gameobjective/center/10scenter
execute if score round2: gameTimer matches 1..80 if score .toggle toggleCenter matches 3 run function battle:gameobjective/center/20scenter
execute if score round2: gameTimer matches 1..120 if score .toggle toggleCenter matches 4 run function battle:gameobjective/center/30scenter

#special
execute if score .toggle toggleMap matches 3 if score .toggle toggleEvent matches 1 if score round2: gameTimer matches 80.. run function battle:gameobjective/round2/initspecialevent
execute if score .toggle toggleMap matches 7 if score .toggle toggleEvent matches 1 if score round2: gameTimer matches 80.. run function battle:gameobjective/round2/initspecialevent

execute unless entity @a[tag=Participant,tag=!diedTp] run scoreboard players set round2: gameTimer -1

#end
execute if score round2: gameTimer matches 20 run function battle:gameobjective/round2/checkend
execute unless entity @a[tag=Participant,tag=!diedTp] run function battle:gameobjective/round2/checkend

#roundL1 alerts
execute if score round2: gameTimer matches ..119 if score .toggle toggleRound matches 1 run return fail
execute if score .toggle toggleRound matches 1 as @a[tag=Participant] at @s run function battle:gameobjective/round2/alerts/l1

#roundL2 alerts
execute if score round2: gameTimer matches ..239 if score .toggle toggleRound matches 2 run return fail
execute if score .toggle toggleRound matches 2 as @a[tag=Participant] at @s run function battle:gameobjective/round2/alerts/l2

#roundL3 alerts
execute if score round2: gameTimer matches ..479 if score .toggle toggleRound matches 3 run return fail
execute if score .toggle toggleRound matches 3 as @a[tag=Participant] at @s run function battle:gameobjective/round2/alerts/l3