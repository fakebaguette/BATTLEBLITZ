execute if score gameStart3Timer: gameTimer matches 4.. run scoreboard players add gameStart3Timer: gameTimer 4
execute if score gameStart3Timer: gameTimer matches 1 run scoreboard players set gameStart3Timer: gameTimer 4
execute unless score gameStart3Timer: gameTimer matches 1.. run scoreboard players add gameStart3Timer: gameTimer 1
execute if score gameStart3Timer: gameTimer matches 1..39 run schedule function battle:gameobjective/startgame3 1s
function battle:gameobjective/gameobjectiveextra/gamecheck
execute as @a[tag=Participant] at @s run function battle:gameobjective/gameobjectiveextra/escape_box

execute if score gameStart3Timer: gameTimer matches 1 run function battle:gameobjective/startgameinit

execute if score gameStart3Timer: gameTimer matches 1.. run scoreboard players reset 𝐌𝐀𝐏｜𝐍𝐎𝐍𝐄
execute if score gameStart3Timer: gameTimer matches 1.. run scoreboard players reset 𝐍𝐎𝐍𝐄｜𝟎
execute if score gameStart3Timer: gameTimer matches 1.. run scoreboard players reset 𝐓𝐈𝐌𝐄:｜𝐍𝐎𝐍𝐄

execute if score gameStart3Timer: gameTimer matches 04 run scoreboard players reset 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟏𝟎
execute if score gameStart3Timer: gameTimer matches 08 run scoreboard players reset 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟗
execute if score gameStart3Timer: gameTimer matches 12 run scoreboard players reset 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟖
execute if score gameStart3Timer: gameTimer matches 16 run scoreboard players reset 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟕
execute if score gameStart3Timer: gameTimer matches 20 run scoreboard players reset 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟔
execute if score gameStart3Timer: gameTimer matches 24 run scoreboard players reset 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟓
execute if score gameStart3Timer: gameTimer matches 28 run scoreboard players reset 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟒
execute if score gameStart3Timer: gameTimer matches 32 run scoreboard players reset 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟑
execute if score gameStart3Timer: gameTimer matches 36 run scoreboard players reset 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟐
execute if score gameStart3Timer: gameTimer matches 39 run scoreboard players reset 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟏
execute if score gameStart3Timer: gameTimer matches 40 run scoreboard players reset 𝐓𝐈𝐌𝐄:｜𝐍𝐎𝐖!

execute if score gameStart3Timer: gameTimer matches 01 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟏𝟎 MainRed 0
execute if score gameStart3Timer: gameTimer matches 04 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟗 MainRed 0
execute if score gameStart3Timer: gameTimer matches 08 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟖 MainRed 0
execute if score gameStart3Timer: gameTimer matches 12 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟕 MainRed 0
execute if score gameStart3Timer: gameTimer matches 16 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟔 MainRed 0
execute if score gameStart3Timer: gameTimer matches 20 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟓 MainRed 0
execute if score gameStart3Timer: gameTimer matches 24 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟒 MainRed 0
execute if score gameStart3Timer: gameTimer matches 28 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟑 MainRed 0
execute if score gameStart3Timer: gameTimer matches 32 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟐 MainRed 0
execute if score gameStart3Timer: gameTimer matches 36 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟏 MainRed 0
execute if score gameStart3Timer: gameTimer matches 39 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝐍𝐎𝐖! MainRed 0

execute if score gameStart3Timer: gameTimer matches 01 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟏𝟎 MainMag 0
execute if score gameStart3Timer: gameTimer matches 04 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟗 MainMag 0
execute if score gameStart3Timer: gameTimer matches 08 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟖 MainMag 0
execute if score gameStart3Timer: gameTimer matches 12 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟕 MainMag 0
execute if score gameStart3Timer: gameTimer matches 16 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟔 MainMag 0
execute if score gameStart3Timer: gameTimer matches 20 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟓 MainMag 0
execute if score gameStart3Timer: gameTimer matches 24 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟒 MainMag 0
execute if score gameStart3Timer: gameTimer matches 28 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟑 MainMag 0
execute if score gameStart3Timer: gameTimer matches 32 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟐 MainMag 0
execute if score gameStart3Timer: gameTimer matches 36 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟏 MainMag 0
execute if score gameStart3Timer: gameTimer matches 39 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝐍𝐎𝐖! MainMag 0

