scoreboard objectives add toggleMap dummy

playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.7
execute if entity @a[tag=Participant] run tellraw @s[tag=!Participant] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Game settings are ",{"text":"locked","color":"red"},"."]
execute unless score .reset firstjoin matches 1 if entity @a[tag=!Participant] run scoreboard players add .toggle toggleMap 1
scoreboard players reset .original_map toggleMap
execute if score .toggle toggleMap matches 8 run scoreboard players set .toggle toggleMap 0

execute if score .toggle toggleMap matches 0 if entity @e[tag=gameSettings,distance=..30] run tellraw @s[tag=!Participant] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Map","color":"#ffcc66"},{"text":" - ","color":"white"},{"text":"Ra","color":"light_purple","bold":true},{"text":"n","color":"gold","bold":true},{"text":"d","color":"green","bold":true},{"text":"o","color":"yellow","bold":true},{"text":"m","color":"red","bold":true},{"text":" (default)","color":"gray"}]
execute if score .toggle toggleMap matches 0 run scoreboard players reset 𝐌𝐀𝐏｜𝐍𝐎𝐍𝐄
execute if score .toggle toggleMap matches 0 run scoreboard players set 𝐌𝐀𝐏｜𝐑𝐀𝐍𝐃𝐎𝐌 MainReady 12
execute if score .toggle toggleMap matches 0 run scoreboard players set 𝐌𝐀𝐏｜𝐑𝐀𝐍𝐃𝐎𝐌 MainTeam1 12
execute if score .toggle toggleMap matches 0 run scoreboard players set 𝐌𝐀𝐏｜𝐑𝐀𝐍𝐃𝐎𝐌 MainTeam2 12
execute if score .toggle toggleMap matches 0 run scoreboard players set 𝐌𝐀𝐏｜𝐑𝐀𝐍𝐃𝐎𝐌 MainRed 12
execute if score .toggle toggleMap matches 0 run scoreboard players set 𝐌𝐀𝐏｜𝐑𝐀𝐍𝐃𝐎𝐌 MainMag 12
execute if score .toggle toggleMap matches 0 run scoreboard players set 𝐌𝐀𝐏｜𝐑𝐀𝐍𝐃𝐎𝐌 MainAqu 12
execute if score .toggle toggleMap matches 0 run scoreboard players set 𝐌𝐀𝐏｜𝐑𝐀𝐍𝐃𝐎𝐌 MainLim 12
execute if score .toggle toggleMap matches 0 run scoreboard players set 𝐌𝐀𝐏｜𝐑𝐀𝐍𝐃𝐎𝐌 MainGol 12
execute if score .toggle toggleMap matches 0 run scoreboard players set 𝐌𝐀𝐏｜𝐑𝐀𝐍𝐃𝐎𝐌 MainYel 12
execute if score .toggle toggleMap matches 0 run scoreboard players reset 𝐌𝐀𝐏｜𝐒𝐋𝐀𝐓𝐄
execute if score .toggle toggleMap matches 0 run scoreboard players reset 𝐌𝐀𝐏｜𝐂𝐑𝐈𝐌𝐒𝐎𝐍
execute if score .toggle toggleMap matches 0 run scoreboard players reset 𝐌𝐀𝐏｜𝐒𝐀𝐍𝐃𝐒𝐓𝐎𝐑𝐌
execute if score .toggle toggleMap matches 0 run scoreboard players reset 𝐌𝐀𝐏｜𝐑𝐄𝐒𝐄𝐑𝐕𝐄
execute if score .toggle toggleMap matches 0 run scoreboard players reset 𝐌𝐀𝐏｜𝐒𝐀𝐍𝐂𝐓𝐔𝐀𝐑𝐘
execute if score .toggle toggleMap matches 0 run scoreboard players reset 𝐌𝐀𝐏｜𝐎𝐔𝐓𝐏𝐎𝐒𝐓
execute if score .toggle toggleMap matches 0 run scoreboard players reset 𝐌𝐀𝐏｜𝐂𝐑𝐘𝐏𝐓
execute if score .toggle toggleMap matches 0 run kill @e[tag=gameSettings,tag=settingsMap]
execute if score .toggle toggleMap matches 0 run summon text_display -128 112 -49 {Tags:[gameSettings,settingsMap],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"text":"Ra","color":"light_purple","bold":true},{"text":"n","color":"gold","bold":true},{"text":"d","color":"green","bold":true},{"text":"o","color":"yellow","bold":true},{"text":"m","color":"red","bold":true}]}

