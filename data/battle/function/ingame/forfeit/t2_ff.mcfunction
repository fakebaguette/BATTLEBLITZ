scoreboard players set Team1Stars: starCountTeam1 999
scoreboard players set Team2Stars: starCountTeam2 0

tellraw @a[tag=Team2] ["---------------------------------------------------\n\n",{"text":"Your team has surrendered!","color":"red"},"\n\n---------------------------------------------------"]
execute as @a[tag=Team2] at @s run playsound minecraft:block.note_block.bass master @s ~ ~ ~ 10 0.8

tellraw @a[tag=Team1] ["---------------------------------------------------\n\n",{"text":"The opposing team has surrendered!","color":"green"},"\n\n---------------------------------------------------"]
execute as @a[tag=Team1] at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 10 0.8

function battle:gameobjective/delay_victory
scoreboard players reset .t1_count forfeit_info
scoreboard players reset .t2_count forfeit_info
scoreboard players reset .t1_time forfeit_info
scoreboard players reset .t2_time forfeit_info