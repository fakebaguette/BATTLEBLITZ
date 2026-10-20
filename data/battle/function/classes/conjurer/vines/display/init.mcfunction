scoreboard players add @s vine_ID 0
scoreboard players operation @s vine_ID = $total vine_ID
scoreboard players add $total vine_ID 1

scoreboard objectives add vine_time dummy
function battle:classes/conjurer/vines/display/loop