execute if score .toggle toggleMap matches 0 run summon block_display -128 111.5 -49 {Tags:["gameSettings","settingsMap"],Passengers:[{id:"minecraft:item_display",Tags:["gameSettings","settingsMap"],transformation:[1.5f,0f,0f,0f,0f,1.5f,0f,0f,0f,0f,1.5f,0f,0f,0f,0f,1f],item:{id:"minecraft:player_head",count:1,components:{"minecraft:enchantments":{"minecraft:vanishing_curse":1},"minecraft:profile":{id:[I;2000602273,-126194799,-1831711941,2142495530],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWQ5Y2M1OGFkMjVhMWFiMTZkMzZiYjVkNmQ0OTNjOGY1ODk4YzJiZjMwMmI2NGUzMjU5MjFjNDFjMzU4NjcifX19"}]}}}}]}

execute if score .toggle toggleMap matches 1 if entity @e[tag=gameSettings,distance=..30] run tellraw @s[tag=!Participant] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Map","color":"#ffcc66"},{"text":" - ","color":"white"},{"text":"Slate","color":"gray","bold":true}]
execute if score .toggle toggleMap matches 1 run scoreboard players reset 𝐌𝐀𝐏｜𝐍𝐎𝐍𝐄
execute if score .toggle toggleMap matches 1 run scoreboard players set 𝐌𝐀𝐏｜𝐒𝐋𝐀𝐓𝐄 MainReady 12
execute if score .toggle toggleMap matches 1 run scoreboard players set 𝐌𝐀𝐏｜𝐒𝐋𝐀𝐓𝐄 MainTeam1 12
execute if score .toggle toggleMap matches 1 run scoreboard players set 𝐌𝐀𝐏｜𝐒𝐋𝐀𝐓𝐄 MainTeam2 12
execute if score .toggle toggleMap matches 1 run scoreboard players set 𝐌𝐀𝐏｜𝐒𝐋𝐀𝐓𝐄 MainRed 12
execute if score .toggle toggleMap matches 1 run scoreboard players set 𝐌𝐀𝐏｜𝐒𝐋𝐀𝐓𝐄 MainMag 12
execute if score .toggle toggleMap matches 1 run scoreboard players set 𝐌𝐀𝐏｜𝐒𝐋𝐀𝐓𝐄 MainAqu 12
execute if score .toggle toggleMap matches 1 run scoreboard players set 𝐌𝐀𝐏｜𝐒𝐋𝐀𝐓𝐄 MainLim 12
execute if score .toggle toggleMap matches 1 run scoreboard players set 𝐌𝐀𝐏｜𝐒𝐋𝐀𝐓𝐄 MainGol 12
execute if score .toggle toggleMap matches 1 run scoreboard players set 𝐌𝐀𝐏｜𝐒𝐋𝐀𝐓𝐄 MainYel 12
execute if score .toggle toggleMap matches 1 run scoreboard players reset 𝐌𝐀𝐏｜𝐑𝐀𝐍𝐃𝐎𝐌
execute if score .toggle toggleMap matches 1 run scoreboard players reset 𝐌𝐀𝐏｜𝐂𝐑𝐈𝐌𝐒𝐎𝐍
execute if score .toggle toggleMap matches 1 run scoreboard players reset 𝐌𝐀𝐏｜𝐒𝐀𝐍𝐃𝐒𝐓𝐎𝐑𝐌
execute if score .toggle toggleMap matches 1 run scoreboard players reset 𝐌𝐀𝐏｜𝐑𝐄𝐒𝐄𝐑𝐕𝐄
execute if score .toggle toggleMap matches 1 run scoreboard players reset 𝐌𝐀𝐏｜𝐒𝐀𝐍𝐂𝐓𝐔𝐀𝐑𝐘
execute if score .toggle toggleMap matches 1 run scoreboard players reset 𝐌𝐀𝐏｜𝐎𝐔𝐓𝐏𝐎𝐒𝐓
execute if score .toggle toggleMap matches 1 run scoreboard players reset 𝐌𝐀𝐏｜𝐂𝐑𝐘𝐏𝐓
execute if score .toggle toggleMap matches 1 run kill @e[tag=gameSettings,tag=settingsMap]
execute if score .toggle toggleMap matches 1 run summon text_display -128 112 -49 {Tags:[gameSettings,settingsMap],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"text":"Slate","color":"gray","bold":true}]}
execute if score .toggle toggleMap matches 1 run summon block_display -128 111.5 -49 {Tags:["gameSettings","settingsMap"],Passengers:[{id:"minecraft:item_display",Tags:["gameSettings","settingsMap"],transformation:[1.5f,0f,0f,0f,0f,1.5f,0f,0f,0f,0f,1.5f,0f,0f,0f,0f,1f],item:{id:"minecraft:player_head",count:1,components:{"minecraft:enchantments":{"minecraft:vanishing_curse":1},"minecraft:profile":{id:[I;-683642524,-499782555,2076815261,1443283103],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNDBlNjIyYWVjN2ZkNDJmYmY4MTRlNTY0YjljN2Q5MzNiMzlmODA4MDQ5MjI5ZjI2MmU4MTAwNGE1N2Q0YmZkMiJ9fX0="}]}}}}]}
execute if score .toggle toggleMap matches 1 run summon text_display -128 115 -49 {Tags:[gameSettings,settingsMap],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"text":"Map Info","color":"gold","bold":true}]}
execute if score .toggle toggleMap matches 1 run summon text_display -128 114.6 -49 {Tags:[gameSettings,settingsMap],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"text":"Size","color":"#FFCC54","bold":true},{"text":": ","color":"white","bold":false},{"text":"Medium","color":"gold","bold":false}]}
execute if score .toggle toggleMap matches 1 run summon text_display -128 114.3 -49 {Tags:[gameSettings,settingsMap],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"text":"Rec. Players","color":"aqua","bold":true},{"text":": ","color":"white","bold":false},{"text":"4+","color":"yellow","bold":false}]}
execute if score .toggle toggleMap matches 1 run summon text_display -128 114 -49 {Tags:[gameSettings,settingsMap],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"text":"Power Ups","color":"light_purple","bold":true},{"text":": ","color":"white","bold":false},{"text":"2","color":"white","bold":false}]}
execute if score .toggle toggleMap matches 1 run summon text_display -128 113.7 -49 {Tags:[gameSettings,settingsMap],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"text":"Special Event","color":"light_purple","bold":true},{"text":": ","color":"white","bold":false},{"text":"None","color":"white","bold":false}]}



