scoreboard players reset @a[tag=Team2] vote_legionnaire
tellraw @a[tag=Team2] ["",{"text":"-----------------------------------------------------\n\n"},{"selector":"@s"},{"text":" has chosen ["},{"text":"LEGIONNAIRE","color":"gold","bold":true},{"text":"]! This class is now locked.\n\n-----------------------------------------------------"}]
execute at @a[tag=Team2] run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.9

tag @s add chose_class
tag @s add legionnaire_class
function battle:teamchoice/7-class/open_dialog/give_book
function battle:armor/legion