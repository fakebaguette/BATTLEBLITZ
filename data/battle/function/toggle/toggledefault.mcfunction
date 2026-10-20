playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.7

execute if entity @a[tag=!Participant] run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| All game settings have been set to default."]
execute if entity @a[tag=Participant] run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Game settings are ",{"text":"locked","color":"red"},"."]
execute if entity @a[tag=!Participant] run scoreboard players set .toggle toggleMap 0
execute if entity @a[tag=!Participant] run scoreboard players set .toggle toggleRound 4
execute if entity @a[tag=!Participant] run scoreboard players set .toggle toggleRoundCount 3
execute if entity @a[tag=!Participant] run scoreboard players set .toggle toggleCenter 5
execute if entity @a[tag=!Participant] run scoreboard players set .toggle togglePower 1
execute if entity @a[tag=!Participant] run scoreboard players set .toggle toggleEvent 1
execute if entity @a[tag=!Participant] run scoreboard players set .toggle toggleDouble 2
execute if entity @a[tag=!Participant] run scoreboard players set .toggle toggleHalf 2
execute if entity @a[tag=!Participant] run scoreboard players set .toggle toggleQuick 2

execute if score .toggle toggleMap matches 0 run scoreboard players reset 𝐌𝐀𝐏｜𝐍𝐎𝐍𝐄
execute if score .toggle toggleMap matches 0 run scoreboard players set 𝐌𝐀𝐏｜𝐑𝐀𝐍𝐃𝐎𝐌 MainReady 11
execute if score .toggle toggleMap matches 0 run scoreboard players set 𝐌𝐀𝐏｜𝐑𝐀𝐍𝐃𝐎𝐌 MainTeam1 11
execute if score .toggle toggleMap matches 0 run scoreboard players set 𝐌𝐀𝐏｜𝐑𝐀𝐍𝐃𝐎𝐌 MainTeam2 11
execute if score .toggle toggleMap matches 0 run scoreboard players set 𝐌𝐀𝐏｜𝐑𝐀𝐍𝐃𝐎𝐌 MainRed 11
execute if score .toggle toggleMap matches 0 run scoreboard players set 𝐌𝐀𝐏｜𝐑𝐀𝐍𝐃𝐎𝐌 MainMag 11
execute if score .toggle toggleMap matches 0 run scoreboard players set 𝐌𝐀𝐏｜𝐑𝐀𝐍𝐃𝐎𝐌 MainAqu 11
execute if score .toggle toggleMap matches 0 run scoreboard players set 𝐌𝐀𝐏｜𝐑𝐀𝐍𝐃𝐎𝐌 MainLim 11
execute if score .toggle toggleMap matches 0 run scoreboard players set 𝐌𝐀𝐏｜𝐑𝐀𝐍𝐃𝐎𝐌 MainGol 11
execute if score .toggle toggleMap matches 0 run scoreboard players set 𝐌𝐀𝐏｜𝐑𝐀𝐍𝐃𝐎𝐌 MainYel 11
execute if score .toggle toggleMap matches 0 run scoreboard players reset 𝐌𝐀𝐏｜𝐒𝐋𝐀𝐓𝐄
execute if score .toggle toggleMap matches 0 run scoreboard players reset 𝐌𝐀𝐏｜𝐂𝐑𝐈𝐌𝐒𝐎𝐍
execute if score .toggle toggleMap matches 0 run scoreboard players reset 𝐌𝐀𝐏｜𝐒𝐀𝐍𝐃𝐒𝐓𝐎𝐑𝐌
execute if score .toggle toggleMap matches 0 run scoreboard players reset 𝐌𝐀𝐏｜𝐑𝐄𝐒𝐄𝐑𝐕𝐄
execute if score .toggle toggleMap matches 0 run scoreboard players reset 𝐌𝐀𝐏｜𝐒𝐀𝐍𝐂𝐓𝐔𝐀𝐑𝐘
execute if score .toggle toggleMap matches 0 run scoreboard players reset 𝐌𝐀𝐏｜𝐅𝐎𝐑𝐓𝐑𝐄𝐒𝐒
execute if score .toggle toggleMap matches 0 run kill @e[tag=gameSettings,tag=settingsMap]
execute if score .toggle toggleMap matches 0 run summon text_display -128 112 -49 {Tags:[gameSettings,settingsMap],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"text":"Ra","color":"light_purple","bold":true},{"text":"n","color":"gold","bold":true},{"text":"d","color":"green","bold":true},{"text":"o","color":"yellow","bold":true},{"text":"m","color":"red","bold":true}]}
execute if score .toggle toggleMap matches 0 run summon block_display -128 111.5 -49 {Tags:["gameSettings","settingsMap"],Passengers:[{id:"minecraft:item_display",Tags:["gameSettings","settingsMap"],transformation:[1.5f,0f,0f,0f,0f,1.5f,0f,0f,0f,0f,1.5f,0f,0f,0f,0f,1f],item:{id:"minecraft:player_head",count:1,components:{enchantment_glint_override:true,"minecraft:profile":{id:[I;2000602273,-126194799,-1831711941,2142495530],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvOWQ5Y2M1OGFkMjVhMWFiMTZkMzZiYjVkNmQ0OTNjOGY1ODk4YzJiZjMwMmI2NGUzMjU5MjFjNDFjMzU4NjcifX19"}]}}}}]}

execute if score .toggle toggleMap matches 0 run kill @e[tag=gameSettings,tag=settingsDefault]
execute if score .toggle toggleMap matches 0 run summon text_display -135 111.6 -28 {Tags:[gameSettings,settingsDefault],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"green","italic":false,"text":"✔"}]}
execute if score .toggle toggleMap matches 0 run schedule function battle:toggle/delaydefault 10t

execute if score .toggle toggleRound matches 4 run scoreboard players set 𝐑𝐎𝐔𝐍𝐃｜𝐀𝐔𝐓𝐎 MainReady 10
execute if score .toggle toggleRound matches 4 run scoreboard players set 𝐑𝐎𝐔𝐍𝐃｜𝐀𝐔𝐓𝐎 MainTeam1 10
execute if score .toggle toggleRound matches 4 run scoreboard players set 𝐑𝐎𝐔𝐍𝐃｜𝐀𝐔𝐓𝐎 MainTeam2 10
execute if score .toggle toggleRound matches 4 run scoreboard players reset 𝐑𝐎𝐔𝐍𝐃｜𝟏:𝟎𝟎
execute if score .toggle toggleRound matches 4 run scoreboard players reset 𝐑𝐎𝐔𝐍𝐃｜𝟐:𝟎𝟎
execute if score .toggle toggleRound matches 4 run scoreboard players reset 𝐑𝐎𝐔𝐍𝐃｜𝟑:𝟎𝟎
execute if score .toggle toggleRound matches 4 run kill @e[tag=gameSettings,tag=settingsRound]
execute if score .toggle toggleRound matches 4 run summon text_display -135 111.6 -38 {Tags:[gameSettings,settingsRound],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"green","italic":false,"text":"AUTO"}]}

execute if score .toggle toggleRoundCount matches 3 run scoreboard players set 𝐑𝐎𝐔𝐍𝐃𝐒｜𝐀𝐔𝐓𝐎 MainReady 11
execute if score .toggle toggleRoundCount matches 3 run scoreboard players set 𝐑𝐎𝐔𝐍𝐃𝐒｜𝐀𝐔𝐓𝐎 MainTeam1 11
execute if score .toggle toggleRoundCount matches 3 run scoreboard players set 𝐑𝐎𝐔𝐍𝐃𝐒｜𝐀𝐔𝐓𝐎 MainTeam2 11
execute if score .toggle toggleRoundCount matches 3 run scoreboard players reset 𝐑𝐎𝐔𝐍𝐃𝐒｜𝟑
execute if score .toggle toggleRoundCount matches 3 run scoreboard players reset 𝐑𝐎𝐔𝐍𝐃𝐒｜𝟱
execute if score .toggle toggleRoundCount matches 3 run kill @e[tag=gameSettings,tag=settingsRoundCount]
execute if score .toggle toggleRoundCount matches 3 run summon text_display -135 111.6 -33 {Tags:[gameSettings,settingsRoundCount],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"green","italic":false,"text":"AUTO"}]}


