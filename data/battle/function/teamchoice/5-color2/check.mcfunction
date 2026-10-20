execute store result score .random randomColor run random value 1..6

execute if score .random randomColor matches 1 if entity @a[team=Red,tag=Team1] run scoreboard players reset .random randomColor
execute if score .random randomColor matches 1 if entity @a[team=Red,tag=Team1] run return run function battle:teamchoice/5-color2/check

execute if score .random randomColor matches 2 if entity @a[team=Magenta,tag=Team1] run scoreboard players reset .random randomColor
execute if score .random randomColor matches 2 if entity @a[team=Magenta,tag=Team1] run return run function battle:teamchoice/5-color2/check

execute if score .random randomColor matches 3 if entity @a[team=Aqua,tag=Team1] run scoreboard players reset .random randomColor
execute if score .random randomColor matches 3 if entity @a[team=Aqua,tag=Team1] run return run function battle:teamchoice/5-color2/check

execute if score .random randomColor matches 4 if entity @a[team=Lime,tag=Team1] run scoreboard players reset .random randomColor
execute if score .random randomColor matches 4 if entity @a[team=Lime,tag=Team1] run return run function battle:teamchoice/5-color2/check

execute if score .random randomColor matches 5 if entity @a[team=Gold,tag=Team1] run scoreboard players reset .random randomColor
execute if score .random randomColor matches 5 if entity @a[team=Gold,tag=Team1] run return run function battle:teamchoice/5-color2/check

execute if score .random randomColor matches 6 if entity @a[team=Yellow,tag=Team1] run scoreboard players reset .random randomColor
execute if score .random randomColor matches 6 if entity @a[team=Yellow,tag=Team1] run return run function battle:teamchoice/5-color2/check


execute if score .random randomColor matches 1 run scoreboard players set .choice vote_phase 1
execute if score .random randomColor matches 2 run scoreboard players set .choice vote_phase 2
execute if score .random randomColor matches 3 run scoreboard players set .choice vote_phase 3
execute if score .random randomColor matches 4 run scoreboard players set .choice vote_phase 4
execute if score .random randomColor matches 5 run scoreboard players set .choice vote_phase 5
execute if score .random randomColor matches 6 run scoreboard players set .choice vote_phase 6