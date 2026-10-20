scoreboard players add @s vena_invis_charges 1
execute store result storage venator charges int 1 run scoreboard players get @s vena_invis_charges 
function battle:classes/venator/invis/item_cd/update_charges with storage venator