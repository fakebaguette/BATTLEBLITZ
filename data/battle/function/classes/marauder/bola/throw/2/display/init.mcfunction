scoreboard players add @s mara_bola_ID 0
scoreboard players operation @s mara_bola_ID = $total mara_bola_ID
scoreboard players add $total mara_bola_ID 1

scoreboard objectives add mara_bola_time dummy
function battle:classes/marauder/bola/throw/2/display/loop