execute if score .toggle toggleMap matches 2 if entity @e[tag=gameSettings,distance=..30] run tellraw @s[tag=!Participant] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Map","color":"#ffcc66"},{"text":" - ","color":"white"},{"text":"Crimson","color":"dark_red","bold":true}]
execute if score .toggle toggleMap matches 2 run scoreboard players reset 𝐌𝐀𝐏｜𝐍𝐎𝐍𝐄
execute if score .toggle toggleMap matches 2 run scoreboard players set 𝐌𝐀𝐏｜𝐂𝐑𝐈𝐌𝐒𝐎𝐍 MainReady 12
execute if score .toggle toggleMap matches 2 run scoreboard players set 𝐌𝐀𝐏｜𝐂𝐑𝐈𝐌𝐒𝐎𝐍 MainTeam1 12
execute if score .toggle toggleMap matches 2 run scoreboard players set 𝐌𝐀𝐏｜𝐂𝐑𝐈𝐌𝐒𝐎𝐍 MainTeam2 12
execute if score .toggle toggleMap matches 2 run scoreboard players set 𝐌𝐀𝐏｜𝐂𝐑𝐈𝐌𝐒𝐎𝐍 MainRed 12
execute if score .toggle toggleMap matches 2 run scoreboard players set 𝐌𝐀𝐏｜𝐂𝐑𝐈𝐌𝐒𝐎𝐍 MainMag 12
execute if score .toggle toggleMap matches 2 run scoreboard players set 𝐌𝐀𝐏｜𝐂𝐑𝐈𝐌𝐒𝐎𝐍 MainAqu 12
execute if score .toggle toggleMap matches 2 run scoreboard players set 𝐌𝐀𝐏｜𝐂𝐑𝐈𝐌𝐒𝐎𝐍 MainLim 12
execute if score .toggle toggleMap matches 2 run scoreboard players set 𝐌𝐀𝐏｜𝐂𝐑𝐈𝐌𝐒𝐎𝐍 MainGol 12
execute if score .toggle toggleMap matches 2 run scoreboard players set 𝐌𝐀𝐏｜𝐂𝐑𝐈𝐌𝐒𝐎𝐍 MainYel 12
execute if score .toggle toggleMap matches 2 run scoreboard players reset 𝐌𝐀𝐏｜𝐒𝐋𝐀𝐓𝐄
execute if score .toggle toggleMap matches 2 run scoreboard players reset 𝐌𝐀𝐏｜𝐑𝐀𝐍𝐃𝐎𝐌
execute if score .toggle toggleMap matches 2 run scoreboard players reset 𝐌𝐀𝐏｜𝐒𝐀𝐍𝐃𝐒𝐓𝐎𝐑𝐌
execute if score .toggle toggleMap matches 2 run scoreboard players reset 𝐌𝐀𝐏｜𝐑𝐄𝐒𝐄𝐑𝐕𝐄
execute if score .toggle toggleMap matches 2 run scoreboard players reset 𝐌𝐀𝐏｜𝐒𝐀𝐍𝐂𝐓𝐔𝐀𝐑𝐘
execute if score .toggle toggleMap matches 2 run scoreboard players reset 𝐌𝐀𝐏｜𝐎𝐔𝐓𝐏𝐎𝐒𝐓
execute if score .toggle toggleMap matches 2 run scoreboard players reset 𝐌𝐀𝐏｜𝐂𝐑𝐘𝐏𝐓
execute if score .toggle toggleMap matches 2 run kill @e[tag=gameSettings,tag=settingsMap]
execute if score .toggle toggleMap matches 2 run summon text_display -128 112 -49 {Tags:[gameSettings,settingsMap],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"text":"Crimson","color":"dark_red","bold":true}]}
execute if score .toggle toggleMap matches 2 run summon block_display -128 111.5 -49 {Tags:["gameSettings","settingsMap"],Passengers:[{id:"minecraft:item_display",Tags:["gameSettings","settingsMap"],transformation:[1.5f,0f,0f,0f,0f,1.5f,0f,0f,0f,0f,1.5f,0f,0f,0f,0f,1f],item:{id:"minecraft:player_head",count:1,components:{"minecraft:enchantments":{"minecraft:vanishing_curse":1},"minecraft:profile":{id:[I;699604527,1579453279,-895334278,-2008776903],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzQ4MmQxYmE0YmRhYzk5MGY2ZWE5ODc3MDM1ODdmZDc5ZmU1NTU1NTM2MzI1MTk4NDY3OWQ0ZjI3OWNjMGMyYSJ9fX0="}]}}}}]}
execute if score .toggle toggleMap matches 2 run summon text_display -128 115 -49 {Tags:[gameSettings,settingsMap],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"text":"Map Info","color":"gold","bold":true}]}
execute if score .toggle toggleMap matches 2 run summon text_display -128 114.6 -49 {Tags:[gameSettings,settingsMap],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"text":"Size","color":"#FFCC54","bold":true},{"text":": ","color":"white","bold":false},{"text":"Small","color":"red","bold":false}]}
execute if score .toggle toggleMap matches 2 run summon text_display -128 114.3 -49 {Tags:[gameSettings,settingsMap],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"text":"Rec. Players","color":"aqua","bold":true},{"text":": ","color":"white","bold":false},{"text":"2+","color":"gold","bold":false}]}
execute if score .toggle toggleMap matches 2 run summon text_display -128 114 -49 {Tags:[gameSettings,settingsMap],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"text":"Power Ups","color":"light_purple","bold":true},{"text":": ","color":"white","bold":false},{"text":"2","color":"white","bold":false}]}
execute if score .toggle toggleMap matches 2 run summon text_display -128 113.7 -49 {Tags:[gameSettings,settingsMap],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"text":"Special Event","color":"light_purple","bold":true},{"text":": ","color":"white","bold":false},{"text":"None","color":"white","bold":false}]}


