scoreboard players reset .t1_count forfeit_info
scoreboard players reset .t1_time forfeit_info

tellraw @a[tag=Team1] ["---------------------------------------------------\n\n",{"text":"Surrender vote expired!","color":"red"},"\n\n---------------------------------------------------"]
execute as @a[tag=Team1] run scoreboard players reset @s Forfeit