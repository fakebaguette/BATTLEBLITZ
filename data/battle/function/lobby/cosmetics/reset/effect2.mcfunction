scoreboard players reset @s reset_class_effect
execute at @s run playsound item.brush.brushing.sand.complete master @s ~ ~ ~ 10 0.7
execute at @s run playsound block.note_block.bass master @s ~ ~ ~ 10 0.7

tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Your ","color":"white"},{"text":"Kill Effects","color":"light_purple","bold":true},{"text":" have been taken off.","color":"white"}]
tag @s remove EQUIPtntKillEffect
tag @s remove EQUIPspaceKillEffect
tag @s remove EQUIPnoobKillEffect
tag @s remove EQUIPconquerorKillEffect
tag @s remove EQUIPchampionKillEffect
tag @s remove EQUIPlightKillEffect
tag @s remove EQUIPmaraKillEffect
tag @s remove EQUIPlegionKillEffect
tag @s remove EQUIPvena_killEffect
tag @s remove EQUIPfrontKillEffect
tag @s remove EQUIPreveKillEffect
tag @s remove EQUIPmagusKillEffect
tag @s remove EQUIPtrapKillEffect
tag @s remove EQUIPnorthKillEffect
tag @s remove EQUIPpraetKillEffect

function battle:lobby/cosmetics/open_dialog/init_obj
trigger cosmetics_open_effects