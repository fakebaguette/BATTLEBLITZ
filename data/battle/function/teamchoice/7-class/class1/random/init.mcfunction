tellraw @a[tag=Team1] ["-----------------------------------------------------\n\n",{"selector":"@s"}," ",{"text":"ra","color":"light_purple"},{"text":"nd","color":"gold"},{"text":"om","color":"green"},{"text":"iz","color":"yellow"},{"text":"ed","color":"red"}," their class!\n\n",{"text":"-----------------------------------------------------","color":"white"}]

tag @s remove failed_random
scoreboard players reset @s vote_random
scoreboard players reset @s class_random

scoreboard objectives add class_random_attempts dummy
scoreboard players add @s class_random_attempts 1

execute if score @s class_random_attempts matches 500.. run tag @s add challenger_class
execute if score @s class_random_attempts matches 500.. run scoreboard players reset @s class_random_attempts
execute if entity @s[tag=challenger_class] run return fail

scoreboard objectives add class_random dummy
execute store result score @s class_random run random value 1..13

execute if entity @a[tag=Team1,tag=vote_lightwielder] if score @s class_random matches 1 run function battle:teamchoice/7-class/class1/random/failed
execute if entity @a[tag=Team1,tag=vote_marauder] if score @s class_random matches 2 run function battle:teamchoice/7-class/class1/random/failed
execute if entity @a[tag=Team1,tag=vote_legionnaire] if score @s class_random matches 3 run function battle:teamchoice/7-class/class1/random/failed
execute if entity @a[tag=Team1,tag=vote_venator] if score @s class_random matches 4 run function battle:teamchoice/7-class/class1/random/failed
execute if entity @a[tag=Team1,tag=vote_conjurer] if score @s class_random matches 5 run function battle:teamchoice/7-class/class1/random/failed
execute if entity @a[tag=Team1,tag=vote_revenant] if score @s class_random matches 6 run function battle:teamchoice/7-class/class1/random/failed
execute if entity @a[tag=Team1,tag=vote_magus] if score @s class_random matches 7 run function battle:teamchoice/7-class/class1/random/failed
execute if entity @a[tag=Team1,tag=vote_trapshooter] if score @s class_random matches 8 run function battle:teamchoice/7-class/class1/random/failed
execute if entity @a[tag=Team1,tag=vote_northman] if score @s class_random matches 9 run function battle:teamchoice/7-class/class1/random/failed
execute if entity @a[tag=Team1,tag=vote_praetorian] if score @s class_random matches 10 run function battle:teamchoice/7-class/class1/random/failed
execute if entity @a[tag=Team1,tag=vote_prospector] if score @s class_random matches 11 run function battle:teamchoice/7-class/class1/random/failed
execute if entity @a[tag=Team1,tag=vote_cavalier] if score @s class_random matches 12 run function battle:teamchoice/7-class/class1/random/failed
execute if entity @a[tag=Team1,tag=vote_seacharger] if score @s class_random matches 13 run function battle:teamchoice/7-class/class1/random/failed

execute if entity @s[tag=!failed_random] run function battle:teamchoice/7-class/class1/random/success