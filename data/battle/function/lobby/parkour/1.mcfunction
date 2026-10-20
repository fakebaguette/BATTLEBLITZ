tp @s 128 109 52
execute as @s at @s run playsound block.note_block.bass master @s ~ ~ ~ 1 1
tellraw @a ["",{"selector":"@s"}," ",{"text":"received 1 Parkour point!","color":"green"}]
scoreboard players add @s parkourCount 1