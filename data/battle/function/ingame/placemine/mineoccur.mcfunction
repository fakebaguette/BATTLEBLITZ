scoreboard objectives add mineWhite minecraft.mined:white_concrete
scoreboard objectives add mineRed minecraft.mined:red_concrete
scoreboard objectives add mineMag minecraft.mined:magenta_concrete
scoreboard objectives add mineAqu minecraft.mined:light_blue_concrete
scoreboard objectives add mineLim minecraft.mined:lime_concrete
scoreboard objectives add mineGol minecraft.mined:orange_concrete
scoreboard objectives add mineYel minecraft.mined:yellow_concrete

playsound block.note_block.pling master @a[distance=..5] ~ ~ ~ 0.6 1.6
scoreboard players add @s statBreak 1
function battle:ingame/playerdeath/cosmetics/award/checkmine

scoreboard players reset @s mineWhite
scoreboard players reset @s mineRed
scoreboard players reset @s mineMag
scoreboard players reset @s mineAqu
scoreboard players reset @s mineLim
scoreboard players reset @s mineGol
scoreboard players reset @s mineYel