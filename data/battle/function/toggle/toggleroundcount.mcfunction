scoreboard objectives add toggleRoundCount dummy

playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.7
execute if entity @a[tag=Participant] run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Game settings are ",{"text":"locked","color":"red"},"."]
execute if entity @a[tag=!Participant] run scoreboard players add .toggle toggleRoundCount 1
execute if score .toggle toggleRoundCount matches 4 run scoreboard players set .toggle toggleRoundCount 1

execute if score .toggle toggleRoundCount matches 1 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Round Count","color":"light_purple"},{"text":" - ","color":"white"},{"text":"3","color":"gold"}]
execute if score .toggle toggleRoundCount matches 1 run scoreboard players reset 𝐑𝐎𝐔𝐍𝐃𝐒｜𝐀𝐔𝐓𝐎
execute if score .toggle toggleRoundCount matches 1 run scoreboard players reset 𝐑𝐎𝐔𝐍𝐃𝐒｜𝟱
execute if score .toggle toggleRoundCount matches 1 run scoreboard players set 𝐑𝐎𝐔𝐍𝐃𝐒｜𝟑 MainReady 11
execute if score .toggle toggleRoundCount matches 1 run scoreboard players set 𝐑𝐎𝐔𝐍𝐃𝐒｜𝟑 MainTeam1 11
execute if score .toggle toggleRoundCount matches 1 run scoreboard players set 𝐑𝐎𝐔𝐍𝐃𝐒｜𝟑 MainTeam2 11
execute if score .toggle toggleRoundCount matches 1 run kill @e[tag=gameSettings,tag=settingsRoundCount]
execute if score .toggle toggleRoundCount matches 1 run summon text_display -135 111.6 -33 {Tags:[gameSettings,settingsRoundCount],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"gold","italic":false,"text":"3"}]}

execute if score .toggle toggleRoundCount matches 2 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Round Count","color":"light_purple"},{"text":" - ","color":"white"},{"text":"5","color":"yellow"}]
execute if score .toggle toggleRoundCount matches 2 run scoreboard players reset 𝐑𝐎𝐔𝐍𝐃𝐒｜𝐀𝐔𝐓𝐎
execute if score .toggle toggleRoundCount matches 2 run scoreboard players reset 𝐑𝐎𝐔𝐍𝐃𝐒｜𝟑
execute if score .toggle toggleRoundCount matches 2 run scoreboard players set 𝐑𝐎𝐔𝐍𝐃𝐒｜𝟱 MainReady 11
execute if score .toggle toggleRoundCount matches 2 run scoreboard players set 𝐑𝐎𝐔𝐍𝐃𝐒｜𝟱 MainTeam1 11
execute if score .toggle toggleRoundCount matches 2 run scoreboard players set 𝐑𝐎𝐔𝐍𝐃𝐒｜𝟱 MainTeam2 11
execute if score .toggle toggleRoundCount matches 2 run kill @e[tag=gameSettings,tag=settingsRoundCount]
execute if score .toggle toggleRoundCount matches 2 run summon text_display -135 111.6 -33 {Tags:[gameSettings,settingsRoundCount],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"yellow","italic":false,"text":"5"}]}

execute if score .toggle toggleRoundCount matches 3 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Round Count","color":"light_purple"},{"text":" - ","color":"white"},{"text":"Automatic","color":"green"},{"text":" (default is 5)","color":"gray"}]
execute if score .toggle toggleRoundCount matches 3 run scoreboard players set 𝐑𝐎𝐔𝐍𝐃𝐒｜𝐀𝐔𝐓𝐎 MainReady 11
execute if score .toggle toggleRoundCount matches 3 run scoreboard players set 𝐑𝐎𝐔𝐍𝐃𝐒｜𝐀𝐔𝐓𝐎 MainTeam1 11
execute if score .toggle toggleRoundCount matches 3 run scoreboard players set 𝐑𝐎𝐔𝐍𝐃𝐒｜𝐀𝐔𝐓𝐎 MainTeam2 11
execute if score .toggle toggleRoundCount matches 3 run scoreboard players reset 𝐑𝐎𝐔𝐍𝐃𝐒｜𝟑
execute if score .toggle toggleRoundCount matches 3 run scoreboard players reset 𝐑𝐎𝐔𝐍𝐃𝐒｜𝟱
execute if score .toggle toggleRoundCount matches 3 run kill @e[tag=gameSettings,tag=settingsRoundCount]
execute if score .toggle toggleRoundCount matches 3 run summon text_display -135 111.6 -33 {Tags:[gameSettings,settingsRoundCount],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"green","italic":false,"text":"AUTO"}]}


team join objGreen 𝐑𝐎𝐔𝐍𝐃𝐒｜𝐀𝐔𝐓𝐎
team join objGold 𝐑𝐎𝐔𝐍𝐃𝐒｜𝟑
team join objYellow 𝐑𝐎𝐔𝐍𝐃𝐒｜𝟱