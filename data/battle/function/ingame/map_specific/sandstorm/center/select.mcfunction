scoreboard objectives add random_center dummy

scoreboard players reset .sandstorm random_center
execute store result score .sandstorm random_center run random value 1..3

execute at @a[tag=Participant] run playsound block.note_block.pling master @a ~ ~ ~ 1 1.3

tag @e[tag=possible_5x5center,tag=map3] remove 5x5center
execute if score .sandstorm random_center matches 1 run tellraw @a[tag=Team1] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| The ",{"text":"Center","bold":false,"color":"white"}," for this round is on the",{"text":" ","color":"yellow"},{"text":"LEFT","bold":true,"color":"aqua"},"!"]
execute if score .sandstorm random_center matches 1 run tellraw @a[tag=Team2] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| The ",{"text":"Center","bold":false,"color":"white"}," for this round is on the",{"text":" ","color":"yellow"},{"text":"RIGHT","bold":true,"color":"yellow"},"!"]

execute if score .sandstorm random_center matches 2 run tellraw @a[tag=Participant] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| The ",{"text":"Center","bold":false,"color":"white"}," for this round is in the",{"text":" ","color":"yellow"},{"text":"MIDDLE","bold":true,"color":"green"},"!"]

execute if score .sandstorm random_center matches 3 run tellraw @a[tag=Team1] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| The ",{"text":"Center","bold":false,"color":"white"}," for this round is on the",{"text":" ","color":"yellow"},{"text":"RIGHT","bold":true,"color":"yellow"},"!"]
execute if score .sandstorm random_center matches 3 run tellraw @a[tag=Team2] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| The ",{"text":"Center","bold":false,"color":"white"}," for this round is on the",{"text":" ","color":"yellow"},{"text":"LEFT","bold":true,"color":"aqua"},"!"]

execute if score .sandstorm random_center matches 1 run tag @e[tag=possible_5x5center,tag=center_sandstorm1] add 5x5center
execute if score .sandstorm random_center matches 2 run tag @e[tag=possible_5x5center,tag=center_sandstorm2] add 5x5center
execute if score .sandstorm random_center matches 3 run tag @e[tag=possible_5x5center,tag=center_sandstorm3] add 5x5center

execute as @e[tag=possible_5x5center,tag=map3,tag=!5x5center] at @s run fill ~2 ~1 ~2 ~-2 ~-2 ~-2 bedrock replace barrier
execute as @e[tag=possible_5x5center,tag=map3,tag=5x5center] at @s run fill ~2 ~1 ~2 ~-2 ~-2 ~-2 barrier replace barrier
execute as @e[tag=possible_5x5center,tag=map3,tag=5x5center] at @s run fill ~2 ~1 ~2 ~-2 ~-2 ~-2 barrier replace bedrock
scoreboard players reset .sandstorm random_center