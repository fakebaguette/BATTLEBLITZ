scoreboard players reset .t2_count forfeit_info
scoreboard players reset .t2_time forfeit_info


tellraw @a[tag=Team2] ["---------------------------------------------------\n\n",{"text":"Surrender vote expired!","color":"red"},"\n\n---------------------------------------------------"]
execute as @a[tag=Team2] run scoreboard players reset @s Forfeit