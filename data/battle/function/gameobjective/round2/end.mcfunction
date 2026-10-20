execute as @a[tag=Participant,tag=!diedTp] run advancement grant @s[advancements={battle:cosmetics/extra/play=true}] only battle:cosmetics/extra/survive

#TITLES

#win
title @a[tag=Participant] times 10t 20t 10t
title @a[tag=wonRound] subtitle {"text":"You won!","color":"dark_green"} 
title @a[tag=wonRound] title {"text":"Round Over!","bold":true,"color":"green"}

#lose
execute if entity @a[tag=wonRound,tag=Participant] run title @a[tag=!wonRound,tag=Participant] subtitle {"text":"You lost.","color":"dark_red"}
execute if entity @a[tag=wonRound,tag=Participant] run title @a[tag=!wonRound,tag=Participant] title {"text":"Round Over!","bold":true,"color":"red"} 

scoreboard players add .count blockCountRed 0
scoreboard players add .count blockCountMagenta 0
scoreboard players add .count blockCountAqua 0
scoreboard players add .count blockCountLime 0
scoreboard players add .count blockCountGold 0
scoreboard players add .count blockCountYellow 0

#none
execute unless score .count blockCountRed matches 1.. unless score .count blockCountMagenta matches 1.. unless score .count blockCountAqua matches 1.. unless score .count blockCountLime matches 1.. unless score .count blockCountGold matches 1.. unless score .count blockCountYellow matches 1.. run title @a[tag=!wonRound,tag=Participant] subtitle {"text":"No one won.","bold":true,"color":"yellow"} 
execute unless score .count blockCountRed matches 1.. unless score .count blockCountMagenta matches 1.. unless score .count blockCountAqua matches 1.. unless score .count blockCountLime matches 1.. unless score .count blockCountGold matches 1.. unless score .count blockCountYellow matches 1.. run title @a[tag=!wonRound,tag=Participant] title {"text":"Round Over!","bold":true,"color":"yellow"} 

#TELLRAW
#win
tellraw @a[tag=wonRound] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"You won! ","color":"green"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"20 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":"!","color":"#f9cd71"}]

#lose
execute if entity @a[tag=wonRound,tag=Participant] run tellraw @a[tag=!wonRound,tag=Participant] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"You lost.","color":"red"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"0 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":".","color":"#f9cd71"}]

#none
execute unless score .count blockCountRed matches 1.. unless score .count blockCountMagenta matches 1.. unless score .count blockCountAqua matches 1.. unless score .count blockCountLime matches 1.. unless score .count blockCountGold matches 1.. unless score .count blockCountYellow matches 1.. run tellraw @a[tag=Participant] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"No one won.","color":"yellow"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"0 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":".","color":"#f9cd71"}]


#give stars + tellraw for split
execute if score .count blockCountRed matches 9 if entity @a[team=Red,tag=Team1] run scoreboard players add Team1Stars: starCountTeam1 20
execute if score .count blockCountRed matches 7..8 if entity @a[team=Red,tag=Team1] run scoreboard players add Team1Stars: starCountTeam1 15
execute if score .count blockCountRed matches 4..6 if entity @a[team=Red,tag=Team1] run scoreboard players add Team1Stars: starCountTeam1 10
execute if score .count blockCountRed matches 1..3 if entity @a[team=Red,tag=Team1] run scoreboard players add Team1Stars: starCountTeam1 5
execute if score .count blockCountRed matches 7..8 if entity @a[team=Red,tag=Team1] run tellraw @a[team=Red,tag=Team1] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"Center split!","color":"#ffcc33"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"15 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":".","color":"#f9cd71"}]
execute if score .count blockCountRed matches 4..6 if entity @a[team=Red,tag=Team1] run tellraw @a[team=Red,tag=Team1] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"Center split!","color":"#ffcc33"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"10 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":".","color":"#f9cd71"}]
execute if score .count blockCountRed matches 1..3 if entity @a[team=Red,tag=Team1] run tellraw @a[team=Red,tag=Team1] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"Center split!","color":"#ffcc33"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"5 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":".","color":"#f9cd71"}]
execute if score .count blockCountRed matches 1..8 as @a[team=Red,tag=Team1] run tag @s add centerSplit

