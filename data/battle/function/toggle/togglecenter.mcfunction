scoreboard objectives add toggleCenter dummy

playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.7

execute if entity @a[tag=Participant] run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Game settings are ",{"text":"locked","color":"red"},"."]
execute if entity @a[tag=!Participant] run scoreboard players add .toggle toggleCenter 1
execute if score .toggle toggleCenter matches 6 run scoreboard players set .toggle toggleCenter 1

execute if score .toggle toggleCenter matches 1 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Center Lock Time","color":"light_purple"},{"text":" - ","color":"white"},{"text":"5 Seconds","color":"dark_red"}]
execute if score .toggle toggleCenter matches 1 run scoreboard players reset 𝐂𝐄𝐍𝐓𝐄𝐑｜𝐀𝐔𝐓𝐎
execute if score .toggle toggleCenter matches 1 run scoreboard players set 𝐂𝐄𝐍𝐓𝐄𝐑｜𝟎:𝟎𝟓 MainReady 9
execute if score .toggle toggleCenter matches 1 run scoreboard players set 𝐂𝐄𝐍𝐓𝐄𝐑｜𝟎:𝟎𝟓 MainTeam1 9
execute if score .toggle toggleCenter matches 1 run scoreboard players set 𝐂𝐄𝐍𝐓𝐄𝐑｜𝟎:𝟎𝟓 MainTeam2 9
execute if score .toggle toggleCenter matches 1 run scoreboard players reset 𝐂𝐄𝐍𝐓𝐄𝐑｜𝟎:𝟏𝟎
execute if score .toggle toggleCenter matches 1 run scoreboard players reset 𝐂𝐄𝐍𝐓𝐄𝐑｜𝟎:𝟐𝟎
execute if score .toggle toggleCenter matches 1 run scoreboard players reset 𝐂𝐄𝐍𝐓𝐄𝐑｜𝟎:𝟑𝟎
execute if score .toggle toggleCenter matches 1 run kill @e[tag=gameSettings,tag=settingsCenter]
execute if score .toggle toggleCenter matches 1 run summon text_display -135 111.6 -43 {Tags:[gameSettings,settingsCenter],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"dark_red","italic":false,"text":"0:05"}]}


execute if score .toggle toggleCenter matches 2 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Center Lock Time","color":"light_purple"},{"text":" - ","color":"white"},{"text":"10 Seconds","color":"red"}]
execute if score .toggle toggleCenter matches 2 run scoreboard players reset 𝐂𝐄𝐍𝐓𝐄𝐑｜𝐀𝐔𝐓𝐎
execute if score .toggle toggleCenter matches 2 run scoreboard players reset 𝐂𝐄𝐍𝐓𝐄𝐑｜𝟎:𝟎𝟓
execute if score .toggle toggleCenter matches 2 run scoreboard players set 𝐂𝐄𝐍𝐓𝐄𝐑｜𝟎:𝟏𝟎 MainReady 9
execute if score .toggle toggleCenter matches 2 run scoreboard players set 𝐂𝐄𝐍𝐓𝐄𝐑｜𝟎:𝟏𝟎 MainTeam1 9
execute if score .toggle toggleCenter matches 2 run scoreboard players set 𝐂𝐄𝐍𝐓𝐄𝐑｜𝟎:𝟏𝟎 MainTeam2 9
execute if score .toggle toggleCenter matches 2 run scoreboard players reset 𝐂𝐄𝐍𝐓𝐄𝐑｜𝟎:𝟐𝟎
execute if score .toggle toggleCenter matches 2 run scoreboard players reset 𝐂𝐄𝐍𝐓𝐄𝐑｜𝟎:𝟑𝟎
execute if score .toggle toggleCenter matches 2 run kill @e[tag=gameSettings,tag=settingsCenter]
execute if score .toggle toggleCenter matches 2 run summon text_display -135 111.6 -43 {Tags:[gameSettings,settingsCenter],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"red","italic":false,"text":"0:10"}]}


