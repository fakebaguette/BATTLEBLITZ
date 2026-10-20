function battle:gameobjective/gameobjectiveextra/openbox

execute if score .toggle toggleRound matches 4 if score .toggle toggleMap matches 1 if entity @a[tag=Participant] run scoreboard players set .toggle toggleRound 2
execute if score .toggle toggleRound matches 4 if score .toggle toggleMap matches 2 if entity @a[tag=Participant] run scoreboard players set .toggle toggleRound 2
execute if score .toggle toggleRound matches 4 if score .toggle toggleMap matches 3 if entity @a[tag=Participant] run scoreboard players set .toggle toggleRound 3
execute if score .toggle toggleRound matches 4 if score .toggle toggleMap matches 4 if entity @a[tag=Participant] run scoreboard players set .toggle toggleRound 2
execute if score .toggle toggleRound matches 4 if score .toggle toggleMap matches 5 if entity @a[tag=Participant] run scoreboard players set .toggle toggleRound 2
execute if score .toggle toggleRound matches 4 if score .toggle toggleMap matches 6 if entity @a[tag=Participant] run scoreboard players set .toggle toggleRound 2
execute if score .toggle toggleRound matches 4 if score .toggle toggleMap matches 7 if entity @a[tag=Participant] run scoreboard players set .toggle toggleRound 2

execute if score .toggle toggleCenter matches 5 if score .toggle toggleMap matches 1 if entity @a[tag=Participant] run scoreboard players set .toggle toggleCenter 2
execute if score .toggle toggleCenter matches 5 if score .toggle toggleMap matches 2 if entity @a[tag=Participant] run scoreboard players set .toggle toggleCenter 2
execute if score .toggle toggleCenter matches 5 if score .toggle toggleMap matches 3 if entity @a[tag=Participant] run scoreboard players set .toggle toggleCenter 4
execute if score .toggle toggleCenter matches 5 if score .toggle toggleMap matches 4 if entity @a[tag=Participant] run scoreboard players set .toggle toggleCenter 1
execute if score .toggle toggleCenter matches 5 if score .toggle toggleMap matches 5 if entity @a[tag=Participant] run scoreboard players set .toggle toggleCenter 1
execute if score .toggle toggleCenter matches 5 if score .toggle toggleMap matches 6 if entity @a[tag=Participant] run scoreboard players set .toggle toggleCenter 2
execute if score .toggle toggleCenter matches 5 if score .toggle toggleMap matches 7 if entity @a[tag=Participant] run scoreboard players set .toggle toggleCenter 3