execute if score .count blockCountMagenta matches 9 if entity @a[team=Magenta,tag=Team1] run scoreboard players add Team1Stars: starCountTeam1 20
execute if score .count blockCountMagenta matches 7..8 if entity @a[team=Magenta,tag=Team1] run scoreboard players add Team1Stars: starCountTeam1 15
execute if score .count blockCountMagenta matches 4..6 if entity @a[team=Magenta,tag=Team1] run scoreboard players add Team1Stars: starCountTeam1 10
execute if score .count blockCountMagenta matches 1..3 if entity @a[team=Magenta,tag=Team1] run scoreboard players add Team1Stars: starCountTeam1 5
execute if score .count blockCountMagenta matches 7..8 if entity @a[team=Magenta,tag=Team1] run tellraw @a[team=Magenta,tag=Team1] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"Center split!","color":"#ffcc33"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"15 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":".","color":"#f9cd71"}]
execute if score .count blockCountMagenta matches 4..6 if entity @a[team=Magenta,tag=Team1] run tellraw @a[team=Magenta,tag=Team1] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"Center split!","color":"#ffcc33"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"10 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":".","color":"#f9cd71"}]
execute if score .count blockCountMagenta matches 1..3 if entity @a[team=Magenta,tag=Team1] run tellraw @a[team=Magenta,tag=Team1] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"Center split!","color":"#ffcc33"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"5 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":".","color":"#f9cd71"}]
execute if score .count blockCountMagenta matches 1..8 as @a[team=Magenta,tag=Team1] run tag @s add centerSplit

execute if score .count blockCountAqua matches 9 if entity @a[team=Aqua,tag=Team1] run scoreboard players add Team1Stars: starCountTeam1 20
execute if score .count blockCountAqua matches 7..8 if entity @a[team=Aqua,tag=Team1] run scoreboard players add Team1Stars: starCountTeam1 15
execute if score .count blockCountAqua matches 4..6 if entity @a[team=Aqua,tag=Team1] run scoreboard players add Team1Stars: starCountTeam1 10
execute if score .count blockCountAqua matches 1..3 if entity @a[team=Aqua,tag=Team1] run scoreboard players add Team1Stars: starCountTeam1 5
execute if score .count blockCountAqua matches 7..8 if entity @a[team=Aqua,tag=Team1] run tellraw @a[team=Aqua,tag=Team1] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"Center split!","color":"#ffcc33"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"15 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":".","color":"#f9cd71"}]
execute if score .count blockCountAqua matches 4..6 if entity @a[team=Aqua,tag=Team1] run tellraw @a[team=Aqua,tag=Team1] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"Center split!","color":"#ffcc33"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"10 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":".","color":"#f9cd71"}]
execute if score .count blockCountAqua matches 1..3 if entity @a[team=Aqua,tag=Team1] run tellraw @a[team=Aqua,tag=Team1] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"Center split!","color":"#ffcc33"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"5 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":".","color":"#f9cd71"}]
execute if score .count blockCountAqua matches 1..8 as @a[team=Aqua,tag=Team1] run tag @s add centerSplit

execute if score .count blockCountLime matches 9 if entity @a[team=Lime,tag=Team1] run scoreboard players add Team1Stars: starCountTeam1 20
execute if score .count blockCountLime matches 7..8 if entity @a[team=Lime,tag=Team1] run scoreboard players add Team1Stars: starCountTeam1 15
execute if score .count blockCountLime matches 4..6 if entity @a[team=Lime,tag=Team1] run scoreboard players add Team1Stars: starCountTeam1 10
execute if score .count blockCountLime matches 1..3 if entity @a[team=Lime,tag=Team1] run scoreboard players add Team1Stars: starCountTeam1 5
execute if score .count blockCountLime matches 7..8 if entity @a[team=Lime,tag=Team1] run tellraw @a[team=Lime,tag=Team1] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"Center split!","color":"#ffcc33"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"15 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":".","color":"#f9cd71"}]
execute if score .count blockCountLime matches 4..6 if entity @a[team=Lime,tag=Team1] run tellraw @a[team=Lime,tag=Team1] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"Center split!","color":"#ffcc33"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"10 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":".","color":"#f9cd71"}]
execute if score .count blockCountLime matches 1..3 if entity @a[team=Lime,tag=Team1] run tellraw @a[team=Lime,tag=Team1] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"Center split!","color":"#ffcc33"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"5 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":".","color":"#f9cd71"}]
execute if score .count blockCountLime matches 1..8 as @a[team=Lime,tag=Team1] run tag @s add centerSplit

