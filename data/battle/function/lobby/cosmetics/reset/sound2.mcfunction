scoreboard players reset @s reset_class_sound
execute at @s run playsound item.brush.brushing.sand.complete master @s ~ ~ ~ 10 0.7
execute at @s run playsound block.note_block.bass master @s ~ ~ ~ 10 0.7

tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Your ","color":"white"},{"text":"Kill Sounds","color":"light_purple","bold":true},{"text":" have been taken off.","color":"white"}]
tag @s remove EQUIPtntKillSound
tag @s remove EQUIPspaceKillSound
tag @s remove EQUIPnoobKillSound
tag @s remove EQUIPconquerorKillSound
tag @s remove EQUIPchampionKillSound
tag @s remove EQUIPlightKillSound
tag @s remove EQUIPmaraKillSound
tag @s remove EQUIPlegionKillSound
tag @s remove EQUIPvena_killSound
tag @s remove EQUIPfrontKillSound
tag @s remove EQUIPreveKillSound
tag @s remove EQUIPmagusKillSound
tag @s remove EQUIPtrapKillSound
tag @s remove EQUIPnorthKillSound
tag @s remove EQUIPpraetKillSound

function battle:lobby/cosmetics/open_dialog/init_obj
trigger cosmetics_open_sounds