execute if score .toggle toggleCenter matches 5 run scoreboard players set 𝐂𝐄𝐍𝐓𝐄𝐑｜𝐀𝐔𝐓𝐎 MainReady 9
execute if score .toggle toggleCenter matches 5 run scoreboard players set 𝐂𝐄𝐍𝐓𝐄𝐑｜𝐀𝐔𝐓𝐎 MainTeam1 9
execute if score .toggle toggleCenter matches 5 run scoreboard players set 𝐂𝐄𝐍𝐓𝐄𝐑｜𝐀𝐔𝐓𝐎 MainTeam2 9
execute if score .toggle toggleCenter matches 5 run scoreboard players reset 𝐂𝐄𝐍𝐓𝐄𝐑｜𝟎:𝟎𝟓
execute if score .toggle toggleCenter matches 5 run scoreboard players reset 𝐂𝐄𝐍𝐓𝐄𝐑｜𝟎:𝟏𝟎
execute if score .toggle toggleCenter matches 5 run scoreboard players reset 𝐂𝐄𝐍𝐓𝐄𝐑｜𝟎:𝟐𝟎
execute if score .toggle toggleCenter matches 5 run scoreboard players reset 𝐂𝐄𝐍𝐓𝐄𝐑｜𝟎:𝟑𝟎
execute if score .toggle toggleCenter matches 5 run kill @e[tag=gameSettings,tag=settingsCenter]
execute if score .toggle toggleCenter matches 5 run summon text_display -135 111.6 -43 {Tags:[gameSettings,settingsCenter],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"green","italic":false,"text":"AUTO"}]}