execute if score .count blockCountGold matches 9 if entity @a[team=Gold,tag=Team1] run scoreboard players add Team1Stars: starCountTeam1 20
execute if score .count blockCountGold matches 7..8 if entity @a[team=Gold,tag=Team1] run scoreboard players add Team1Stars: starCountTeam1 15
execute if score .count blockCountGold matches 4..6 if entity @a[team=Gold,tag=Team1] run scoreboard players add Team1Stars: starCountTeam1 10
execute if score .count blockCountGold matches 1..3 if entity @a[team=Gold,tag=Team1] run scoreboard players add Team1Stars: starCountTeam1 5
execute if score .count blockCountGold matches 7..8 if entity @a[team=Gold,tag=Team1] run tellraw @a[team=Gold,tag=Team1] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"Center split!","color":"#ffcc33"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"15 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":".","color":"#f9cd71"}]
execute if score .count blockCountGold matches 4..6 if entity @a[team=Gold,tag=Team1] run tellraw @a[team=Gold,tag=Team1] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"Center split!","color":"#ffcc33"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"10 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":".","color":"#f9cd71"}]
execute if score .count blockCountGold matches 1..3 if entity @a[team=Gold,tag=Team1] run tellraw @a[team=Gold,tag=Team1] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"Center split!","color":"#ffcc33"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"5 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":".","color":"#f9cd71"}]
execute if score .count blockCountGold matches 1..8 as @a[team=Gold,tag=Team1] run tag @s add centerSplit

execute if score .count blockCountYellow matches 9 if entity @a[team=Yellow,tag=Team1] run scoreboard players add Team1Stars: starCountTeam1 20
execute if score .count blockCountYellow matches 7..8 if entity @a[team=Yellow,tag=Team1] run scoreboard players add Team1Stars: starCountTeam1 15
execute if score .count blockCountYellow matches 4..6 if entity @a[team=Yellow,tag=Team1] run scoreboard players add Team1Stars: starCountTeam1 10
execute if score .count blockCountYellow matches 1..3 if entity @a[team=Yellow,tag=Team1] run scoreboard players add Team1Stars: starCountTeam1 5
execute if score .count blockCountYellow matches 7..8 if entity @a[team=Yellow,tag=Team1] run tellraw @a[team=Yellow,tag=Team1] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"Center split!","color":"#ffcc33"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"15 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":".","color":"#f9cd71"}]
execute if score .count blockCountYellow matches 4..6 if entity @a[team=Yellow,tag=Team1] run tellraw @a[team=Yellow,tag=Team1] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"Center split!","color":"#ffcc33"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"10 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":".","color":"#f9cd71"}]
execute if score .count blockCountYellow matches 1..3 if entity @a[team=Yellow,tag=Team1] run tellraw @a[team=Yellow,tag=Team1] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"Center split!","color":"#ffcc33"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"5 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":".","color":"#f9cd71"}]
execute if score .count blockCountYellow matches 1..8 as @a[team=Yellow,tag=Team1] run tag @s add centerSplit



