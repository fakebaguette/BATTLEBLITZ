execute if score round4: gameTimer matches 240 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"ONE MINUTE","bold":true,"color":"#ffcc00"},{"text":" ","bold":true,"color":"#ff0000"},{"text":"remaining!","color":"white"}]
execute if score round4: gameTimer matches 360 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"30 SECONDS","color":"red","bold":true},{"text":" remaining!","color":"white"}]
execute if score round4: gameTimer matches 420 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"15 SECONDS","color":"#ff3300","bold":true},{"text":" ","color":"#ff3300"},{"text":"remaining!","color":"white"}]
execute if score round4: gameTimer matches 460 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"5 SECONDS ","bold":true,"color":"#ff0000"},{"text":"remaining!","color":"white"}]
execute if score round4: gameTimer matches 464 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"4 SECONDS ","bold":true,"color":"#ff0000"},{"text":"remaining!","color":"white"}]
execute if score round4: gameTimer matches 468 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"3 SECONDS ","bold":true,"color":"#ff0000"},{"text":"remaining!","color":"white"}]
execute if score round4: gameTimer matches 472 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"2 SECONDS ","bold":true,"color":"#ff0000"},{"text":"remaining!","color":"white"}]
execute if score round4: gameTimer matches 476 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"1 SECOND ","bold":true,"color":"#ff0000"},{"text":"remaining!","color":"white"}]

execute if score round4: gameTimer matches 240 at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 20 0.7
execute if score round4: gameTimer matches 360 at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 20 0.7
execute if score round4: gameTimer matches 456 at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 20 0.7
execute if score round4: gameTimer matches 460 at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 20 0.7
execute if score round4: gameTimer matches 464 at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 20 0.7
execute if score round4: gameTimer matches 468 at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 20 0.7
execute if score round4: gameTimer matches 472 at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 20 0.7
execute if score round4: gameTimer matches 476 at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 20 0.7