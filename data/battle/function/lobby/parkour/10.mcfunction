tp @s 128 109 52
execute as @s at @s run playsound block.note_block.bass master @s ~ ~ ~ 1 1.4
tellraw @a ["",{"selector":"@s"}," ",{"text":"received 10 Parkour points!","color":"gold"}]
scoreboard players add @s parkourCount 10