execute if score .count blockCountRed matches 9 if entity @a[team=Red,tag=Team2] run scoreboard players add Team2Stars: starCountTeam2 20
execute if score .count blockCountRed matches 7..8 if entity @a[team=Red,tag=Team2] run scoreboard players add Team2Stars: starCountTeam2 15
execute if score .count blockCountRed matches 4..6 if entity @a[team=Red,tag=Team2] run scoreboard players add Team2Stars: starCountTeam2 10
execute if score .count blockCountRed matches 1..3 if entity @a[team=Red,tag=Team2] run scoreboard players add Team2Stars: starCountTeam2 5
execute if score .count blockCountRed matches 7..8 if entity @a[team=Red,tag=Team2] run tellraw @a[team=Red,tag=Team2] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"Center split!","color":"#ffcc33"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"15 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":".","color":"#f9cd71"}]
execute if score .count blockCountRed matches 4..6 if entity @a[team=Red,tag=Team2] run tellraw @a[team=Red,tag=Team2] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"Center split!","color":"#ffcc33"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"10 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":".","color":"#f9cd71"}]
execute if score .count blockCountRed matches 1..3 if entity @a[team=Red,tag=Team2] run tellraw @a[team=Red,tag=Team2] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"Center split!","color":"#ffcc33"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"5 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":".","color":"#f9cd71"}]
execute if score .count blockCountRed matches 1..8 as @a[team=Red,tag=Team2] run tag @s add centerSplit

execute if score .count blockCountMagenta matches 9 if entity @a[team=Magenta,tag=Team2] run scoreboard players add Team2Stars: starCountTeam2 20
execute if score .count blockCountMagenta matches 7..8 if entity @a[team=Magenta,tag=Team2] run scoreboard players add Team2Stars: starCountTeam2 15
execute if score .count blockCountMagenta matches 4..6 if entity @a[team=Magenta,tag=Team2] run scoreboard players add Team2Stars: starCountTeam2 10
execute if score .count blockCountMagenta matches 1..3 if entity @a[team=Magenta,tag=Team2] run scoreboard players add Team2Stars: starCountTeam2 5
execute if score .count blockCountMagenta matches 7..8 if entity @a[team=Magenta,tag=Team2] run tellraw @a[team=Magenta,tag=Team2] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"Center split!","color":"#ffcc33"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"15 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":".","color":"#f9cd71"}]
execute if score .count blockCountMagenta matches 4..6 if entity @a[team=Magenta,tag=Team2] run tellraw @a[team=Magenta,tag=Team2] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"Center split!","color":"#ffcc33"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"10 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":".","color":"#f9cd71"}]
execute if score .count blockCountMagenta matches 1..3 if entity @a[team=Magenta,tag=Team2] run tellraw @a[team=Magenta,tag=Team2] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"Center split!","color":"#ffcc33"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"5 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":".","color":"#f9cd71"}]
execute if score .count blockCountMagenta matches 1..8 as @a[team=Magenta,tag=Team2] run tag @s add centerSplit

execute if score .count blockCountAqua matches 9 if entity @a[team=Aqua,tag=Team2] run scoreboard players add Team2Stars: starCountTeam2 20
execute if score .count blockCountAqua matches 7..8 if entity @a[team=Aqua,tag=Team2] run scoreboard players add Team2Stars: starCountTeam2 15
execute if score .count blockCountAqua matches 4..6 if entity @a[team=Aqua,tag=Team2] run scoreboard players add Team2Stars: starCountTeam2 10
execute if score .count blockCountAqua matches 1..3 if entity @a[team=Aqua,tag=Team2] run scoreboard players add Team2Stars: starCountTeam2 5
execute if score .count blockCountAqua matches 7..8 if entity @a[team=Aqua,tag=Team2] run tellraw @a[team=Aqua,tag=Team2] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"Center split!","color":"#ffcc33"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"15 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":".","color":"#f9cd71"}]
execute if score .count blockCountAqua matches 4..6 if entity @a[team=Aqua,tag=Team2] run tellraw @a[team=Aqua,tag=Team2] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"Center split!","color":"#ffcc33"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"10 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":".","color":"#f9cd71"}]
execute if score .count blockCountAqua matches 1..3 if entity @a[team=Aqua,tag=Team2] run tellraw @a[team=Aqua,tag=Team2] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"Center split!","color":"#ffcc33"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"5 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":".","color":"#f9cd71"}]
execute if score .count blockCountAqua matches 1..8 as @a[team=Aqua,tag=Team2] run tag @s add centerSplit

