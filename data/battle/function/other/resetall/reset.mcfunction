scoreboard players reset .vote_count ResetAll_info
scoreboard players reset .reset_time ResetAll_info

tellraw @a ["---------------------------------------------------\n\n",{"text":"Reset All vote expired!","color":"red"},"\n\n---------------------------------------------------"]
execute as @a run scoreboard players reset @s ResetAll