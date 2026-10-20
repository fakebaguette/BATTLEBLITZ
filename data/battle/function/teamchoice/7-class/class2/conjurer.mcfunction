scoreboard players reset @a[tag=Team2] vote_conjurer
tellraw @a[tag=Team2] ["",{"text":"-----------------------------------------------------\n\n"},{"selector":"@s"},{"text":" has chosen ["},{"text":"CONJURER","color":"dark_green","bold":true},{"text":"]! This class is now locked.\n\n-----------------------------------------------------"}]
execute at @a[tag=Team2] run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.9

tag @s add chose_class
tag @s add conjurer_class
function battle:teamchoice/7-class/open_dialog/give_book
function battle:armor/conj