execute if score .toggle toggleMap matches 3 if entity @e[tag=gameSettings,distance=..30] run tellraw @s[tag=!Participant] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Map","color":"#ffcc66"},{"text":" - ","color":"white"},{"text":"Sandstorm","color":"yellow","bold":true}]
execute if score .toggle toggleMap matches 3 run scoreboard players reset 𝐌𝐀𝐏｜𝐍𝐎𝐍𝐄
execute if score .toggle toggleMap matches 3 run scoreboard players set 𝐌𝐀𝐏｜𝐒𝐀𝐍𝐃𝐒𝐓𝐎𝐑𝐌 MainReady 12
execute if score .toggle toggleMap matches 3 run scoreboard players set 𝐌𝐀𝐏｜𝐒𝐀𝐍𝐃𝐒𝐓𝐎𝐑𝐌 MainTeam1 12
execute if score .toggle toggleMap matches 3 run scoreboard players set 𝐌𝐀𝐏｜𝐒𝐀𝐍𝐃𝐒𝐓𝐎𝐑𝐌 MainTeam2 12
execute if score .toggle toggleMap matches 3 run scoreboard players set 𝐌𝐀𝐏｜𝐒𝐀𝐍𝐃𝐒𝐓𝐎𝐑𝐌 MainRed 12
execute if score .toggle toggleMap matches 3 run scoreboard players set 𝐌𝐀𝐏｜𝐒𝐀𝐍𝐃𝐒𝐓𝐎𝐑𝐌 MainMag 12
execute if score .toggle toggleMap matches 3 run scoreboard players set 𝐌𝐀𝐏｜𝐒𝐀𝐍𝐃𝐒𝐓𝐎𝐑𝐌 MainAqu 12
execute if score .toggle toggleMap matches 3 run scoreboard players set 𝐌𝐀𝐏｜𝐒𝐀𝐍𝐃𝐒𝐓𝐎𝐑𝐌 MainLim 12
execute if score .toggle toggleMap matches 3 run scoreboard players set 𝐌𝐀𝐏｜𝐒𝐀𝐍𝐃𝐒𝐓𝐎𝐑𝐌 MainGol 12
execute if score .toggle toggleMap matches 3 run scoreboard players set 𝐌𝐀𝐏｜𝐒𝐀𝐍𝐃𝐒𝐓𝐎𝐑𝐌 MainYel 12
execute if score .toggle toggleMap matches 3 run scoreboard players reset 𝐌𝐀𝐏｜𝐒𝐋𝐀𝐓𝐄
execute if score .toggle toggleMap matches 3 run scoreboard players reset 𝐌𝐀𝐏｜𝐂𝐑𝐈𝐌𝐒𝐎𝐍
execute if score .toggle toggleMap matches 3 run scoreboard players reset 𝐌𝐀𝐏｜𝐑𝐄𝐒𝐄𝐑𝐕𝐄
execute if score .toggle toggleMap matches 3 run scoreboard players reset 𝐌𝐀𝐏｜𝐒𝐀𝐍𝐂𝐓𝐔𝐀𝐑𝐘
execute if score .toggle toggleMap matches 3 run scoreboard players reset 𝐌𝐀𝐏｜𝐎𝐔𝐓𝐏𝐎𝐒𝐓
execute if score .toggle toggleMap matches 3 run scoreboard players reset 𝐌𝐀𝐏｜𝐂𝐑𝐘𝐏𝐓
execute if score .toggle toggleMap matches 3 run scoreboard players reset 𝐌𝐀𝐏｜𝐑𝐀𝐍𝐃𝐎𝐌
execute if score .toggle toggleMap matches 3 run kill @e[tag=gameSettings,tag=settingsMap]
execute if score .toggle toggleMap matches 3 run summon text_display -128 112 -49 {Tags:[gameSettings,settingsMap],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"text":"Sandstorm","color":"yellow","bold":true}]}
execute if score .toggle toggleMap matches 3 run summon block_display -128 111.5 -49 {Tags:["gameSettings","settingsMap"],Passengers:[{id:"minecraft:item_display",Tags:["gameSettings","settingsMap"],transformation:[1.5f,0f,0f,0f,0f,1.5f,0f,0f,0f,0f,1.5f,0f,0f,0f,0f,1f],item:{id:"minecraft:player_head",count:1,components:{"minecraft:enchantments":{"minecraft:vanishing_curse":1},"minecraft:profile":{id:[I;266289206,1224379644,-1695027525,13886629],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYzg1NDNjOTYxY2M1MzFiOTA2Y2U0ZmE0NWMzYzRmY2VhNzJkNzAyOTFkNTE3ZTAxZjE0ZDQ5MDVhNjg2MTM5YiJ9fX0="}]}}}}]}
execute if score .toggle toggleMap matches 3 run summon text_display -128 115 -49 {Tags:[gameSettings,settingsMap],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"text":"Map Info","color":"gold","bold":true}]}
execute if score .toggle toggleMap matches 3 run summon text_display -128 114.6 -49 {Tags:[gameSettings,settingsMap],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"text":"Size","color":"#FFCC54","bold":true},{"text":": ","color":"white","bold":false},{"text":"Large","color":"green","bold":false}]}
execute if score .toggle toggleMap matches 3 run summon text_display -128 114.3 -49 {Tags:[gameSettings,settingsMap],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"text":"Rec. Players","color":"aqua","bold":true},{"text":": ","color":"white","bold":false},{"text":"6+","color":"green","bold":false}]}
execute if score .toggle toggleMap matches 3 run summon text_display -128 114 -49 {Tags:[gameSettings,settingsMap],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"text":"Power Ups","color":"light_purple","bold":true},{"text":": ","color":"white","bold":false},{"text":"10","color":"white","bold":false}]}
execute if score .toggle toggleMap matches 3 run summon text_display -128 113.7 -49 {Tags:[gameSettings,settingsMap],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"text":"Special Event","color":"light_purple","bold":true},{"text":": ","color":"white","bold":false},{"text":"Storm","color":"yellow","bold":false}]}

