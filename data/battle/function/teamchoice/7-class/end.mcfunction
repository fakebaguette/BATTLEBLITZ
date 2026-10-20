execute as @a[tag=Team1,tag=!chose_class] run function battle:teamchoice/7-class/class1/random/init
execute as @a[tag=Team2,tag=!chose_class] run function battle:teamchoice/7-class/class2/random/init

tellraw @a[tag=challenger_class] ["-----------------------------------------------------\n\nThere weren't enough classes! You are now [",{"text":"CHALLENGER","bold":true,"color":"white"},{"text":"]!\n\n-----------------------------------------------------","color":"white"}]
execute as @a[tag=challenger_class,tag=Team1] run tellraw @a[tag=Team1,tag=!challenger_class] ["",{"text":"-----------------------------------------------------\n\n"},{"selector":"@s"},{"text":" has been given the class ["},{"text":"CHALLENGER","color":"white","bold":true},{"text":"]! Have fun!\n\n-----------------------------------------------------"}]
execute as @a[tag=challenger_class,tag=Team2] run tellraw @a[tag=Team2,tag=!challenger_class] ["",{"text":"-----------------------------------------------------\n\n"},{"selector":"@s"},{"text":" has been given the class ["},{"text":"CHALLENGER","color":"white","bold":true},{"text":"]! Have fun!\n\n-----------------------------------------------------"}]

execute as @a[tag=challenger_class] run function battle:armor/chall


clear @a book[custom_data={NoDrop:1b,open_class_dialog:1b}]
tag @a remove chose_class
dialog clear @a[tag=Participant]
function battle:gameobjective/startgame

schedule clear battle:teamchoice/7-class/main
scoreboard players reset chooseClass1Timer: vote_phase

schedule function battle:teamchoice/7-class/remove_obj 3s