execute if score .count blockCountLime matches 9 if entity @a[team=Lime,tag=Team2] run scoreboard players add Team2Stars: starCountTeam2 20
execute if score .count blockCountLime matches 7..8 if entity @a[team=Lime,tag=Team2] run scoreboard players add Team2Stars: starCountTeam2 15
execute if score .count blockCountLime matches 4..6 if entity @a[team=Lime,tag=Team2] run scoreboard players add Team2Stars: starCountTeam2 10
execute if score .count blockCountLime matches 1..3 if entity @a[team=Lime,tag=Team2] run scoreboard players add Team2Stars: starCountTeam2 5
execute if score .count blockCountLime matches 7..8 if entity @a[team=Lime,tag=Team2] run tellraw @a[team=Lime,tag=Team2] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"Center split!","color":"#ffcc33"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"15 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":".","color":"#f9cd71"}]
execute if score .count blockCountLime matches 4..6 if entity @a[team=Lime,tag=Team2] run tellraw @a[team=Lime,tag=Team2] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"Center split!","color":"#ffcc33"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"10 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":".","color":"#f9cd71"}]
execute if score .count blockCountLime matches 1..3 if entity @a[team=Lime,tag=Team2] run tellraw @a[team=Lime,tag=Team2] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"Center split!","color":"#ffcc33"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"5 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":".","color":"#f9cd71"}]
execute if score .count blockCountLime matches 1..8 as @a[team=Lime,tag=Team2] run tag @s add centerSplit

execute if score .count blockCountGold matches 9 if entity @a[team=Gold,tag=Team2] run scoreboard players add Team2Stars: starCountTeam2 20
execute if score .count blockCountGold matches 7..8 if entity @a[team=Gold,tag=Team2] run scoreboard players add Team2Stars: starCountTeam2 15
execute if score .count blockCountGold matches 4..6 if entity @a[team=Gold,tag=Team2] run scoreboard players add Team2Stars: starCountTeam2 10
execute if score .count blockCountGold matches 1..3 if entity @a[team=Gold,tag=Team2] run scoreboard players add Team2Stars: starCountTeam2 5
execute if score .count blockCountGold matches 7..8 if entity @a[team=Gold,tag=Team2] run tellraw @a[team=Gold,tag=Team2] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"Center split!","color":"#ffcc33"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"15 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":".","color":"#f9cd71"}]
execute if score .count blockCountGold matches 4..6 if entity @a[team=Gold,tag=Team2] run tellraw @a[team=Gold,tag=Team2] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"Center split!","color":"#ffcc33"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"10 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":".","color":"#f9cd71"}]
execute if score .count blockCountGold matches 1..3 if entity @a[team=Gold,tag=Team2] run tellraw @a[team=Gold,tag=Team2] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"Center split!","color":"#ffcc33"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"5 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":".","color":"#f9cd71"}]
execute if score .count blockCountGold matches 1..8 as @a[team=Gold,tag=Team2] run tag @s add centerSplit

execute if score .count blockCountYellow matches 9 if entity @a[team=Yellow,tag=Team2] run scoreboard players add Team2Stars: starCountTeam2 20
execute if score .count blockCountYellow matches 7..8 if entity @a[team=Yellow,tag=Team2] run scoreboard players add Team2Stars: starCountTeam2 15
execute if score .count blockCountYellow matches 4..6 if entity @a[team=Yellow,tag=Team2] run scoreboard players add Team2Stars: starCountTeam2 10
execute if score .count blockCountYellow matches 1..3 if entity @a[team=Yellow,tag=Team2] run scoreboard players add Team2Stars: starCountTeam2 5
execute if score .count blockCountYellow matches 7..8 if entity @a[team=Yellow,tag=Team2] run tellraw @a[team=Yellow,tag=Team2] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"Center split!","color":"#ffcc33"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"15 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":".","color":"#f9cd71"}]
execute if score .count blockCountYellow matches 4..6 if entity @a[team=Yellow,tag=Team2] run tellraw @a[team=Yellow,tag=Team2] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"Center split!","color":"#ffcc33"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"10 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":".","color":"#f9cd71"}]
execute if score .count blockCountYellow matches 1..3 if entity @a[team=Yellow,tag=Team2] run tellraw @a[team=Yellow,tag=Team2] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"Center split!","color":"#ffcc33"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"5 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":".","color":"#f9cd71"}]
execute if score .count blockCountYellow matches 1..8 as @a[team=Yellow,tag=Team2] run tag @s add centerSplit

