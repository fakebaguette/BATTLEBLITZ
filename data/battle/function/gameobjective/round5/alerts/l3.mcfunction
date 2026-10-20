execute if score round5: gameTimer matches 480 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"ONE MINUTE","bold":true,"color":"#ffcc00"},{"text":" ","bold":true,"color":"#ff0000"},{"text":"remaining!","color":"white"}]
execute if score round5: gameTimer matches 600 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"30 SECONDS","color":"red","bold":true},{"text":" remaining!","color":"white"}]
execute if score round5: gameTimer matches 660 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"15 SECONDS","color":"#ff3300","bold":true},{"text":" ","color":"#ff3300"},{"text":"remaining!","color":"white"}]
execute if score round5: gameTimer matches 700 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"5 SECONDS ","bold":true,"color":"#ff0000"},{"text":"remaining!","color":"white"}]
execute if score round5: gameTimer matches 704 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"4 SECONDS ","bold":true,"color":"#ff0000"},{"text":"remaining!","color":"white"}]
execute if score round5: gameTimer matches 708 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"3 SECONDS ","bold":true,"color":"#ff0000"},{"text":"remaining!","color":"white"}]
execute if score round5: gameTimer matches 712 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"2 SECONDS ","bold":true,"color":"#ff0000"},{"text":"remaining!","color":"white"}]
execute if score round5: gameTimer matches 716 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"1 SECOND ","bold":true,"color":"#ff0000"},{"text":"remaining!","color":"white"}]

execute if score round5: gameTimer matches 480 at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 20 0.7
execute if score round5: gameTimer matches 600 at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 20 0.7
execute if score round5: gameTimer matches 660 at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 20 0.7
execute if score round5: gameTimer matches 700 at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 20 0.7
execute if score round5: gameTimer matches 704 at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 20 0.7
execute if score round5: gameTimer matches 708 at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 20 0.7
execute if score round5: gameTimer matches 712 at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 20 0.7
execute if score round5: gameTimer matches 716 at @s run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 20 0.