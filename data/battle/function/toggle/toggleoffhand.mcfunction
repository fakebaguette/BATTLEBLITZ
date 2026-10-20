scoreboard objectives add toggleOffhand dummy

playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.7

scoreboard players add @s toggleOffhand 1
execute if score @s toggleOffhand matches 3 run scoreboard players set @s toggleOffhand 1
execute if score @s toggleOffhand matches 1 run tag @s add noOffhand
execute if score @s toggleOffhand matches 1 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Toggled OFF","color":"red"},{"text":" - ","color":"white"},{"text":"You wont receive restocking items in offhand (default).","color":"gray"}]
execute if score @s toggleOffhand matches 1 run kill @e[tag=gameSettings,tag=personalOffhand]
execute if score @s toggleOffhand matches 1 run summon text_display -135 111.6 -48 {Tags:[gameSettings,personalOffhand],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"red","italic":false,"text":"❌"}]}
execute if score @s toggleOffhand matches 1 run schedule function battle:toggle/delayoffhand 10t

execute if score @s toggleOffhand matches 2 run tag @s remove noOffhand
execute if score @s toggleOffhand matches 2 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Toggled ON","color":"green"},{"text":" - ","color":"white"},{"text":"You will receive restocking items in offhand (Ex: if you have snowballs that replenish after a cooldown, they will be put in offhand).","color":"gray"}] 
execute if score @s toggleOffhand matches 2 run kill @e[tag=gameSettings,tag=personalOffhand]
execute if score @s toggleOffhand matches 2 run summon text_display -135 111.6 -48 {Tags:[gameSettings,personalOffhand],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"green","italic":false,"text":"✔"}]}
execute if score @s toggleOffhand matches 2 run schedule function battle:toggle/delayoffhand 10t
