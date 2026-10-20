execute as @a unless score @s endKillCount matches 0.. run scoreboard players add @s endKillCount 0

tag @a[tag=Participant,sort=random,limit=1,tag=!endKill,tag=!showKill] add showKill
tellraw @a[tag=Participant] ["",{"selector":"@a[tag=Participant,tag=showKill,limit=1]"},{"text":" - "},{"score":{"name":"@a[tag=Participant,tag=showKill,limit=1]","objective":"endKillCount"}},{"text":""}]
tag @a[tag=Participant,tag=showKill] add endKill
tag @a[tag=Participant,tag=showKill] remove showKill
