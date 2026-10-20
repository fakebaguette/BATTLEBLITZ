tp @s 128 109 52
execute as @s at @s run playsound block.note_block.bass master @s ~ ~ ~ 1 1.2
tellraw @a ["",{"selector":"@s"}," ",{"text":"received 5 Parkour points!","color":"yellow"}]
scoreboard players add @s parkourCount 5