execute if score round3: gameTimer matches 120 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"30 SECONDS","color":"red","bold":true},{"text":" remaining!","color":"white"}]
execute if score round3: gameTimer matches 180 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"15 SECONDS","color":"#ff3300","bold":true},{"text":" ","color":"#ff3300"},{"text":"remaining!","color":"white"}]
execute if score round3: gameTimer matches 220 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"5 SECONDS ","bold":true,"color":"#ff0000"},{"text":"remaining!","color":"white"}]
execute if score round3: gameTimer matches 224 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"4 SECONDS ","bold":true,"color":"#ff0000"},{"text":"remaining!","color":"white"}]
execute if score round3: gameTimer matches 228 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"3 SECONDS ","bold":true,"color":"#ff0000"},{"text":"remaining!","color":"white"}]
execute if score round3: gameTimer matches 232 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"2 SECONDS ","bold":true,"color":"#ff0000"},{"text":"remaining!","color":"white"}]
execute if score round3: gameTimer matches 236 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"1 SECOND ","bold":true,"color":"#ff0000"},{"text":"remaining!","color":"white"}]

execute if score round3: gameTimer matches 120 at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 20 0.7
execute if score round3: gameTimer matches 180 at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 20 0.7
execute if score round3: gameTimer matches 220 at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 20 0.7
execute if score round3: gameTimer matches 224 at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 20 0.7
execute if score round3: gameTimer matches 228 at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 20 0.7
execute if score round3: gameTimer matches 232 at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 20 0.7
execute if score round3: gameTimer matches 236 at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 20 0.7
