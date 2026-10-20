tp @s 128 109 52
execute as @s at @s run playsound block.note_block.bass master @s ~ ~ ~ 1 1.6
tellraw @a ["",{"selector":"@s"}," ",{"text":"received 20 Parkour points!","color":"red"}]
scoreboard players add @s parkourCount 20