execute if score gameStart3Timer: gameTimer matches 01 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟏𝟎 MainAqu 0
execute if score gameStart3Timer: gameTimer matches 04 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟗 MainAqu 0
execute if score gameStart3Timer: gameTimer matches 08 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟖 MainAqu 0
execute if score gameStart3Timer: gameTimer matches 12 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟕 MainAqu 0
execute if score gameStart3Timer: gameTimer matches 16 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟔 MainAqu 0
execute if score gameStart3Timer: gameTimer matches 20 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟓 MainAqu 0
execute if score gameStart3Timer: gameTimer matches 24 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟒 MainAqu 0
execute if score gameStart3Timer: gameTimer matches 28 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟑 MainAqu 0
execute if score gameStart3Timer: gameTimer matches 32 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟐 MainAqu 0
execute if score gameStart3Timer: gameTimer matches 36 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟏 MainAqu 0
execute if score gameStart3Timer: gameTimer matches 39 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝐍𝐎𝐖! MainAqu 0

execute if score gameStart3Timer: gameTimer matches 01 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟏𝟎 MainLim 0
execute if score gameStart3Timer: gameTimer matches 04 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟗 MainLim 0
execute if score gameStart3Timer: gameTimer matches 08 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟖 MainLim 0
execute if score gameStart3Timer: gameTimer matches 12 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟕 MainLim 0
execute if score gameStart3Timer: gameTimer matches 16 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟔 MainLim 0
execute if score gameStart3Timer: gameTimer matches 20 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟓 MainLim 0
execute if score gameStart3Timer: gameTimer matches 24 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟒 MainLim 0
execute if score gameStart3Timer: gameTimer matches 28 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟑 MainLim 0
execute if score gameStart3Timer: gameTimer matches 32 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟐 MainLim 0
execute if score gameStart3Timer: gameTimer matches 36 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟏 MainLim 0
execute if score gameStart3Timer: gameTimer matches 39 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝐍𝐎𝐖! MainLim 0

execute if score gameStart3Timer: gameTimer matches 01 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟏𝟎 MainGol 0
execute if score gameStart3Timer: gameTimer matches 04 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟗 MainGol 0
execute if score gameStart3Timer: gameTimer matches 08 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟖 MainGol 0
execute if score gameStart3Timer: gameTimer matches 12 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟕 MainGol 0
execute if score gameStart3Timer: gameTimer matches 16 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟔 MainGol 0
execute if score gameStart3Timer: gameTimer matches 20 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟓 MainGol 0
execute if score gameStart3Timer: gameTimer matches 24 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟒 MainGol 0
execute if score gameStart3Timer: gameTimer matches 28 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟑 MainGol 0
execute if score gameStart3Timer: gameTimer matches 32 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟐 MainGol 0
execute if score gameStart3Timer: gameTimer matches 36 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟏 MainGol 0
execute if score gameStart3Timer: gameTimer matches 39 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝐍𝐎𝐖! MainGol 0

execute if score gameStart3Timer: gameTimer matches 01 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟏𝟎 MainYel 0
execute if score gameStart3Timer: gameTimer matches 04 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟗 MainYel 0
execute if score gameStart3Timer: gameTimer matches 08 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟖 MainYel 0
execute if score gameStart3Timer: gameTimer matches 12 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟕 MainYel 0
execute if score gameStart3Timer: gameTimer matches 16 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟔 MainYel 0
execute if score gameStart3Timer: gameTimer matches 20 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟓 MainYel 0
execute if score gameStart3Timer: gameTimer matches 24 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟒 MainYel 0
execute if score gameStart3Timer: gameTimer matches 28 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟑 MainYel 0
execute if score gameStart3Timer: gameTimer matches 32 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟐 MainYel 0
execute if score gameStart3Timer: gameTimer matches 36 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝟎𝟎:𝟎𝟏 MainYel 0
execute if score gameStart3Timer: gameTimer matches 39 run scoreboard players set 𝐓𝐈𝐌𝐄:｜𝐍𝐎𝐖! MainYel 0

