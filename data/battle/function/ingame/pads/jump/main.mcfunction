scoreboard objectives add jumpPadd minecraft.custom:jump

execute as @a[tag=inGame] at @s unless entity @e[type=text_display,tag=jumpPad,distance=..2.3] run scoreboard players reset @s jumpPadd
execute as @a[tag=inGame] at @s unless block ~ ~-0.1 ~ lime_concrete_powder run effect clear @s jump_boost
execute as @a[tag=inGame] at @s unless block ~ ~-2 ~ lime_concrete_powder run scoreboard players reset @s jumpPadd
execute as @a[tag=inGame] at @s if block ~ ~-0.1 ~ #battle:nonsolids run effect clear @s jump_boost

execute at @e[type=text_display,tag=jumpPad] run particle scrape ~ ~-.7 ~ .7 .1 .7 1 2 normal @a
execute at @e[type=text_display,tag=jumpPad] run particle minecraft:cloud ~ ~-.7 ~ .8 .1 .8 .02 3 normal @a
execute at @e[type=text_display,tag=jumpPad] run particle dust{color:[0.698,0.945,0.529],scale:2} ~ ~-.7 ~ .8 .1 .8 .02 3 normal @a

execute as @a[tag=inGame] at @s if block ~ ~-1 ~ lime_concrete_powder run effect give @s jump_boost 1 6 true

execute as @a[tag=inGame,scores={jumpPadd=1}] at @s run function battle:ingame/pads/jump/occur
scoreboard players reset @a jumpPadd

execute as @e[type=#battle:pets] at @s if block ~ ~-1 ~ lime_concrete_powder run effect give @s jump_boost 1 6 true