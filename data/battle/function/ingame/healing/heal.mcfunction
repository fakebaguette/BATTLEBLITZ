effect give @s instant_health 1 0 true
title @s actionbar ["",{"text":"+","color":"yellow"},{"text":"4 HP ","bold":true,"color":"green"},{"text":"\u2764","color":"green"},{"text":" - "},{"text":"Out of Combat","bold":true,"color":"red"}]
particle minecraft:crit ~ ~1 ~ 0.5 0.5 0.5 0.01 10 normal @a
particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.01 10 normal @a
playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 20 1.5
playsound minecraft:block.note_block.bell master @s ~ ~ ~ 20 2