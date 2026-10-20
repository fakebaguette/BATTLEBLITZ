scoreboard players add .t1_count forfeit_info 1

tellraw @a[tag=Team1] ["---------------------------------------------------\n\n",{"text":"Surrender?","color":"red"},"\n\n",{"text":"[","color":"white","click_event":{"action":"run_command","command":"/trigger Forfeit"}},{"text":"YES","bold":true,"color":"#66ff00"},{"text":"]","click_event":{"action":"run_command","command":"/trigger Forfeit"}},"\n(",{"score":{"name":".t1_count","objective":"forfeit_info"}},"/",{"score":{"name":"#ofplayersT1","objective":"teamPlayerCount"}},")\n\n---------------------------------------------------"]
execute as @a[tag=Team1] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 10 0.8

scoreboard players set @s Forfeit 0
execute if score .t1_count forfeit_info >= #ofplayersT1 teamPlayerCount run function battle:ingame/forfeit/t1_ff