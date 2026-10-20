scoreboard players reset @s reset_class_message
execute at @s run playsound item.brush.brushing.sand.complete master @s ~ ~ ~ 10 0.7
execute at @s run playsound block.note_block.bass master @s ~ ~ ~ 10 0.7

tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Your ","color":"white"},{"text":"Kill Messages","color":"light_purple","bold":true},{"text":" have been taken off.","color":"white"}]
tag @s remove EQUIPtntKillMessage
tag @s remove EQUIPspaceKillMessage
tag @s remove EQUIPnoobKillMessage
tag @s remove EQUIPconquerorKillMessage
tag @s remove EQUIPchampionKillMessage
tag @s remove EQUIPlightKillMessage
tag @s remove EQUIPmaraKillMessage
tag @s remove EQUIPlegionKillMessage
tag @s remove EQUIPvenaKillMessage
tag @s remove EQUIPfrontKillMessage
tag @s remove EQUIPreveKillMessage
tag @s remove EQUIPmagusKillMessage
tag @s remove EQUIPtrapKillMessage
tag @s remove EQUIPnorthKillMessage
tag @s remove EQUIPpraetKillMessage
tag @s remove EQUIPKillMessage

function battle:lobby/cosmetics/open_dialog/init_obj
trigger cosmetics_open_messages