tp @s 128 109 52
execute as @s at @s run playsound block.note_block.bass master @s ~ ~ ~ 1 2
tellraw @a ["",{"selector":"@s"}," ",{"text":"completed the parkour and received 100 Parkour points!","color":"aqua"}]
scoreboard players add @s parkourCount 100