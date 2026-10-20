scoreboard objectives add toggleQuick dummy

playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.7
execute if entity @a[tag=Participant] run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Game settings are ",{"text":"locked","color":"red"},"."]
execute if entity @a[tag=!Participant] run scoreboard players add .toggle toggleQuick 1
execute if score .toggle toggleQuick matches 3 run scoreboard players set .toggle toggleQuick 1
execute if score .toggle toggleQuick matches 1 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Quick Match","color":"light_purple"},{"text":" - ","color":"white"},{"text":"✔","color":"green"}]
execute if score .toggle toggleQuick matches 1 run scoreboard players set 𝐐𝐔𝐈𝐂𝐊𝐌𝐀𝐓𝐂𝐇｜✔ MainReady 1
execute if score .toggle toggleQuick matches 1 run scoreboard players set 𝐐𝐔𝐈𝐂𝐊𝐌𝐀𝐓𝐂𝐇｜✔ MainTeam1 1
execute if score .toggle toggleQuick matches 1 run scoreboard players set 𝐐𝐔𝐈𝐂𝐊𝐌𝐀𝐓𝐂𝐇｜✔ MainTeam2 1
execute if score .toggle toggleQuick matches 1 run scoreboard players reset 𝐐𝐔𝐈𝐂𝐊𝐌𝐀𝐓𝐂𝐇｜❌
execute if score .toggle toggleQuick matches 1 run kill @e[tag=quickMatch]
execute if score .toggle toggleQuick matches 1 run summon text_display -121 111.6 -48 {Tags:[gameSettings,quickMatch],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"green","italic":false,"text":"✔"}]}


execute if score .toggle toggleQuick matches 2 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Quick Match","color":"light_purple"},{"text":" - ","color":"white"},{"text":"❌","color":"red"},{"text":" (default)","color":"gray"}]
execute if score .toggle toggleQuick matches 2 run scoreboard players set 𝐐𝐔𝐈𝐂𝐊𝐌𝐀𝐓𝐂𝐇｜❌ MainReady 1
execute if score .toggle toggleQuick matches 2 run scoreboard players set 𝐐𝐔𝐈𝐂𝐊𝐌𝐀𝐓𝐂𝐇｜❌ MainTeam1 1
execute if score .toggle toggleQuick matches 2 run scoreboard players set 𝐐𝐔𝐈𝐂𝐊𝐌𝐀𝐓𝐂𝐇｜❌ MainTeam2 1
execute if score .toggle toggleQuick matches 2 run scoreboard players reset 𝐐𝐔𝐈𝐂𝐊𝐌𝐀𝐓𝐂𝐇｜✔
execute if score .toggle toggleQuick matches 2 run kill @e[tag=quickMatch]
execute if score .toggle toggleQuick matches 2 run summon text_display -121 111.6 -48 {Tags:[gameSettings,quickMatch],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"red","italic":false,"text":"❌"}]}

team join objGreen 𝐐𝐔𝐈𝐂𝐊𝐌𝐀𝐓𝐂𝐇｜✔
team join objRed 𝐐𝐔𝐈𝐂𝐊𝐌𝐀𝐓𝐂𝐇｜❌