execute if score .toggle toggleMap matches 4 if entity @e[tag=gameSettings,distance=..30] run tellraw @s[tag=!Participant] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Map","color":"#ffcc66"},{"text":" - ","color":"white"},{"text":"Reserve","color":"dark_green","bold":true}]
execute if score .toggle toggleMap matches 4 run scoreboard players reset 𝐌𝐀𝐏｜𝐍𝐎𝐍𝐄
execute if score .toggle toggleMap matches 4 run scoreboard players set 𝐌𝐀𝐏｜𝐑𝐄𝐒𝐄𝐑𝐕𝐄 MainReady 12
execute if score .toggle toggleMap matches 4 run scoreboard players set 𝐌𝐀𝐏｜𝐑𝐄𝐒𝐄𝐑𝐕𝐄 MainTeam1 12
execute if score .toggle toggleMap matches 4 run scoreboard players set 𝐌𝐀𝐏｜𝐑𝐄𝐒𝐄𝐑𝐕𝐄 MainTeam2 12
execute if score .toggle toggleMap matches 4 run scoreboard players set 𝐌𝐀𝐏｜𝐑𝐄𝐒𝐄𝐑𝐕𝐄 MainRed 12
execute if score .toggle toggleMap matches 4 run scoreboard players set 𝐌𝐀𝐏｜𝐑𝐄𝐒𝐄𝐑𝐕𝐄 MainMag 12
execute if score .toggle toggleMap matches 4 run scoreboard players set 𝐌𝐀𝐏｜𝐑𝐄𝐒𝐄𝐑𝐕𝐄 MainAqu 12
execute if score .toggle toggleMap matches 4 run scoreboard players set 𝐌𝐀𝐏｜𝐑𝐄𝐒𝐄𝐑𝐕𝐄 MainLim 12
execute if score .toggle toggleMap matches 4 run scoreboard players set 𝐌𝐀𝐏｜𝐑𝐄𝐒𝐄𝐑𝐕𝐄 MainGol 12
execute if score .toggle toggleMap matches 4 run scoreboard players set 𝐌𝐀𝐏｜𝐑𝐄𝐒𝐄𝐑𝐕𝐄 MainYel 12
execute if score .toggle toggleMap matches 4 run scoreboard players reset 𝐌𝐀𝐏｜𝐒𝐋𝐀𝐓𝐄
execute if score .toggle toggleMap matches 4 run scoreboard players reset 𝐌𝐀𝐏｜𝐂𝐑𝐈𝐌𝐒𝐎𝐍
execute if score .toggle toggleMap matches 4 run scoreboard players reset 𝐌𝐀𝐏｜𝐒𝐀𝐍𝐃𝐒𝐓𝐎𝐑𝐌
execute if score .toggle toggleMap matches 4 run scoreboard players reset 𝐌𝐀𝐏｜𝐒𝐀𝐍𝐂𝐓𝐔𝐀𝐑𝐘
execute if score .toggle toggleMap matches 4 run scoreboard players reset 𝐌𝐀𝐏｜𝐎𝐔𝐓𝐏𝐎𝐒𝐓
execute if score .toggle toggleMap matches 4 run scoreboard players reset 𝐌𝐀𝐏｜𝐂𝐑𝐘𝐏𝐓
execute if score .toggle toggleMap matches 4 run scoreboard players reset 𝐌𝐀𝐏｜𝐑𝐀𝐍𝐃𝐎𝐌
execute if score .toggle toggleMap matches 4 run kill @e[tag=gameSettings,tag=settingsMap]
execute if score .toggle toggleMap matches 4 run summon text_display -128 112 -49 {Tags:[gameSettings,settingsMap],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"text":"Reserve","color":"dark_green","bold":true}]}
execute if score .toggle toggleMap matches 4 run summon block_display -128 111.5 -49 {Tags:["gameSettings","settingsMap"],Passengers:[{id:"minecraft:item_display",Tags:["gameSettings","settingsMap"],transformation:[1.5f,0f,0f,0f,0f,1.5f,0f,0f,0f,0f,1.5f,0f,0f,0f,0f,1f],item:{id:"minecraft:player_head",count:1,components:{"minecraft:enchantments":{"minecraft:vanishing_curse":1},"minecraft:profile":{id:[I;1624674453,2120489044,-1638163455,1861490717],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvN2QxMjgwMjBlMzYxOTFhOGQ2ZWJlN2FiZDkwY2U5NGI1MGIzNjhmMDg5MjlkMjJhM2UwNmE4NDZlZTU0NzhhZCJ9fX0="}]}}}}]}
execute if score .toggle toggleMap matches 4 run summon text_display -128 115 -49 {Tags:[gameSettings,settingsMap],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"text":"Map Info","color":"gold","bold":true}]}
execute if score .toggle toggleMap matches 4 run summon text_display -128 114.6 -49 {Tags:[gameSettings,settingsMap],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"text":"Size","color":"#FFCC54","bold":true},{"text":": ","color":"white","bold":false},{"text":"Small","color":"red","bold":false}]}
execute if score .toggle toggleMap matches 4 run summon text_display -128 114.3 -49 {Tags:[gameSettings,settingsMap],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"text":"Rec. Players","color":"aqua","bold":true},{"text":": ","color":"white","bold":false},{"text":"2+","color":"gold","bold":false}]}
execute if score .toggle toggleMap matches 4 run summon text_display -128 114 -49 {Tags:[gameSettings,settingsMap],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"text":"Power Ups","color":"light_purple","bold":true},{"text":": ","color":"white","bold":false},{"text":"2","color":"white","bold":false}]}
execute if score .toggle toggleMap matches 4 run summon text_display -128 113.7 -49 {Tags:[gameSettings,settingsMap],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"text":"Special Event","color":"light_purple","bold":true},{"text":": ","color":"white","bold":false},{"text":"None","color":"white","bold":false}]}

