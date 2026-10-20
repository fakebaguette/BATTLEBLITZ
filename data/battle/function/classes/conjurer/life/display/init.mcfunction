scoreboard players add @s life_ID 0
scoreboard players operation @s life_ID = $total life_ID
scoreboard players add $total life_ID 1

scoreboard objectives add life_time dummy
function battle:classes/conjurer/life/display/loop