execute if score gameStart3Timer: gameTimer matches 12 run title @a[tag=Participant] times 0t 30t 10t
execute if score gameStart3Timer: gameTimer matches 12 run title @a[tag=Participant] title {"text":"Round 3","bold":true,"color":"red"}
execute if score gameStart3Timer: gameTimer matches 12 if score .toggle toggleRoundCount matches 1 run title @a[tag=Participant] subtitle ["",{"text":"⬆","color":"white"},{"text":" BATTLESTARS ✯ ","bold":true,"color":"gold"},{"text":"⬆","color":"white"}]
execute if score gameStart3Timer: gameTimer matches 20 run title @a[tag=Participant] title {"text":"Starting in","bold":true,"color":"green"}
execute if score gameStart3Timer: gameTimer matches 20 run title @a[tag=Participant] subtitle ["",{"text":"\u27eb\u27eb","bold":true},{"text":" 5","color":"yellow"},{"text":" \u27ea\u27ea","bold":true}]
execute if score gameStart3Timer: gameTimer matches 24 run title @a[tag=Participant] title {"text":"Starting in","bold":true,"color":"green"}
execute if score gameStart3Timer: gameTimer matches 24 run title @a[tag=Participant] subtitle ["",{"text":"\u27eb\u27eb","bold":true},{"text":" 4","color":"yellow"},{"text":" \u27ea\u27ea","bold":true}]
execute if score gameStart3Timer: gameTimer matches 28 run title @a[tag=Participant] title {"text":"Starting in","bold":true,"color":"green"}
execute if score gameStart3Timer: gameTimer matches 28 run title @a[tag=Participant] subtitle ["",{"text":"\u27eb\u27eb","bold":true},{"text":" 3","color":"gold"},{"text":" \u27ea\u27ea","bold":true}]
execute if score gameStart3Timer: gameTimer matches 32 run title @a[tag=Participant] title {"text":"Starting in","bold":true,"color":"green"}
execute if score gameStart3Timer: gameTimer matches 32 run title @a[tag=Participant] subtitle ["",{"text":"\u27eb\u27eb","bold":true},{"text":" 2","color":"red"},{"text":" \u27ea\u27ea","bold":true}]
execute if score gameStart3Timer: gameTimer matches 36 run title @a[tag=Participant] title {"text":"Starting in","bold":true,"color":"green"}
execute if score gameStart3Timer: gameTimer matches 36 run title @a[tag=Participant] subtitle ["",{"text":"\u27eb\u27eb","bold":true},{"text":" 1","color":"dark_red"},{"text":" \u27ea\u27ea","bold":true}]
execute if score gameStart3Timer: gameTimer matches 40 run title @a[tag=Participant] title {"text":"Starting in","bold":true,"color":"green"}
execute if score gameStart3Timer: gameTimer matches 40 run title @a[tag=Participant] subtitle ["",{"text":"\u27eb\u27eb","bold":true},{"text":" NOW!","color":"green"},{"text":" \u27ea\u27ea","bold":true}]

execute if score gameStart3Timer: gameTimer matches 12 at @a[tag=Participant] run playsound minecraft:block.note_block.bell master @a[distance=..50] ~ ~ ~ 100 1.5
execute if score gameStart3Timer: gameTimer matches 12 at @a[tag=Participant] run playsound minecraft:block.note_block.chime master @a[distance=..50] ~ ~ ~ 100 1.5
execute if score gameStart3Timer: gameTimer matches 12 at @a[tag=Participant] run playsound minecraft:block.note_block.bit master @a[distance=..50] ~ ~ ~ .45 1.5
execute if score gameStart3Timer: gameTimer matches 12 at @a[tag=Participant] run playsound minecraft:block.note_block.xylophone master @a[distance=..50] ~ ~ ~ 100 1.5

execute if score gameStart3Timer: gameTimer matches 20 at @a[tag=Participant] run playsound minecraft:block.note_block.bell master @a[distance=..50] ~ ~ ~ 100 0.7
execute if score gameStart3Timer: gameTimer matches 20 at @a[tag=Participant] run playsound minecraft:block.note_block.chime master @a[distance=..50] ~ ~ ~ 100 0.7
execute if score gameStart3Timer: gameTimer matches 20 at @a[tag=Participant] run playsound minecraft:block.note_block.bit master @a[distance=..50] ~ ~ ~ .65 0.7
execute if score gameStart3Timer: gameTimer matches 20 at @a[tag=Participant] run playsound minecraft:block.note_block.xylophone master @a[distance=..50] ~ ~ ~ 100 0.7

