scoreboard players add .vote_count ResetAll_info 1

tellraw @a ["---------------------------------------------------\n\n",{"text":"Reset All","color":"red"},"\n\n",{"text":"[","color":"white","click_event":{"action":"run_command","command":"/trigger ResetAll"}},{"text":"YES","bold":true,"color":"#66ff00","click_event":{"action":"run_command","command":"/trigger ResetAll"}},{"text":"]","click_event":{"action":"run_command","command":"/trigger ResetAll"}},"\n(",{"score":{"name":".vote_count","objective":"ResetAll_info"}},"/",{"score":{"name":"#ofAllPlayers","objective":"teamPlayerCount"}},")\n\n---------------------------------------------------"]
execute as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 10 0.8

scoreboard players set @s ResetAll 0
execute if score .vote_count ResetAll_info >= #ofAllPlayers teamPlayerCount run tellraw @a ["---------------------------------------------------\n\n",{"text":"Resetting!","color":"red"},"\n\n---------------------------------------------------"]
execute if score .vote_count ResetAll_info >= #ofAllPlayers teamPlayerCount run function battle:1/resetgame