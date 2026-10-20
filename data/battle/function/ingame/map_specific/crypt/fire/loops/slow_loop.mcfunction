execute if score .toggle toggleRound matches 1 run schedule function battle:ingame/map_specific/crypt/fire/loops/slow_loop 20t replace
execute if score .toggle toggleRound matches 2 run schedule function battle:ingame/map_specific/crypt/fire/loops/slow_loop 40t replace
execute if score .toggle toggleRound matches 3 run schedule function battle:ingame/map_specific/crypt/fire/loops/slow_loop 60t replace


execute if score .fire_wall_size special_events matches 11.. run scoreboard players remove .fire_wall_size special_events 1
execute store result storage special_events fire_wall_size int 1 run scoreboard players get .fire_wall_size special_events