#split
execute unless entity @a[tag=wonRound] if entity @a[tag=centerSplit,tag=Participant] run title @a[tag=!wonRound,tag=Participant] title {"text":"Round Over!","color":"yellow","bold":true}
execute unless entity @a[tag=wonRound] if entity @a[tag=centerSplit,tag=Participant] run title @a[tag=!wonRound,tag=Participant] subtitle {"text":"Center Split!","color":"#ffcc33"}


execute if score .count blockCountRed matches 0 if entity @a[tag=centerSplit] if entity @a[team=Red] run tellraw @a[tag=!centerSplit,team=Red] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"Center split!","color":"#ffcc33"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"0 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":".","color":"#f9cd71"}]
execute if score .count blockCountMagenta matches 0 if entity @a[tag=centerSplit] if entity @a[team=Magenta] run tellraw @a[tag=!centerSplit,team=Magenta] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"Center split!","color":"#ffcc33"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"0 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":".","color":"#f9cd71"}]
execute if score .count blockCountAqua matches 0 if entity @a[tag=centerSplit] if entity @a[team=Aqua] run tellraw @a[tag=!centerSplit,team=Aqua] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"Center split!","color":"#ffcc33"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"0 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":".","color":"#f9cd71"}]
execute if score .count blockCountLime matches 0 if entity @a[tag=centerSplit] if entity @a[team=Lime] run tellraw @a[tag=!centerSplit,team=Lime] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"Center split!","color":"#ffcc33"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"0 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":".","color":"#f9cd71"}]
execute if score .count blockCountGold matches 0 if entity @a[tag=centerSplit] if entity @a[team=Gold] run tellraw @a[tag=!centerSplit,team=Gold] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"Center split!","color":"#ffcc33"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"0 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":".","color":"#f9cd71"}]
execute if score .count blockCountYellow matches 0 if entity @a[tag=centerSplit] if entity @a[team=Yellow] run tellraw @a[tag=!centerSplit,team=Yellow] ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| Round Over! ",{"text":"Center split!","color":"#ffcc33"},"\n",{"text":"+ ","color":"#f9cd71"},{"text":"0 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":".","color":"#f9cd71"}]


#sidebar stuff
execute unless entity @a[tag=wonRound,tag=Participant] run scoreboard players set Team1: round_2 3
execute unless entity @a[tag=wonRound,tag=Participant] run scoreboard players set Team2: round_2 3

tag @a[tag=Participant] remove wonRound
tag @a[tag=Participant] remove centerSplit
execute at @a[tag=Participant] run playsound minecraft:block.note_block.xylophone master @a[tag=Participant] ~ ~ ~ 20 1.8
execute at @a[tag=Participant] run playsound minecraft:block.note_block.bit master @a[tag=Participant] ~ ~ ~ 20 1.8
execute at @a[tag=Participant] run playsound minecraft:block.note_block.bass master @a[tag=Participant] ~ ~ ~ 20 0.9
execute at @a[tag=Participant] run playsound minecraft:block.note_block.basedrum master @a[tag=Participant] ~ ~ ~ 20 0.9
execute at @a[tag=Participant] run playsound minecraft:item.mace.smash_ground_heavy master @a[tag=Participant] ~ ~ ~ 5 0.7
execute at @a[tag=Participant] run playsound minecraft:item.totem.use master @a[tag=Participant] ~ ~ ~ 5 1.2

function battle:gameobjective/startgame3
execute if score round2: gameTimer matches -1 run schedule clear battle:gameobjective/round2/main
execute if score round2: gameTimer matches -1 run scoreboard players reset .count
execute if score round2: gameTimer matches -1 run scoreboard players reset round2: gameTimer