execute if score .toggle toggleMap matches 5 if entity @e[tag=gameSettings,distance=..30] run tellraw @s[tag=!Participant] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Map","color":"#ffcc66"},{"text":" - ","color":"white"},{"text":"Sanctuary","color":"light_purple","bold":true}]
execute if score .toggle toggleMap matches 5 run scoreboard players reset 𝐌𝐀𝐏｜𝐍𝐎𝐍𝐄
execute if score .toggle toggleMap matches 5 run scoreboard players set 𝐌𝐀𝐏｜𝐒𝐀𝐍𝐂𝐓𝐔𝐀𝐑𝐘 MainReady 12
execute if score .toggle toggleMap matches 5 run scoreboard players set 𝐌𝐀𝐏｜𝐒𝐀𝐍𝐂𝐓𝐔𝐀𝐑𝐘 MainTeam1 12
execute if score .toggle toggleMap matches 5 run scoreboard players set 𝐌𝐀𝐏｜𝐒𝐀𝐍𝐂𝐓𝐔𝐀𝐑𝐘 MainTeam2 12
execute if score .toggle toggleMap matches 5 run scoreboard players set 𝐌𝐀𝐏｜𝐒𝐀𝐍𝐂𝐓𝐔𝐀𝐑𝐘 MainRed 12
execute if score .toggle toggleMap matches 5 run scoreboard players set 𝐌𝐀𝐏｜𝐒𝐀𝐍𝐂𝐓𝐔𝐀𝐑𝐘 MainMag 12
execute if score .toggle toggleMap matches 5 run scoreboard players set 𝐌𝐀𝐏｜𝐒𝐀𝐍𝐂𝐓𝐔𝐀𝐑𝐘 MainAqu 12
execute if score .toggle toggleMap matches 5 run scoreboard players set 𝐌𝐀𝐏｜𝐒𝐀𝐍𝐂𝐓𝐔𝐀𝐑𝐘 MainLim 12
execute if score .toggle toggleMap matches 5 run scoreboard players set 𝐌𝐀𝐏｜𝐒𝐀𝐍𝐂𝐓𝐔𝐀𝐑𝐘 MainGol 12
execute if score .toggle toggleMap matches 5 run scoreboard players set 𝐌𝐀𝐏｜𝐒𝐀𝐍𝐂𝐓𝐔𝐀𝐑𝐘 MainYel 12
execute if score .toggle toggleMap matches 5 run scoreboard players reset 𝐌𝐀𝐏｜𝐒𝐋𝐀𝐓𝐄
execute if score .toggle toggleMap matches 5 run scoreboard players reset 𝐌𝐀𝐏｜𝐂𝐑𝐈𝐌𝐒𝐎𝐍
execute if score .toggle toggleMap matches 5 run scoreboard players reset 𝐌𝐀𝐏｜𝐒𝐀𝐍𝐃𝐒𝐓𝐎𝐑𝐌
execute if score .toggle toggleMap matches 5 run scoreboard players reset 𝐌𝐀𝐏｜𝐑𝐄𝐒𝐄𝐑𝐕𝐄
execute if score .toggle toggleMap matches 5 run scoreboard players reset 𝐌𝐀𝐏｜𝐎𝐔𝐓𝐏𝐎𝐒𝐓
execute if score .toggle toggleMap matches 5 run scoreboard players reset 𝐌𝐀𝐏｜𝐂𝐑𝐘𝐏𝐓
execute if score .toggle toggleMap matches 5 run scoreboard players reset 𝐌𝐀𝐏｜𝐑𝐀𝐍𝐃𝐎𝐌
execute if score .toggle toggleMap matches 5 run kill @e[tag=gameSettings,tag=settingsMap]
execute if score .toggle toggleMap matches 5 run summon text_display -128 112 -49 {Tags:[gameSettings,settingsMap],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"text":"Sanctuary","color":"light_purple","bold":true}]}
execute if score .toggle toggleMap matches 5 run summon block_display -128 111.5 -49 {Tags:["gameSettings","settingsMap"],Passengers:[{id:"minecraft:item_display",Tags:["gameSettings","settingsMap"],transformation:[1.5f,0f,0f,0f,0f,1.5f,0f,0f,0f,0f,1.5f,0f,0f,0f,0f,1f],item:{id:"minecraft:player_head",count:1,components:{"minecraft:enchantments":{"minecraft:vanishing_curse":1},"minecraft:profile":{id:[I;706779824,252371090,912968486,-1397080021],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOTY3OTg2MWY3ZWNmZTQ5NDEwMzIxNGQ4YTY5YjRjZjUxYmQ2YTUxYzIyNjYyZGM3MjM0NWYyMzExNWMwYTZlZSJ9fX0="}]}}}}]}
execute if score .toggle toggleMap matches 5 run summon text_display -128 115 -49 {Tags:[gameSettings,settingsMap],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"text":"Map Info","color":"gold","bold":true}]}
execute if score .toggle toggleMap matches 5 run summon text_display -128 114.6 -49 {Tags:[gameSettings,settingsMap],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"text":"Size","color":"#FFCC54","bold":true},{"text":": ","color":"white","bold":false},{"text":"Small","color":"red","bold":false}]}
execute if score .toggle toggleMap matches 5 run summon text_display -128 114.3 -49 {Tags:[gameSettings,settingsMap],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"text":"Rec. Players","color":"aqua","bold":true},{"text":": ","color":"white","bold":false},{"text":"4+","color":"yellow","bold":false}]}
execute if score .toggle toggleMap matches 5 run summon text_display -128 114 -49 {Tags:[gameSettings,settingsMap],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"text":"Power Ups","color":"light_purple","bold":true},{"text":": ","color":"white","bold":false},{"text":"2","color":"white","bold":false}]}
execute if score .toggle toggleMap matches 5 run summon text_display -128 113.7 -49 {Tags:[gameSettings,settingsMap],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"text":"Special Event","color":"light_purple","bold":true},{"text":": ","color":"white","bold":false},{"text":"None","color":"white","bold":false}]}

