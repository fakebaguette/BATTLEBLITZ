scoreboard players reset @a[tag=Team1] vote_praetorian
tellraw @a[tag=Team1] ["",{"text":"-----------------------------------------------------\n\n"},{"selector":"@s"},{"text":" has chosen ["},{"text":"PRAETORIAN","color":"#FF6600","bold":true},{"text":"]! This class is now locked.\n\n-----------------------------------------------------"}]
execute at @a[tag=Team1] run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 0.9

tag @s add chose_class
tag @s add praetorian_class
function battle:teamchoice/7-class/open_dialog/give_book
function battle:armor/praet