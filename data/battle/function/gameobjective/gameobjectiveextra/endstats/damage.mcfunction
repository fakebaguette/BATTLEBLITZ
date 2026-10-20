execute as @a unless score @s endDMGCount matches 0.. run scoreboard players add @s endDMGCount 0

tag @a[tag=Participant,sort=random,limit=1,tag=!endDMG,tag=!showDMG] add showDMG
tellraw @a[tag=Participant] ["",{"selector":"@a[tag=Participant,tag=showDMG,limit=1]"},{"text":" - "},{"score":{"name":"@a[tag=Participant,tag=showDMG,limit=1]","objective":"endDMGCount"}},{"text":""}]
tag @a[tag=Participant,tag=showDMG] add endDMG
tag @a[tag=Participant,tag=showDMG] remove showDMG
