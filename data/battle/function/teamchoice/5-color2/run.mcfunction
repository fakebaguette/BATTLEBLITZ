execute as @a[scores={vote_red=1..}] run scoreboard players add vote_red: vote_phase 1
execute as @a[scores={vote_red=1..}] run tag @s add vote_red
execute as @a[scores={vote_red=1..},tag=vote_red] run tellraw @s ["-----------------------------------------------------\n\nYou voted ","[",{"text":"RED | 🔥","color":"red","bold":true},"]\n\n-----------------------------------------------------"]
execute as @a[scores={vote_red=1..},tag=vote_red] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.5 1.4
execute as @a[scores={vote_red=1..},tag=vote_red] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.3 1.4
execute as @a[scores={vote_red=1..},tag=vote_red] run scoreboard players set @s vote_red 0

execute as @a[scores={vote_mag=1..}] run scoreboard players add vote_mag: vote_phase 1
execute as @a[scores={vote_mag=1..}] run tag @s add vote_mag
execute as @a[scores={vote_mag=1..},tag=vote_mag] run tellraw @s ["-----------------------------------------------------\n\nYou voted ","[",{"text":"MAGENTA | 🐖","color":"light_purple","bold":true},"]\n\n-----------------------------------------------------"]
execute as @a[scores={vote_mag=1..},tag=vote_mag] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.5 1.4
execute as @a[scores={vote_mag=1..},tag=vote_mag] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.3 1.4
execute as @a[scores={vote_mag=1..},tag=vote_mag] run scoreboard players set @s vote_mag 0

execute as @a[scores={vote_aqu=1..}] run scoreboard players add vote_aqu: vote_phase 1
execute as @a[scores={vote_aqu=1..}] run tag @s add vote_aqu
execute as @a[scores={vote_aqu=1..},tag=vote_aqu] run tellraw @s ["-----------------------------------------------------\n\nYou voted ","[",{"text":"AQUA | 🐟","color":"aqua","bold":true},"]\n\n-----------------------------------------------------"]
execute as @a[scores={vote_aqu=1..},tag=vote_aqu] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.5 1.4
execute as @a[scores={vote_aqu=1..},tag=vote_aqu] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.3 1.4
execute as @a[scores={vote_aqu=1..},tag=vote_aqu] run scoreboard players set @s vote_aqu 0

execute as @a[scores={vote_lim=1..}] run scoreboard players add vote_lim: vote_phase 1
execute as @a[scores={vote_lim=1..}] run tag @s add vote_lim
execute as @a[scores={vote_lim=1..},tag=vote_lim] run tellraw @s ["-----------------------------------------------------\n\nYou voted ","[",{"text":"LIME | 🐲","color":"green","bold":true},"]\n\n-----------------------------------------------------"]
execute as @a[scores={vote_lim=1..},tag=vote_lim] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.5 1.4
execute as @a[scores={vote_lim=1..},tag=vote_lim] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.3 1.4
execute as @a[scores={vote_lim=1..},tag=vote_lim] run scoreboard players set @s vote_lim 0

execute as @a[scores={vote_gol=1..}] run scoreboard players add vote_gol: vote_phase 1
execute as @a[scores={vote_gol=1..}] run tag @s add vote_gol
execute as @a[scores={vote_gol=1..},tag=vote_gol] run tellraw @s ["-----------------------------------------------------\n\nYou voted ","[",{"text":"GOLD | 🐒","color":"gold","bold":true},"]\n\n-----------------------------------------------------"]
execute as @a[scores={vote_gol=1..},tag=vote_gol] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.5 1.4
execute as @a[scores={vote_gol=1..},tag=vote_gol] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.3 1.4
execute as @a[scores={vote_gol=1..},tag=vote_gol] run scoreboard players set @s vote_gol 0

execute as @a[scores={vote_yel=1..}] run scoreboard players add vote_yel: vote_phase 1
execute as @a[scores={vote_yel=1..}] run tag @s add vote_yel
execute as @a[scores={vote_yel=1..},tag=vote_yel] run tellraw @s ["-----------------------------------------------------\n\nYou voted ","[",{"text":"YELLOW | 🍪","color":"yellow","bold":true},"]\n\n-----------------------------------------------------"]
execute as @a[scores={vote_yel=1..},tag=vote_yel] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.5 1.4
execute as @a[scores={vote_yel=1..},tag=vote_yel] at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.3 1.4
execute as @a[scores={vote_yel=1..},tag=vote_yel] run scoreboard players set @s vote_yel 0