execute if score .toggle toggleCenter matches 3 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Center Lock Time","color":"light_purple"},{"text":" - ","color":"white"},{"text":"20 Seconds","color":"gold"}]
execute if score .toggle toggleCenter matches 3 run scoreboard players reset 𝐂𝐄𝐍𝐓𝐄𝐑｜𝐀𝐔𝐓𝐎
execute if score .toggle toggleCenter matches 3 run scoreboard players reset 𝐂𝐄𝐍𝐓𝐄𝐑｜𝟎:𝟎𝟓
execute if score .toggle toggleCenter matches 3 run scoreboard players reset 𝐂𝐄𝐍𝐓𝐄𝐑｜𝟎:𝟏𝟎
execute if score .toggle toggleCenter matches 3 run scoreboard players set 𝐂𝐄𝐍𝐓𝐄𝐑｜𝟎:𝟐𝟎 MainReady 9
execute if score .toggle toggleCenter matches 3 run scoreboard players set 𝐂𝐄𝐍𝐓𝐄𝐑｜𝟎:𝟐𝟎 MainTeam1 9
execute if score .toggle toggleCenter matches 3 run scoreboard players set 𝐂𝐄𝐍𝐓𝐄𝐑｜𝟎:𝟐𝟎 MainTeam2 9
execute if score .toggle toggleCenter matches 3 run scoreboard players reset 𝐂𝐄𝐍𝐓𝐄𝐑｜𝟎:𝟑𝟎
execute if score .toggle toggleCenter matches 3 run kill @e[tag=gameSettings,tag=settingsCenter]
execute if score .toggle toggleCenter matches 3 run summon text_display -135 111.6 -43 {Tags:[gameSettings,settingsCenter],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"gold","italic":false,"text":"0:20"}]}


execute if score .toggle toggleCenter matches 4 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Center Lock Time","color":"light_purple"},{"text":" - ","color":"white"},{"text":"30 Seconds","color":"yellow"}]
execute if score .toggle toggleCenter matches 4 run scoreboard players reset 𝐂𝐄𝐍𝐓𝐄𝐑｜𝐀𝐔𝐓𝐎
execute if score .toggle toggleCenter matches 4 run scoreboard players reset 𝐂𝐄𝐍𝐓𝐄𝐑｜𝟎:𝟎𝟓
execute if score .toggle toggleCenter matches 4 run scoreboard players reset 𝐂𝐄𝐍𝐓𝐄𝐑｜𝟎:𝟏𝟎
execute if score .toggle toggleCenter matches 4 run scoreboard players reset 𝐂𝐄𝐍𝐓𝐄𝐑｜𝟎:𝟐𝟎
execute if score .toggle toggleCenter matches 4 run scoreboard players set 𝐂𝐄𝐍𝐓𝐄𝐑｜𝟎:𝟑𝟎 MainReady 9
execute if score .toggle toggleCenter matches 4 run scoreboard players set 𝐂𝐄𝐍𝐓𝐄𝐑｜𝟎:𝟑𝟎 MainTeam1 9
execute if score .toggle toggleCenter matches 4 run scoreboard players set 𝐂𝐄𝐍𝐓𝐄𝐑｜𝟎:𝟑𝟎 MainTeam2 9
execute if score .toggle toggleCenter matches 4 run kill @e[tag=gameSettings,tag=settingsCenter]
execute if score .toggle toggleCenter matches 4 run summon text_display -135 111.6 -43 {Tags:[gameSettings,settingsCenter],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"yellow","italic":false,"text":"0:30"}]}


execute if score .toggle toggleCenter matches 5 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Center Lock Time","color":"light_purple"},{"text":" - ","color":"white"},{"text":"Automatic ","color":"green"},{"text":"(default)","color":"gray"}]
execute if score .toggle toggleCenter matches 5 run scoreboard players set 𝐂𝐄𝐍𝐓𝐄𝐑｜𝐀𝐔𝐓𝐎 MainReady 9
execute if score .toggle toggleCenter matches 5 run scoreboard players set 𝐂𝐄𝐍𝐓𝐄𝐑｜𝐀𝐔𝐓𝐎 MainTeam1 9
execute if score .toggle toggleCenter matches 5 run scoreboard players set 𝐂𝐄𝐍𝐓𝐄𝐑｜𝐀𝐔𝐓𝐎 MainTeam2 9
execute if score .toggle toggleCenter matches 5 run scoreboard players reset 𝐂𝐄𝐍𝐓𝐄𝐑｜𝟎:𝟎𝟓
execute if score .toggle toggleCenter matches 5 run scoreboard players reset 𝐂𝐄𝐍𝐓𝐄𝐑｜𝟎:𝟏𝟎
execute if score .toggle toggleCenter matches 5 run scoreboard players reset 𝐂𝐄𝐍𝐓𝐄𝐑｜𝟎:𝟐𝟎
execute if score .toggle toggleCenter matches 5 run scoreboard players reset 𝐂𝐄𝐍𝐓𝐄𝐑｜𝟎:𝟑𝟎
execute if score .toggle toggleCenter matches 5 run kill @e[tag=gameSettings,tag=settingsCenter]
execute if score .toggle toggleCenter matches 5 run summon text_display -135 111.6 -43 {Tags:[gameSettings,settingsCenter],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"green","italic":false,"text":"AUTO"}]}
