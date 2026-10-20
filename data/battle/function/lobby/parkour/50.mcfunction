tp @s 128 109 52
execute as @s at @s run playsound block.note_block.bass master @s ~ ~ ~ 1 1.8
tellraw @a ["",{"selector":"@s"}," ",{"text":"received 50 Parkour points!","color":"dark_purple"}]
scoreboard players add @s parkourCount 50