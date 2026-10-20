scoreboard objectives add togglePower dummy

playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.7
execute if entity @a[tag=Participant] run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Game settings are ",{"text":"locked","color":"red"},"."]
execute if entity @a[tag=!Participant] run scoreboard players add .toggle togglePower 1
execute if score .toggle togglePower matches 3 run scoreboard players set .toggle togglePower 1
execute if score .toggle togglePower matches 1 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Power Ups","color":"light_purple"},{"text":" - ","color":"white"},{"text":"✔","color":"green"},{"text":" (default)","color":"gray"}]
execute if score .toggle togglePower matches 1 run scoreboard players set 𝐏𝐎𝐖𝐄𝐑𝐔𝐏𝐒｜✔ MainReady 6
execute if score .toggle togglePower matches 1 run scoreboard players set 𝐏𝐎𝐖𝐄𝐑𝐔𝐏𝐒｜✔ MainTeam1 6
execute if score .toggle togglePower matches 1 run scoreboard players set 𝐏𝐎𝐖𝐄𝐑𝐔𝐏𝐒｜✔ MainTeam2 6
execute if score .toggle togglePower matches 1 run scoreboard players reset 𝐏𝐎𝐖𝐄𝐑𝐔𝐏𝐒｜❌
execute if score .toggle togglePower matches 1 run kill @e[tag=gameSettings,tag=modifierPower]
execute if score .toggle togglePower matches 1 run summon text_display -121 111.6 -43 {Tags:[gameSettings,modifierPower],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"green","italic":false,"text":"✔"}]}

execute if score .toggle togglePower matches 2 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Power Ups","color":"light_purple"},{"text":" - ","color":"white"},{"text":"❌","color":"red"}]
execute if score .toggle togglePower matches 2 run scoreboard players set 𝐏𝐎𝐖𝐄𝐑𝐔𝐏𝐒｜❌ MainReady 6
execute if score .toggle togglePower matches 2 run scoreboard players set 𝐏𝐎𝐖𝐄𝐑𝐔𝐏𝐒｜❌ MainTeam1 6
execute if score .toggle togglePower matches 2 run scoreboard players set 𝐏𝐎𝐖𝐄𝐑𝐔𝐏𝐒｜❌ MainTeam2 6
execute if score .toggle togglePower matches 2 run scoreboard players reset 𝐏𝐎𝐖𝐄𝐑𝐔𝐏𝐒｜✔
execute if score .toggle togglePower matches 2 run kill @e[tag=gameSettings,tag=modifierPower]
execute if score .toggle togglePower matches 2 run summon text_display -121 111.6 -43 {Tags:[gameSettings,modifierPower],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"red","italic":false,"text":"❌"}]}