execute if score gameStart3Timer: gameTimer matches 24 at @a[tag=Participant] run playsound minecraft:block.note_block.bell master @a[distance=..50] ~ ~ ~ 100 0.7
execute if score gameStart3Timer: gameTimer matches 24 at @a[tag=Participant] run playsound minecraft:block.note_block.chime master @a[distance=..50] ~ ~ ~ 100 0.7
execute if score gameStart3Timer: gameTimer matches 24 at @a[tag=Participant] run playsound minecraft:block.note_block.bit master @a[distance=..50] ~ ~ ~ .65 0.7
execute if score gameStart3Timer: gameTimer matches 24 at @a[tag=Participant] run playsound minecraft:block.note_block.xylophone master @a[distance=..50] ~ ~ ~ 100 0.7

execute if score gameStart3Timer: gameTimer matches 28 at @a[tag=Participant] run playsound minecraft:block.note_block.bell master @a[distance=..50] ~ ~ ~ 100 0.7
execute if score gameStart3Timer: gameTimer matches 28 at @a[tag=Participant] run playsound minecraft:block.note_block.chime master @a[distance=..50] ~ ~ ~ 100 0.7
execute if score gameStart3Timer: gameTimer matches 28 at @a[tag=Participant] run playsound minecraft:block.note_block.bit master @a[distance=..50] ~ ~ ~ .65 0.7
execute if score gameStart3Timer: gameTimer matches 28 at @a[tag=Participant] run playsound minecraft:block.note_block.xylophone master @a[distance=..50] ~ ~ ~ 100 0.7

execute if score gameStart3Timer: gameTimer matches 32 at @a[tag=Participant] run playsound minecraft:block.note_block.bell master @a[distance=..50] ~ ~ ~ 100 0.7
execute if score gameStart3Timer: gameTimer matches 32 at @a[tag=Participant] run playsound minecraft:block.note_block.chime master @a[distance=..50] ~ ~ ~ 100 0.7
execute if score gameStart3Timer: gameTimer matches 32 at @a[tag=Participant] run playsound minecraft:block.note_block.bit master @a[distance=..50] ~ ~ ~ .65 0.7
execute if score gameStart3Timer: gameTimer matches 32 at @a[tag=Participant] run playsound minecraft:block.note_block.xylophone master @a[distance=..50] ~ ~ ~ 100 0.7

execute if score gameStart3Timer: gameTimer matches 36 at @a[tag=Participant] run playsound minecraft:block.note_block.bell master @a[distance=..50] ~ ~ ~ 100 0.7
execute if score gameStart3Timer: gameTimer matches 36 at @a[tag=Participant] run playsound minecraft:block.note_block.chime master @a[distance=..50] ~ ~ ~ 100 0.7
execute if score gameStart3Timer: gameTimer matches 36 at @a[tag=Participant] run playsound minecraft:block.note_block.bit master @a[distance=..50] ~ ~ ~ .65 0.7
execute if score gameStart3Timer: gameTimer matches 36 at @a[tag=Participant] run playsound minecraft:block.note_block.xylophone master @a[distance=..50] ~ ~ ~ 100 0.7

execute if score gameStart3Timer: gameTimer matches 40 at @a[tag=Participant] run playsound minecraft:block.note_block.bell master @a[distance=..50] ~ ~ ~ 100 1.25
execute if score gameStart3Timer: gameTimer matches 40 at @a[tag=Participant] run playsound minecraft:block.note_block.chime master @a[distance=..50] ~ ~ ~ 100 1.25
execute if score gameStart3Timer: gameTimer matches 40 at @a[tag=Participant] run playsound minecraft:block.note_block.bit master @a[distance=..50] ~ ~ ~ .45 1.25
execute if score gameStart3Timer: gameTimer matches 40 at @a[tag=Participant] run playsound minecraft:block.note_block.xylophone master @a[distance=..50] ~ ~ ~ 100 1.25
execute if score gameStart3Timer: gameTimer matches 40 at @a[tag=Participant] run playsound minecraft:item.trident.riptide_3 master @a[distance=..50] ~ ~ ~ 100 1.6


execute if score gameStart3Timer: gameTimer matches 40 run function battle:gameobjective/round3/main

execute if score gameStart3Timer: gameTimer matches 40 run function battle:gameobjective/gameobjectiveextra/update/timereset
execute if score gameStart3Timer: gameTimer matches 40 run scoreboard players reset gameStart3Timer: gameTimer

