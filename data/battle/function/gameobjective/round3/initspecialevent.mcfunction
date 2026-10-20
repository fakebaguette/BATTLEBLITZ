# Sandstorm

execute if score .toggle toggleMap matches 3 if score round3: gameTimer matches 80 if score .toggle toggleRound matches 1 run function battle:ingame/map_specific/sandstorm/storm/activate
execute if score .toggle toggleMap matches 3 if score round3: gameTimer matches 200 if score .toggle toggleRound matches 2 run function battle:ingame/map_specific/sandstorm/storm/activate
execute if score .toggle toggleMap matches 3 if score round3: gameTimer matches 320 if score .toggle toggleRound matches 3 run function battle:ingame/map_specific/sandstorm/storm/activate

execute if score .toggle toggleMap matches 3 if score round3: gameTimer matches 180 if score .toggle toggleRound matches 1 run function battle:ingame/map_specific/sandstorm/storm/stopstorm
execute if score .toggle toggleMap matches 3 if score round3: gameTimer matches 300 if score .toggle toggleRound matches 2 run function battle:ingame/map_specific/sandstorm/storm/stopstorm
execute if score .toggle toggleMap matches 3 if score round3: gameTimer matches 420 if score .toggle toggleRound matches 3 run function battle:ingame/map_specific/sandstorm/storm/stopstorm

# Crypt

execute if score .toggle toggleMap matches 7 if score round3: gameTimer matches 80 if score .toggle toggleRound matches 1 run schedule function battle:ingame/map_specific/crypt/fire/begin_warning 1s
execute if score .toggle toggleMap matches 7 if score round3: gameTimer matches 80 if score .toggle toggleRound matches 2 run schedule function battle:ingame/map_specific/crypt/fire/begin_warning 1s
execute if score .toggle toggleMap matches 7 if score round3: gameTimer matches 80 if score .toggle toggleRound matches 3 run schedule function battle:ingame/map_specific/crypt/fire/begin_warning 1s