execute if score .toggle toggleMap matches 6 if entity @e[tag=gameSettings,distance=..30] run tellraw @s[tag=!Participant] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Map","color":"#ffcc66"},{"text":" - ","color":"white"},{"text":"Outpost","color":"#0059e0","bold":true}]
execute if score .toggle toggleMap matches 6 run scoreboard players reset 𝐌𝐀𝐏｜𝐍𝐎𝐍𝐄
execute if score .toggle toggleMap matches 6 run scoreboard players set 𝐌𝐀𝐏｜𝐎𝐔𝐓𝐏𝐎𝐒𝐓 MainReady 12
execute if score .toggle toggleMap matches 6 run scoreboard players set 𝐌𝐀𝐏｜𝐎𝐔𝐓𝐏𝐎𝐒𝐓 MainTeam1 12
execute if score .toggle toggleMap matches 6 run scoreboard players set 𝐌𝐀𝐏｜𝐎𝐔𝐓𝐏𝐎𝐒𝐓 MainTeam2 12
execute if score .toggle toggleMap matches 6 run scoreboard players set 𝐌𝐀𝐏｜𝐎𝐔𝐓𝐏𝐎𝐒𝐓 MainRed 12
execute if score .toggle toggleMap matches 6 run scoreboard players set 𝐌𝐀𝐏｜𝐎𝐔𝐓𝐏𝐎𝐒𝐓 MainMag 12
execute if score .toggle toggleMap matches 6 run scoreboard players set 𝐌𝐀𝐏｜𝐎𝐔𝐓𝐏𝐎𝐒𝐓 MainAqu 12
execute if score .toggle toggleMap matches 6 run scoreboard players set 𝐌𝐀𝐏｜𝐎𝐔𝐓𝐏𝐎𝐒𝐓 MainLim 12
execute if score .toggle toggleMap matches 6 run scoreboard players set 𝐌𝐀𝐏｜𝐎𝐔𝐓𝐏𝐎𝐒𝐓 MainGol 12
execute if score .toggle toggleMap matches 6 run scoreboard players set 𝐌𝐀𝐏｜𝐎𝐔𝐓𝐏𝐎𝐒𝐓 MainYel 12
execute if score .toggle toggleMap matches 6 run scoreboard players reset 𝐌𝐀𝐏｜𝐒𝐋𝐀𝐓𝐄
execute if score .toggle toggleMap matches 6 run scoreboard players reset 𝐌𝐀𝐏｜𝐂𝐑𝐈𝐌𝐒𝐎𝐍
execute if score .toggle toggleMap matches 6 run scoreboard players reset 𝐌𝐀𝐏｜𝐒𝐀𝐍𝐃𝐒𝐓𝐎𝐑𝐌
execute if score .toggle toggleMap matches 6 run scoreboard players reset 𝐌𝐀𝐏｜𝐑𝐄𝐒𝐄𝐑𝐕𝐄
execute if score .toggle toggleMap matches 6 run scoreboard players reset 𝐌𝐀𝐏｜𝐒𝐀𝐍𝐂𝐓𝐔𝐀𝐑𝐘
execute if score .toggle toggleMap matches 6 run scoreboard players reset 𝐌𝐀𝐏｜𝐂𝐑𝐘𝐏𝐓
execute if score .toggle toggleMap matches 6 run scoreboard players reset 𝐌𝐀𝐏｜𝐑𝐀𝐍𝐃𝐎𝐌
execute if score .toggle toggleMap matches 6 run kill @e[tag=gameSettings,tag=settingsMap]
execute if score .toggle toggleMap matches 6 run summon text_display -128 112 -49 {Tags:[gameSettings,settingsMap],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"text":"Outpost","color":"#0059e0","bold":true}]}
execute if score .toggle toggleMap matches 6 run summon block_display -128 111.5 -49 {Tags:["gameSettings","settingsMap"],Passengers:[{id:"minecraft:item_display",Tags:["gameSettings","settingsMap"],transformation:[1.5f,0f,0f,0f,0f,1.5f,0f,0f,0f,0f,1.5f,0f,0f,0f,0f,1f],item:{id:"minecraft:player_head",count:1,components:{"minecraft:enchantments":{"minecraft:vanishing_curse":1},"minecraft:profile":{id:[I;529436024,1667695163,-554323900,-1181923064],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNmVlZjdlNTZjZGU3NDA3NzJkZmI3NmRkZDJmNTg0YmU4OTA3Yjg1OTc2NjhlNDAyNjM0OTg2NDY5MjMwYWE0OSJ9fX0="}]}}}}]}
execute if score .toggle toggleMap matches 6 run summon text_display -128 115 -49 {Tags:[gameSettings,settingsMap],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"text":"Map Info","color":"gold","bold":true}]}
execute if score .toggle toggleMap matches 6 run summon text_display -128 114.6 -49 {Tags:[gameSettings,settingsMap],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"text":"Size","color":"#FFCC54","bold":true},{"text":": ","color":"white","bold":false},{"text":"Medium","color":"gold","bold":false}]}
execute if score .toggle toggleMap matches 6 run summon text_display -128 114.3 -49 {Tags:[gameSettings,settingsMap],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"text":"Rec. Players","color":"aqua","bold":true},{"text":": ","color":"white","bold":false},{"text":"4+","color":"yellow","bold":false}]}
execute if score .toggle toggleMap matches 6 run summon text_display -128 114 -49 {Tags:[gameSettings,settingsMap],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"text":"Power Ups","color":"light_purple","bold":true},{"text":": ","color":"white","bold":false},{"text":"2","color":"white","bold":false}]}
execute if score .toggle toggleMap matches 6 run summon text_display -128 113.7 -49 {Tags:[gameSettings,settingsMap],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"text":"Special Event","color":"light_purple","bold":true},{"text":": ","color":"white","bold":false},{"text":"None","color":"white","bold":false}]}

