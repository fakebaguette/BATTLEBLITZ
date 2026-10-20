scoreboard players add @s cava_bola_ID 0
scoreboard players operation @s cava_bola_ID = $total cava_bola_ID
scoreboard players add $total cava_bola_ID 1

scoreboard objectives add cava_bola_time dummy
function battle:classes/cavalier/bola/throw/2/display/loop