schedule function battle:other/resetall/main 5t

scoreboard objectives add ResetAll trigger
scoreboard objectives add ResetAll_info dummy
execute as @a unless score @s ResetAll matches 0.. run scoreboard players enable @s ResetAll

execute if score .vote_count ResetAll_info matches 1.. run scoreboard players add .reset_time ResetAll_info 1

execute as @a[scores={ResetAll=1..}] at @s run function battle:other/resetall/vote

execute if score .reset_time ResetAll_info matches 80.. run function battle:other/resetall/reset