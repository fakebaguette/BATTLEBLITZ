scoreboard objectives add toggleEvent dummy

playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.7
execute if entity @a[tag=Participant] run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Game settings are ",{"text":"locked","color":"red"},"."]
execute if entity @a[tag=!Participant] run scoreboard players add .toggle toggleEvent 1
execute if score .toggle toggleEvent matches 3 run scoreboard players set .toggle toggleEvent 1
execute if score .toggle toggleEvent matches 1 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Special Event","color":"light_purple"},{"text":" - ","color":"white"},{"text":"✔","color":"green"},{"text":" (default)","color":"gray"}]
execute if score .toggle toggleEvent matches 1 run scoreboard players set 𝐄𝐕𝐄𝐍𝐓｜✔ MainReady 5
execute if score .toggle toggleEvent matches 1 run scoreboard players set 𝐄𝐕𝐄𝐍𝐓｜✔ MainTeam1 5
execute if score .toggle toggleEvent matches 1 run scoreboard players set 𝐄𝐕𝐄𝐍𝐓｜✔ MainTeam2 5
execute if score .toggle toggleEvent matches 1 run scoreboard players reset 𝐄𝐕𝐄𝐍𝐓｜❌
execute if score .toggle toggleEvent matches 1 run kill @e[tag=gameSettings,tag=specialEvent]
execute if score .toggle toggleEvent matches 1 run summon text_display -121 111.6 -38 {Tags:[gameSettings,specialEvent],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"green","italic":false,"text":"✔"}]}

execute if score .toggle toggleEvent matches 2 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Special Event","color":"light_purple"},{"text":" - ","color":"white"},{"text":"❌","color":"red"}]
execute if score .toggle toggleEvent matches 2 run scoreboard players set 𝐄𝐕𝐄𝐍𝐓｜❌ MainReady 5
execute if score .toggle toggleEvent matches 2 run scoreboard players set 𝐄𝐕𝐄𝐍𝐓｜❌ MainTeam1 5
execute if score .toggle toggleEvent matches 2 run scoreboard players set 𝐄𝐕𝐄𝐍𝐓｜❌ MainTeam2 5
execute if score .toggle toggleEvent matches 2 run scoreboard players reset 𝐄𝐕𝐄𝐍𝐓｜✔
execute if score .toggle toggleEvent matches 2 run kill @e[tag=gameSettings,tag=specialEvent]
execute if score .toggle toggleEvent matches 2 run summon text_display -121 111.6 -38 {Tags:[gameSettings,specialEvent],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"red","italic":false,"text":"❌"}]}

