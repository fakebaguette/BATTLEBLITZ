schedule function battle:ingame/forfeit/main 5t

scoreboard objectives add Forfeit trigger
scoreboard objectives add forfeit_info dummy
execute as @a[tag=inGame] unless score @s Forfeit matches 0.. run scoreboard players enable @s Forfeit

execute if score .t1_count forfeit_info matches 1.. run scoreboard players add .t1_time forfeit_info 1
execute if score .t2_count forfeit_info matches 1.. run scoreboard players add .t2_time forfeit_info 1

execute as @a[scores={Forfeit=1..},tag=inGame,tag=Team1] at @s run function battle:ingame/forfeit/t1_vote
execute as @a[scores={Forfeit=1..},tag=inGame,tag=Team2] at @s run function battle:ingame/forfeit/t2_vote

execute if score .t1_time forfeit_info matches 80.. run function battle:ingame/forfeit/t1_reset
execute if score .t2_time forfeit_info matches 80.. run function battle:ingame/forfeit/t2_reset