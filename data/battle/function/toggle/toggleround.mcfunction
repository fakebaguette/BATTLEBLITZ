scoreboard objectives add toggleRound dummy

playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.7
execute if entity @a[tag=Participant] run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Game settings are ",{"text":"locked","color":"red"},"."]
execute if entity @a[tag=!Participant] run scoreboard players add .toggle toggleRound 1
execute if score .toggle toggleRound matches 5 run scoreboard players set .toggle toggleRound 1
execute if score .toggle toggleRound matches 1 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Round Time","color":"light_purple"},{"text":" - ","color":"white"},{"text":"1 Minute","color":"red"}]
execute if score .toggle toggleRound matches 1 run scoreboard players reset 𝐑𝐎𝐔𝐍𝐃｜𝐀𝐔𝐓𝐎
execute if score .toggle toggleRound matches 1 run scoreboard players set 𝐑𝐎𝐔𝐍𝐃｜𝟏:𝟎𝟎 MainReady 10
execute if score .toggle toggleRound matches 1 run scoreboard players set 𝐑𝐎𝐔𝐍𝐃｜𝟏:𝟎𝟎 MainTeam1 10
execute if score .toggle toggleRound matches 1 run scoreboard players set 𝐑𝐎𝐔𝐍𝐃｜𝟏:𝟎𝟎 MainTeam2 10
execute if score .toggle toggleRound matches 1 run scoreboard players reset 𝐑𝐎𝐔𝐍𝐃｜𝟐:𝟎𝟎
execute if score .toggle toggleRound matches 1 run scoreboard players reset 𝐑𝐎𝐔𝐍𝐃｜𝟑:𝟎𝟎
execute if score .toggle toggleRound matches 1 run kill @e[tag=gameSettings,tag=settingsRound]
execute if score .toggle toggleRound matches 1 run summon text_display -135 111.6 -38 {Tags:[gameSettings,settingsRound],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"red","italic":false,"text":"1:00"}]}

execute if score .toggle toggleRound matches 2 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Round Time","color":"light_purple"},{"text":" - ","color":"white"},{"text":"2 Minutes","color":"gold"}]
execute if score .toggle toggleRound matches 2 run scoreboard players reset 𝐑𝐎𝐔𝐍𝐃｜𝐀𝐔𝐓𝐎
execute if score .toggle toggleRound matches 2 run scoreboard players reset 𝐑𝐎𝐔𝐍𝐃｜𝟏:𝟎𝟎
execute if score .toggle toggleRound matches 2 run scoreboard players set 𝐑𝐎𝐔𝐍𝐃｜𝟐:𝟎𝟎 MainReady 10
execute if score .toggle toggleRound matches 2 run scoreboard players set 𝐑𝐎𝐔𝐍𝐃｜𝟐:𝟎𝟎 MainTeam1 10
execute if score .toggle toggleRound matches 2 run scoreboard players set 𝐑𝐎𝐔𝐍𝐃｜𝟐:𝟎𝟎 MainTeam2 10
execute if score .toggle toggleRound matches 2 run scoreboard players reset 𝐑𝐎𝐔𝐍𝐃｜𝟑:𝟎𝟎
execute if score .toggle toggleRound matches 2 run kill @e[tag=gameSettings,tag=settingsRound]
execute if score .toggle toggleRound matches 2 run summon text_display -135 111.6 -38 {Tags:[gameSettings,settingsRound],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"gold","italic":false,"text":"2:00"}]}

execute if score .toggle toggleRound matches 3 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Round Time","color":"light_purple"},{"text":" - ","color":"white"},{"text":"3 Minutes","color":"yellow"}]
execute if score .toggle toggleRound matches 3 run scoreboard players reset 𝐑𝐎𝐔𝐍𝐃｜𝐀𝐔𝐓𝐎
execute if score .toggle toggleRound matches 3 run scoreboard players reset 𝐑𝐎𝐔𝐍𝐃｜𝟏:𝟎𝟎
execute if score .toggle toggleRound matches 3 run scoreboard players reset 𝐑𝐎𝐔𝐍𝐃｜𝟐:𝟎𝟎
execute if score .toggle toggleRound matches 3 run scoreboard players set 𝐑𝐎𝐔𝐍𝐃｜𝟑:𝟎𝟎 MainReady 10
execute if score .toggle toggleRound matches 3 run scoreboard players set 𝐑𝐎𝐔𝐍𝐃｜𝟑:𝟎𝟎 MainTeam1 10
execute if score .toggle toggleRound matches 3 run scoreboard players set 𝐑𝐎𝐔𝐍𝐃｜𝟑:𝟎𝟎 MainTeam2 10
execute if score .toggle toggleRound matches 3 run kill @e[tag=gameSettings,tag=settingsRound]
execute if score .toggle toggleRound matches 3 run summon text_display -135 111.6 -38 {Tags:[gameSettings,settingsRound],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"yellow","italic":false,"text":"3:00"}]}

execute if score .toggle toggleRound matches 4 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Round Time","color":"light_purple"},{"text":" - ","color":"white"},{"text":"Automatic","color":"green"},{"text":" (default)","color":"gray"}]
execute if score .toggle toggleRound matches 4 run scoreboard players set 𝐑𝐎𝐔𝐍𝐃｜𝐀𝐔𝐓𝐎 MainReady 10
execute if score .toggle toggleRound matches 4 run scoreboard players set 𝐑𝐎𝐔𝐍𝐃｜𝐀𝐔𝐓𝐎 MainTeam1 10
execute if score .toggle toggleRound matches 4 run scoreboard players set 𝐑𝐎𝐔𝐍𝐃｜𝐀𝐔𝐓𝐎 MainTeam2 10
execute if score .toggle toggleRound matches 4 run scoreboard players reset 𝐑𝐎𝐔𝐍𝐃｜𝟏:𝟎𝟎
execute if score .toggle toggleRound matches 4 run scoreboard players reset 𝐑𝐎𝐔𝐍𝐃｜𝟐:𝟎𝟎
execute if score .toggle toggleRound matches 4 run scoreboard players reset 𝐑𝐎𝐔𝐍𝐃｜𝟑:𝟎𝟎
execute if score .toggle toggleRound matches 4 run kill @e[tag=gameSettings,tag=settingsRound]
execute if score .toggle toggleRound matches 4 run summon text_display -135 111.6 -38 {Tags:[gameSettings,settingsRound],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"green","italic":false,"text":"AUTO"}]}
