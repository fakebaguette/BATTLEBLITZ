scoreboard objectives add togglePunch dummy

playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.7

scoreboard players add .toggle togglePunch 1
execute if score .toggle togglePunch matches 1 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Toggled ON","color":"green"},{"text":" - ","color":"white"},{"text":"Punching protection will be enabled.","color":"gray"}]
execute if score .toggle togglePunch matches 1 run function battle:toggle/togglepunchloop

execute if score .toggle togglePunch matches 2 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Toggled OFF","color":"red"},{"text":" - ","color":"white"},{"text":"Punching protection will be disabled.","color":"gray"}]
execute if score .toggle togglePunch matches 2 run schedule clear battle:toggle/togglepunchloop
execute if score .toggle togglePunch matches 2 run scoreboard players reset .toggle togglePunch