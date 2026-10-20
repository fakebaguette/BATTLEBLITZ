scoreboard objectives add toggleDouble dummy

playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.7
execute if entity @a[tag=Participant] run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Game settings are ",{"text":"locked","color":"red"},"."]
execute if entity @a[tag=!Participant] run scoreboard players add .toggle toggleDouble 1
execute if score .toggle toggleDouble matches 3 run scoreboard players set .toggle toggleDouble 1
execute if score .toggle toggleDouble matches 1 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Double Health","color":"light_purple"},{"text":" - ","color":"white"},{"text":"✔","color":"green"}]
execute if score .toggle toggleDouble matches 1 run scoreboard players set 𝐃𝐎𝐔𝐁𝐋𝐄｜✔ MainReady 4
execute if score .toggle toggleDouble matches 1 run scoreboard players set 𝐃𝐎𝐔𝐁𝐋𝐄｜✔ MainTeam1 4
execute if score .toggle toggleDouble matches 1 run scoreboard players set 𝐃𝐎𝐔𝐁𝐋𝐄｜✔ MainTeam2 4
execute if score .toggle toggleDouble matches 1 run scoreboard players reset 𝐃𝐎𝐔𝐁𝐋𝐄｜❌
execute if score .toggle toggleDouble matches 1 run kill @e[tag=halfHealth]
execute if score .toggle toggleDouble matches 1 run kill @e[tag=doubleHealth]
execute if score .toggle toggleDouble matches 1 run summon text_display -121 111.6 -33 {Tags:[gameSettings,doubleHealth],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"green","italic":false,"text":"✔"}]}


execute if score .toggle toggleDouble matches 1 run scoreboard players set .toggle toggleHalf 2
execute if score .toggle toggleDouble matches 1 run scoreboard players set 𝐇𝐀𝐋𝐅｜❌ MainReady 3
execute if score .toggle toggleDouble matches 1 run scoreboard players set 𝐇𝐀𝐋𝐅｜❌ MainTeam1 3
execute if score .toggle toggleDouble matches 1 run scoreboard players set 𝐇𝐀𝐋𝐅｜❌ MainTeam2 3
execute if score .toggle toggleDouble matches 1 run scoreboard players reset 𝐇𝐀𝐋𝐅｜✔
execute if score .toggle toggleDouble matches 1 run summon text_display -121 111.6 -28 {Tags:[gameSettings,halfHealth],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"red","italic":false,"text":"❌"}]}



execute if score .toggle toggleDouble matches 2 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Double Health","color":"light_purple"},{"text":" - ","color":"white"},{"text":"❌","color":"red"},{"text":" (default)","color":"gray"}]
execute if score .toggle toggleDouble matches 2 run scoreboard players set 𝐃𝐎𝐔𝐁𝐋𝐄｜❌ MainReady 4
execute if score .toggle toggleDouble matches 2 run scoreboard players set 𝐃𝐎𝐔𝐁𝐋𝐄｜❌ MainTeam1 4
execute if score .toggle toggleDouble matches 2 run scoreboard players set 𝐃𝐎𝐔𝐁𝐋𝐄｜❌ MainTeam2 4
execute if score .toggle toggleDouble matches 2 run scoreboard players reset 𝐃𝐎𝐔𝐁𝐋𝐄｜✔
execute if score .toggle toggleDouble matches 2 run kill @e[tag=doubleHealth]
execute if score .toggle toggleDouble matches 2 run summon text_display -121 111.6 -33 {Tags:[gameSettings,doubleHealth],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"red","italic":false,"text":"❌"}]}