execute if score .toggle togglePower matches 1 run scoreboard players set 𝐏𝐎𝐖𝐄𝐑𝐔𝐏𝐒｜✔ MainReady 6
execute if score .toggle togglePower matches 1 run scoreboard players set 𝐏𝐎𝐖𝐄𝐑𝐔𝐏𝐒｜✔ MainTeam1 6
execute if score .toggle togglePower matches 1 run scoreboard players set 𝐏𝐎𝐖𝐄𝐑𝐔𝐏𝐒｜✔ MainTeam2 6
execute if score .toggle togglePower matches 1 run scoreboard players reset 𝐏𝐎𝐖𝐄𝐑𝐔𝐏𝐒｜❌
execute if score .toggle togglePower matches 1 run kill @e[tag=gameSettings,tag=modifierPower]
execute if score .toggle togglePower matches 1 run summon text_display -121 111.6 -43 {Tags:[gameSettings,modifierPower],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"green","italic":false,"text":"✔"}]}

execute if score .toggle toggleEvent matches 1 run scoreboard players set 𝐄𝐕𝐄𝐍𝐓｜✔ MainReady 5
execute if score .toggle toggleEvent matches 1 run scoreboard players set 𝐄𝐕𝐄𝐍𝐓｜✔ MainTeam1 5
execute if score .toggle toggleEvent matches 1 run scoreboard players set 𝐄𝐕𝐄𝐍𝐓｜✔ MainTeam2 5
execute if score .toggle toggleEvent matches 1 run scoreboard players reset 𝐄𝐕𝐄𝐍𝐓｜❌
execute if score .toggle toggleEvent matches 1 run kill @e[tag=gameSettings,tag=specialEvent]
execute if score .toggle toggleEvent matches 1 run summon text_display -121 111.6 -38 {Tags:[gameSettings,specialEvent],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"green","italic":false,"text":"✔"}]}

execute if score .toggle toggleDouble matches 2 run scoreboard players set 𝐃𝐎𝐔𝐁𝐋𝐄｜❌ MainReady 4
execute if score .toggle toggleDouble matches 2 run scoreboard players set 𝐃𝐎𝐔𝐁𝐋𝐄｜❌ MainTeam1 4
execute if score .toggle toggleDouble matches 2 run scoreboard players set 𝐃𝐎𝐔𝐁𝐋𝐄｜❌ MainTeam2 4
execute if score .toggle toggleDouble matches 2 run scoreboard players reset 𝐃𝐎𝐔𝐁𝐋𝐄｜✔
execute if score .toggle toggleDouble matches 2 run kill @e[tag=doubleHealth]
execute if score .toggle toggleDouble matches 2 run summon text_display -121 111.6 -33 {Tags:[gameSettings,doubleHealth],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"red","italic":false,"text":"❌"}]}

execute if score .toggle toggleHalf matches 2 run scoreboard players set 𝐇𝐀𝐋𝐅｜❌ MainReady 3
execute if score .toggle toggleHalf matches 2 run scoreboard players set 𝐇𝐀𝐋𝐅｜❌ MainTeam1 3
execute if score .toggle toggleHalf matches 2 run scoreboard players set 𝐇𝐀𝐋𝐅｜❌ MainTeam2 3
execute if score .toggle toggleHalf matches 2 run scoreboard players reset 𝐇𝐀𝐋𝐅｜✔
execute if score .toggle toggleHalf matches 2 run kill @e[tag=halfHealth]
execute if score .toggle toggleHalf matches 2 run summon text_display -121 111.6 -28 {Tags:[gameSettings,halfHealth],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"red","italic":false,"text":"❌"}]}

execute if score .toggle toggleQuick matches 2 run scoreboard players set 𝐐𝐔𝐈𝐂𝐊𝐌𝐀𝐓𝐂𝐇｜❌ MainReady 1
execute if score .toggle toggleQuick matches 2 run scoreboard players set 𝐐𝐔𝐈𝐂𝐊𝐌𝐀𝐓𝐂𝐇｜❌ MainTeam1 1
execute if score .toggle toggleQuick matches 2 run scoreboard players set 𝐐𝐔𝐈𝐂𝐊𝐌𝐀𝐓𝐂𝐇｜❌ MainTeam2 1
execute if score .toggle toggleQuick matches 2 run scoreboard players reset 𝐐𝐔𝐈𝐂𝐊𝐌𝐀𝐓𝐂𝐇｜✔
execute if score .toggle toggleQuick matches 2 run kill @e[tag=quickMatch]
execute if score .toggle toggleQuick matches 2 run summon text_display -121 111.6 -48 {Tags:[gameSettings,quickMatch],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"red","italic":false,"text":"❌"}]}