execute if score .toggle toggleMap matches 7 if entity @e[tag=gameSettings,distance=..30] run tellraw @s[tag=!Participant] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Map","color":"#ffcc66"},{"text":" - ","color":"white"},{"text":"Crypt","color":"#ffb868","bold":true}]
execute if score .toggle toggleMap matches 7 run scoreboard players reset 𝐌𝐀𝐏｜𝐍𝐎𝐍𝐄
execute if score .toggle toggleMap matches 7 run scoreboard players set 𝐌𝐀𝐏｜𝐂𝐑𝐘𝐏𝐓 MainReady 12
execute if score .toggle toggleMap matches 7 run scoreboard players set 𝐌𝐀𝐏｜𝐂𝐑𝐘𝐏𝐓 MainTeam1 12
execute if score .toggle toggleMap matches 7 run scoreboard players set 𝐌𝐀𝐏｜𝐂𝐑𝐘𝐏𝐓 MainTeam2 12
execute if score .toggle toggleMap matches 7 run scoreboard players set 𝐌𝐀𝐏｜𝐂𝐑𝐘𝐏𝐓 MainRed 12
execute if score .toggle toggleMap matches 7 run scoreboard players set 𝐌𝐀𝐏｜𝐂𝐑𝐘𝐏𝐓 MainMag 12
execute if score .toggle toggleMap matches 7 run scoreboard players set 𝐌𝐀𝐏｜𝐂𝐑𝐘𝐏𝐓 MainAqu 12
execute if score .toggle toggleMap matches 7 run scoreboard players set 𝐌𝐀𝐏｜𝐂𝐑𝐘𝐏𝐓 MainLim 12
execute if score .toggle toggleMap matches 7 run scoreboard players set 𝐌𝐀𝐏｜𝐂𝐑𝐘𝐏𝐓 MainGol 12
execute if score .toggle toggleMap matches 7 run scoreboard players set 𝐌𝐀𝐏｜𝐂𝐑𝐘𝐏𝐓 MainYel 12
execute if score .toggle toggleMap matches 7 run scoreboard players reset 𝐌𝐀𝐏｜𝐒𝐋𝐀𝐓𝐄
execute if score .toggle toggleMap matches 7 run scoreboard players reset 𝐌𝐀𝐏｜𝐂𝐑𝐈𝐌𝐒𝐎𝐍
execute if score .toggle toggleMap matches 7 run scoreboard players reset 𝐌𝐀𝐏｜𝐒𝐀𝐍𝐃𝐒𝐓𝐎𝐑𝐌
execute if score .toggle toggleMap matches 7 run scoreboard players reset 𝐌𝐀𝐏｜𝐑𝐄𝐒𝐄𝐑𝐕𝐄
execute if score .toggle toggleMap matches 7 run scoreboard players reset 𝐌𝐀𝐏｜𝐒𝐀𝐍𝐂𝐓𝐔𝐀𝐑𝐘
execute if score .toggle toggleMap matches 7 run scoreboard players reset 𝐌𝐀𝐏｜𝐎𝐔𝐓𝐏𝐎𝐒𝐓
execute if score .toggle toggleMap matches 7 run scoreboard players reset 𝐌𝐀𝐏｜𝐑𝐀𝐍𝐃𝐎𝐌
execute if score .toggle toggleMap matches 7 run kill @e[tag=gameSettings,tag=settingsMap]
execute if score .toggle toggleMap matches 7 run summon text_display -128 112 -49 {Tags:[gameSettings,settingsMap],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"text":"Crypt","color":"#ffb868","bold":true}]}
execute if score .toggle toggleMap matches 7 run summon block_display -128 111.5 -49 {Tags:["gameSettings","settingsMap"],Passengers:[{id:"minecraft:item_display",Tags:["gameSettings","settingsMap"],transformation:[1.5f,0f,0f,0f,0f,1.5f,0f,0f,0f,0f,1.5f,0f,0f,0f,0f,1f],item:{id:"minecraft:player_head",count:1,components:{"minecraft:enchantments":{"vanishing_curse":1},"minecraft:profile":{"properties":[{"name":"textures","value":"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYWE0YjdlODc4MjFkYjRlNmU0MmU3OGQ3ZjI2MGI2Mzc5OTNkNmJlOGRlOTRmNDNlNDMxNzViYWZmOTFmNSJ9fX0="}]}}}}]}
execute if score .toggle toggleMap matches 7 run summon text_display -128 115 -49 {Tags:[gameSettings,settingsMap],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"text":"Map Info","color":"gold","bold":true}]}
execute if score .toggle toggleMap matches 7 run summon text_display -128 114.6 -49 {Tags:[gameSettings,settingsMap],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"text":"Size","color":"#FFCC54","bold":true},{"text":": ","color":"white","bold":false},{"text":"Medium","color":"gold","bold":false}]}
execute if score .toggle toggleMap matches 7 run summon text_display -128 114.3 -49 {Tags:[gameSettings,settingsMap],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"text":"Rec. Players","color":"aqua","bold":true},{"text":": ","color":"white","bold":false},{"text":"4+","color":"yellow","bold":false}]}
execute if score .toggle toggleMap matches 7 run summon text_display -128 114 -49 {Tags:[gameSettings,settingsMap],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"text":"Power Ups","color":"light_purple","bold":true},{"text":": ","color":"white","bold":false},{"text":"5","color":"white","bold":false}]}
execute if score .toggle toggleMap matches 7 run summon text_display -128 113.7 -49 {Tags:[gameSettings,settingsMap],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"text":"Special Event","color":"light_purple","bold":true},{"text":": ","color":"white","bold":false},{"text":"Wall of Fire","color":"#ffa229","bold":false}]}
