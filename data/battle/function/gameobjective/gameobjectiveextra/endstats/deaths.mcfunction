execute as @a unless score @s endDeathCount matches 0.. run scoreboard players add @s endDeathCount 0

tag @a[tag=Participant,sort=random,limit=1,tag=!endDeath,tag=!showDeath] add showDeath
tellraw @a[tag=Participant] ["",{"selector":"@a[tag=Participant,tag=showDeath,limit=1]"},{"text":" - "},{"score":{"name":"@a[tag=Participant,tag=showDeath,limit=1]","objective":"endDeathCount"}},{"text":""}]
tag @a[tag=Participant,tag=showDeath] add endDeath
tag @a[tag=Participant,tag=showDeath] remove showDeath

