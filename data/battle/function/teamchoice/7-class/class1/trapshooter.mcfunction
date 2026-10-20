scoreboard players reset @a[tag=Team1] vote_trapshooter
tellraw @a[tag=Team1] ["",{"text":"-----------------------------------------------------\n\n"},{"selector":"@s"},{"text":" has chosen ["},{"text":"TRAPSHOOTER","color":"yellow","bold":true},{"text":"]! This class is now locked.\n\n-----------------------------------------------------"}]
execute at @a[tag=Team1] run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.9

tag @s add chose_class
tag @s add trapshooter_class
function battle:teamchoice/7-class/open_dialog/give_book
function battle:armor/trap