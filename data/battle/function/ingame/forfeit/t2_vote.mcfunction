scoreboard players add .t2_count forfeit_info 1

tellraw @a[tag=Team2] ["---------------------------------------------------\n\n",{"text":"Surrender?","color":"red"},"\n\n",{"text":"[","color":"white","click_event":{"action":"run_command","command":"/trigger Forfeit"}},{"text":"YES","bold":true,"color":"#66ff00"},{"text":"]","click_event":{"action":"run_command","command":"/trigger Forfeit"}},"\n(",{"score":{"name":".t2_count","objective":"forfeit_info"}},"/",{"score":{"name":"#ofplayersT2","objective":"teamPlayerCount"}},")\n\n---------------------------------------------------"]
execute as @a[tag=Team2] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 10 0.8

scoreboard players set @s Forfeit 0
execute if score .t2_count forfeit_info >= #ofplayersT1 teamPlayerCount run function battle:ingame/forfeit/t2_ff