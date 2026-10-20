scoreboard players add victoryTimer: gameTimer 1
effect give @a[tag=Participant] resistance 15 9 true
execute if score victoryTimer: gameTimer matches 1..59 run schedule function battle:gameobjective/victory 3t

execute if score victoryTimer: gameTimer matches 1 if score Team1Stars: starCountTeam1 > Team2Stars: starCountTeam2 run tag @a[tag=Team1] add victory
execute if score victoryTimer: gameTimer matches 1 if score Team1Stars: starCountTeam1 < Team2Stars: starCountTeam2 run tag @a[tag=Team2] add victory
execute if score victoryTimer: gameTimer matches 1 if score Team1Stars: starCountTeam1 = Team2Stars: starCountTeam2 run tag @a[tag=Participant] add tievictory

execute if score victoryTimer: gameTimer matches 4 as @a[tag=victory,advancements={battle:cosmetics/extra/training=true}] run function battle:ingame/playerdeath/cosmetics/award/check
execute if score victoryTimer: gameTimer matches 4 as @a[tag=Participant,advancements={battle:cosmetics/extra/training=false}] run advancement grant @s only battle:cosmetics/extra/training
execute if score victoryTimer: gameTimer matches 4 as @a[tag=Participant,tag=victory] run advancement grant @s only battle:cosmetics/extra/win

execute if score victoryTimer: gameTimer matches 4 as @a[tag=Participant,advancements={battle:cosmetics/extra/play={4=true,5=false}}] run advancement grant @s only battle:cosmetics/extra/play 5
execute if score victoryTimer: gameTimer matches 4 as @a[tag=Participant,advancements={battle:cosmetics/extra/play={3=true,4=false}}] run advancement grant @s only battle:cosmetics/extra/play 4
execute if score victoryTimer: gameTimer matches 4 as @a[tag=Participant,advancements={battle:cosmetics/extra/play={2=true,3=false}}] run advancement grant @s only battle:cosmetics/extra/play 3
execute if score victoryTimer: gameTimer matches 4 as @a[tag=Participant,advancements={battle:cosmetics/extra/play={1=true,2=false}}] run advancement grant @s only battle:cosmetics/extra/play 2
execute if score victoryTimer: gameTimer matches 4 as @a[tag=Participant,advancements={battle:cosmetics/extra/play={1=false}}] run advancement grant @s only battle:cosmetics/extra/play 1

execute if score victoryTimer: gameTimer matches 4 as @a[tag=victory] at @s run scoreboard players add @s statWin 1
execute if score victoryTimer: gameTimer matches 4 as @a[tag=!victory,tag=!tievictory] at @s run scoreboard players add @s statLoss 1

execute if score victoryTimer: gameTimer matches 1 if entity @a[team=Red,tag=victory] run tellraw @a ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Team Red | 🔥","bold":true,"color":"#5c0000"},{"text":" are the victors! They had the most ","color":"white"},{"text":" Battle Stars \u272f.","color":"gold"},{"text":"\n "}]
execute if score victoryTimer: gameTimer matches 1 if entity @a[team=Magenta,tag=victory] run tellraw @a ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Team Magenta | 🐖","bold":true,"color":"light_purple"},{"text":" are the victors! They had the most ","color":"white"},{"text":" Battle Stars \u272f.","color":"gold"},{"text":"\n "}]
execute if score victoryTimer: gameTimer matches 1 if entity @a[team=Aqua,tag=victory] run tellraw @a ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Team Aqua | 🐟","bold":true,"color":"aqua"},{"text":" are the victors! They had the most ","color":"white"},{"text":" Battle Stars \u272f.","color":"gold"},{"text":"\n "}]
execute if score victoryTimer: gameTimer matches 1 if entity @a[team=Lime,tag=victory] run tellraw @a ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Team Lime | 🐲","bold":true,"color":"green"},{"text":" are the victors! They had the most ","color":"white"},{"text":" Battle Stars \u272f.","color":"gold"},{"text":"\n "}]
execute if score victoryTimer: gameTimer matches 1 if entity @a[team=Gold,tag=victory] run tellraw @a ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Team Gold | 🐒","bold":true,"color":"gold"},{"text":" are the victors! They had the most ","color":"white"},{"text":" Battle Stars \u272f.","color":"gold"},{"text":"\n "}]
execute if score victoryTimer: gameTimer matches 1 if entity @a[team=Yellow,tag=victory] run tellraw @a ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Team Yellow | 🍪","bold":true,"color":"yellow"},{"text":" are the victors! They had the most ","color":"white"},{"text":" Battle Stars \u272f.","color":"gold"},{"text":"\n "}]

execute if score victoryTimer: gameTimer matches 1 run title @a times 0 120 20
execute if score victoryTimer: gameTimer matches 2..60 as @a[team=Red] run title @s title {"text":"🔥 RED 🔥","bold":true,"color":"red"}
execute if score victoryTimer: gameTimer matches 2..60 as @a[team=Magenta] run title @s title {"text":"🐖 MAGENTA 🐖","bold":true,"color":"light_purple"}
execute if score victoryTimer: gameTimer matches 2..60 as @a[team=Aqua] run title @s title {"text":"🐟 AQUA 🐟","bold":true,"color":"aqua"}
execute if score victoryTimer: gameTimer matches 2..60 as @a[team=Lime] run title @s title {"text":"🐲 LIME 🐲","bold":true,"color":"green"}
execute if score victoryTimer: gameTimer matches 2..60 as @a[team=Gold] run title @s title {"text":"🐒 GOLD 🐒","bold":true,"color":"gold"}
execute if score victoryTimer: gameTimer matches 2..60 as @a[team=Yellow] run title @s title {"text":"🍪 YELLOW 🍪","bold":true,"color":"yellow"}
#execute if score victoryTimer: gameTimer matches 2..60 if entity @a[tag=tievictory] run title @a title ["",{"text":"≛ ","color":"yellow"},{"text":"NO VICTOR","color":"yellow","bold":true},{"text":" ≛","color":"yellow"}]

execute if score victoryTimer: gameTimer matches 8 run function battle:gameobjective/gameobjectiveextra/endstats/main

execute if score victoryTimer: gameTimer matches 1 as @a[tag=victory] run title @s subtitle ["",{"text":"VICTORY","bold":true,"color":"yellow"}]
execute if score victoryTimer: gameTimer matches 4 as @a[tag=victory] run title @s subtitle ["",{"text":"V","bold":true,"color":"yellow"},{"text":"ICTORY","bold":true,"color":"gold"}]
execute if score victoryTimer: gameTimer matches 8 as @a[tag=victory] run title @s subtitle ["",{"text":"V","bold":true,"color":"gold"},{"text":"I","bold":true,"color":"yellow"},{"text":"CTORY","bold":true,"color":"gold"}]
execute if score victoryTimer: gameTimer matches 12 as @a[tag=victory] run title @s subtitle ["",{"text":"VI","bold":true,"color":"gold"},{"text":"C","bold":true,"color":"yellow"},{"text":"TORY","bold":true,"color":"gold"}]
execute if score victoryTimer: gameTimer matches 16 as @a[tag=victory] run title @s subtitle ["",{"text":"VIC","bold":true,"color":"gold"},{"text":"T","bold":true,"color":"yellow"},{"text":"ORY","bold":true,"color":"gold"}]
execute if score victoryTimer: gameTimer matches 20 as @a[tag=victory] run title @s subtitle ["",{"text":"VICT","bold":true,"color":"gold"},{"text":"O","bold":true,"color":"yellow"},{"text":"RY","bold":true,"color":"gold"}]
execute if score victoryTimer: gameTimer matches 24 as @a[tag=victory] run title @s subtitle ["",{"text":"VICTO","bold":true,"color":"gold"},{"text":"R","bold":true,"color":"yellow"},{"text":"Y","bold":true,"color":"gold"}]
execute if score victoryTimer: gameTimer matches 28 as @a[tag=victory] run title @s subtitle ["",{"text":"VICTOR","bold":true,"color":"gold"},{"text":"Y","bold":true,"color":"yellow"}]
execute if score victoryTimer: gameTimer matches 32 as @a[tag=victory] run title @s subtitle ["",{"text":"V","bold":true,"color":"yellow"},{"text":"ICTORY","bold":true,"color":"gold"}]
execute if score victoryTimer: gameTimer matches 36 as @a[tag=victory] run title @s subtitle ["",{"text":"V","bold":true,"color":"gold"},{"text":"I","bold":true,"color":"yellow"},{"text":"CTORY","bold":true,"color":"gold"}]
execute if score victoryTimer: gameTimer matches 40 as @a[tag=victory] run title @s subtitle ["",{"text":"VI","bold":true,"color":"gold"},{"text":"C","bold":true,"color":"yellow"},{"text":"TORY","bold":true,"color":"gold"}]
execute if score victoryTimer: gameTimer matches 44 as @a[tag=victory] run title @s subtitle ["",{"text":"VIC","bold":true,"color":"gold"},{"text":"T","bold":true,"color":"yellow"},{"text":"ORY","bold":true,"color":"gold"}]
execute if score victoryTimer: gameTimer matches 48 as @a[tag=victory] run title @s subtitle ["",{"text":"VICT","bold":true,"color":"gold"},{"text":"O","bold":true,"color":"yellow"},{"text":"RY","bold":true,"color":"gold"}]
execute if score victoryTimer: gameTimer matches 52 as @a[tag=victory] run title @s subtitle ["",{"text":"VICTO","bold":true,"color":"gold"},{"text":"R","bold":true,"color":"yellow"},{"text":"Y","bold":true,"color":"gold"}]
execute if score victoryTimer: gameTimer matches 56 as @a[tag=victory] run title @s subtitle ["",{"text":"VICTOR","bold":true,"color":"gold"},{"text":"Y","bold":true,"color":"yellow"}]
execute if score victoryTimer: gameTimer matches 60 as @a[tag=victory] run title @s subtitle ["",{"text":"VICTORY","bold":true,"color":"yellow"}]

execute if score victoryTimer: gameTimer matches 1 as @a[tag=!victory,tag=Participant] run title @s subtitle ["",{"text":"DEFEAT","bold":true,"color":"dark_red"}]
execute if score victoryTimer: gameTimer matches 4 as @a[tag=!victory,tag=Participant] run title @s subtitle ["",{"text":"DEFEAT","bold":true,"color":"dark_red"}]
execute if score victoryTimer: gameTimer matches 8 as @a[tag=!victory,tag=Participant] run title @s subtitle ["",{"text":"DEFEAT","bold":true,"color":"red"}]
execute if score victoryTimer: gameTimer matches 12 as @a[tag=!victory,tag=Participant] run title @s subtitle ["",{"text":"DEFEAT","bold":true,"color":"red"}]
execute if score victoryTimer: gameTimer matches 16 as @a[tag=!victory,tag=Participant] run title @s subtitle ["",{"text":"DEFEAT","bold":true,"color":"dark_red"}]
execute if score victoryTimer: gameTimer matches 20 as @a[tag=!victory,tag=Participant] run title @s subtitle ["",{"text":"DEFEAT","bold":true,"color":"dark_red"}]
execute if score victoryTimer: gameTimer matches 24 as @a[tag=!victory,tag=Participant] run title @s subtitle ["",{"text":"DEFEAT","bold":true,"color":"red"}]
execute if score victoryTimer: gameTimer matches 28 as @a[tag=!victory,tag=Participant] run title @s subtitle ["",{"text":"DEFEAT","bold":true,"color":"red"}]
execute if score victoryTimer: gameTimer matches 32 as @a[tag=!victory,tag=Participant] run title @s subtitle ["",{"text":"DEFEAT","bold":true,"color":"dark_red"}]
execute if score victoryTimer: gameTimer matches 36 as @a[tag=!victory,tag=Participant] run title @s subtitle ["",{"text":"DEFEAT","bold":true,"color":"dark_red"}]
execute if score victoryTimer: gameTimer matches 40 as @a[tag=!victory,tag=Participant] run title @s subtitle ["",{"text":"DEFEAT","bold":true,"color":"red"}]
execute if score victoryTimer: gameTimer matches 44 as @a[tag=!victory,tag=Participant] run title @s subtitle ["",{"text":"DEFEAT","bold":true,"color":"red"}]
execute if score victoryTimer: gameTimer matches 48 as @a[tag=!victory,tag=Participant] run title @s subtitle ["",{"text":"DEFEAT","bold":true,"color":"dark_red"}]
execute if score victoryTimer: gameTimer matches 52 as @a[tag=!victory,tag=Participant] run title @s subtitle ["",{"text":"DEFEAT","bold":true,"color":"dark_red"}]
execute if score victoryTimer: gameTimer matches 56 as @a[tag=!victory,tag=Participant] run title @s subtitle ["",{"text":"DEFEAT","bold":true,"color":"red"}]
execute if score victoryTimer: gameTimer matches 60 as @a[tag=!victory,tag=Participant] run title @s subtitle ["",{"text":"DEFEAT","bold":true,"color":"red"}]


execute if score victoryTimer: gameTimer matches 1 if entity @a[tag=tievictory] run title @a subtitle ["",{"text":"TIE","bold":true,"color":"white"}]
execute if score victoryTimer: gameTimer matches 4 if entity @a[tag=tievictory] run title @a subtitle ["",{"text":"T","bold":true,"color":"white"},{"text":"IE","bold":true,"color":"gray"}]
execute if score victoryTimer: gameTimer matches 8 if entity @a[tag=tievictory] run title @a subtitle ["",{"text":"T","bold":true,"color":"gray"},{"text":"I","bold":true,"color":"white"},{"text":"E","bold":true,"color":"gray"}]
execute if score victoryTimer: gameTimer matches 12 if entity @a[tag=tievictory] run title @a subtitle ["",{"text":"TI","bold":true,"color":"gray"},{"text":"E","bold":true,"color":"white"}]
execute if score victoryTimer: gameTimer matches 16 if entity @a[tag=tievictory] run title @a subtitle ["",{"text":"TIE","bold":true,"color":"white"}]
execute if score victoryTimer: gameTimer matches 20 if entity @a[tag=tievictory] run title @a subtitle ["",{"text":"TIE","bold":true,"color":"white"}]
execute if score victoryTimer: gameTimer matches 24 if entity @a[tag=tievictory] run title @a subtitle ["",{"text":"T","bold":true,"color":"white"},{"text":"IE","bold":true,"color":"gray"}]
execute if score victoryTimer: gameTimer matches 28 if entity @a[tag=tievictory] run title @a subtitle ["",{"text":"T","bold":true,"color":"gray"},{"text":"I","bold":true,"color":"white"},{"text":"E","bold":true,"color":"gray"}]
execute if score victoryTimer: gameTimer matches 32 if entity @a[tag=tievictory] run title @a subtitle ["",{"text":"TI","bold":true,"color":"gray"},{"text":"E","bold":true,"color":"white"}]
execute if score victoryTimer: gameTimer matches 36 if entity @a[tag=tievictory] run title @a subtitle ["",{"text":"TIE","bold":true,"color":"white"}]
execute if score victoryTimer: gameTimer matches 40 if entity @a[tag=tievictory] run title @a subtitle ["",{"text":"TIE","bold":true,"color":"white"}]
execute if score victoryTimer: gameTimer matches 44 if entity @a[tag=tievictory] run title @a subtitle ["",{"text":"T","bold":true,"color":"white"},{"text":"IE","bold":true,"color":"gray"}]
execute if score victoryTimer: gameTimer matches 48 if entity @a[tag=tievictory] run title @a subtitle ["",{"text":"T","bold":true,"color":"gray"},{"text":"I","bold":true,"color":"white"},{"text":"E","bold":true,"color":"gray"}]
execute if score victoryTimer: gameTimer matches 52 if entity @a[tag=tievictory] run title @a subtitle ["",{"text":"TI","bold":true,"color":"gray"},{"text":"E","bold":true,"color":"white"}]
execute if score victoryTimer: gameTimer matches 56 if entity @a[tag=tievictory] run title @a subtitle ["",{"text":"TIE","bold":true,"color":"white"}]
execute if score victoryTimer: gameTimer matches 60 if entity @a[tag=tievictory] run title @a subtitle ["",{"text":"TIE","bold":true,"color":"white"}]

execute if score victoryTimer: gameTimer matches 1 as @a[tag=victory] at @s run summon firework_rocket ~2 ~.5 ~3 {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16764928,16777037]},{shape:"large_ball",colors:[I;15264176,16772165]}]}}}}
execute if score victoryTimer: gameTimer matches 1 as @a[tag=victory] at @s run summon firework_rocket ~4 ~.5 ~-2 {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16764928,16777037]},{shape:"large_ball",colors:[I;15922077,16772165]}]}}}}
execute if score victoryTimer: gameTimer matches 1 as @a[tag=victory] at @s run summon firework_rocket ~1 ~.5 ~1 {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16764928,16777037]},{shape:"large_ball",colors:[I;15922077,16772165]}]}}}}
execute if score victoryTimer: gameTimer matches 1 as @a[tag=victory] at @s run summon firework_rocket ~-1 ~.5 ~-3 {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16764928,16777037]},{shape:"large_ball",colors:[I;15922077,16772165]}]}}}}

execute if score victoryTimer: gameTimer matches 16 as @a[tag=victory] at @s run summon firework_rocket ~2 ~.5 ~3 {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16764928,16777037]},{shape:"large_ball",colors:[I;15264176,16772165]}]}}}}
execute if score victoryTimer: gameTimer matches 16 as @a[tag=victory] at @s run summon firework_rocket ~4 ~.5 ~-2 {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16764928,16777037]},{shape:"large_ball",colors:[I;15922077,16772165]}]}}}}
execute if score victoryTimer: gameTimer matches 16 as @a[tag=victory] at @s run summon firework_rocket ~1 ~.5 ~1 {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16764928,16777037]},{shape:"large_ball",colors:[I;15922077,16772165]}]}}}}
execute if score victoryTimer: gameTimer matches 16 as @a[tag=victory] at @s run summon firework_rocket ~-1 ~.5 ~-3 {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16764928,16777037]},{shape:"large_ball",colors:[I;15922077,16772165]}]}}}}

execute if score victoryTimer: gameTimer matches 32 as @a[tag=victory] at @s run summon firework_rocket ~2 ~.5 ~3 {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16764928,16777037]},{shape:"large_ball",colors:[I;15264176,16772165]}]}}}}
execute if score victoryTimer: gameTimer matches 32 as @a[tag=victory] at @s run summon firework_rocket ~4 ~.5 ~-2 {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16764928,16777037]},{shape:"large_ball",colors:[I;15922077,16772165]}]}}}}
execute if score victoryTimer: gameTimer matches 32 as @a[tag=victory] at @s run summon firework_rocket ~1 ~.5 ~1 {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16764928,16777037]},{shape:"large_ball",colors:[I;15922077,16772165]}]}}}}
execute if score victoryTimer: gameTimer matches 32 as @a[tag=victory] at @s run summon firework_rocket ~-1 ~.5 ~-3 {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16764928,16777037]},{shape:"large_ball",colors:[I;15922077,16772165]}]}}}}

execute if score victoryTimer: gameTimer matches 48 as @a[tag=victory] at @s run summon firework_rocket ~2 ~.5 ~3 {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16764928,16777037]},{shape:"large_ball",colors:[I;15264176,16772165]}]}}}}
execute if score victoryTimer: gameTimer matches 48 as @a[tag=victory] at @s run summon firework_rocket ~4 ~.5 ~-2 {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16764928,16777037]},{shape:"large_ball",colors:[I;15922077,16772165]}]}}}}
execute if score victoryTimer: gameTimer matches 48 as @a[tag=victory] at @s run summon firework_rocket ~1 ~.5 ~1 {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16764928,16777037]},{shape:"large_ball",colors:[I;15922077,16772165]}]}}}}
execute if score victoryTimer: gameTimer matches 48 as @a[tag=victory] at @s run summon firework_rocket ~-1 ~.5 ~-3 {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16764928,16777037]},{shape:"large_ball",colors:[I;15922077,16772165]}]}}}}

execute if score victoryTimer: gameTimer matches 60 as @a[tag=victory] at @s run summon firework_rocket ~2 ~.5 ~3 {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16764928,16777037]},{shape:"large_ball",colors:[I;15264176,16772165]}]}}}}
execute if score victoryTimer: gameTimer matches 60 as @a[tag=victory] at @s run summon firework_rocket ~4 ~.5 ~-2 {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16764928,16777037]},{shape:"large_ball",colors:[I;15922077,16772165]}]}}}}
execute if score victoryTimer: gameTimer matches 60 as @a[tag=victory] at @s run summon firework_rocket ~1 ~.5 ~1 {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16764928,16777037]},{shape:"large_ball",colors:[I;15922077,16772165]}]}}}}
execute if score victoryTimer: gameTimer matches 60 as @a[tag=victory] at @s run summon firework_rocket ~-1 ~.5 ~-3 {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;16764928,16777037]},{shape:"large_ball",colors:[I;15922077,16772165]}]}}}}

execute if score victoryTimer: gameTimer matches 1 as @a[tag=tievictory] at @s run summon firework_rocket ~2 ~.5 ~3 {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;7262680,16777215]},{shape:"large_ball",colors:[I;2787012,16777215]}]}}}}
execute if score victoryTimer: gameTimer matches 1 as @a[tag=tievictory] at @s run summon firework_rocket ~4 ~.5 ~-2 {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;7262680,16777215]},{shape:"large_ball",colors:[I;2787012,16777215]}]}}}}
execute if score victoryTimer: gameTimer matches 1 as @a[tag=tievictory] at @s run summon firework_rocket ~1 ~.5 ~1 {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;7262680,16777215]},{shape:"large_ball",colors:[I;2787012,16777215]}]}}}}
execute if score victoryTimer: gameTimer matches 1 as @a[tag=tievictory] at @s run summon firework_rocket ~-1 ~.5 ~-3 {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;7262680,16777215]},{shape:"large_ball",colors:[I;2787012,16777215]}]}}}}

execute if score victoryTimer: gameTimer matches 16 as @a[tag=tievictory] at @s run summon firework_rocket ~2 ~.5 ~3 {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;7262680,16777215]},{shape:"large_ball",colors:[I;2787012,16777215]}]}}}}
execute if score victoryTimer: gameTimer matches 16 as @a[tag=tievictory] at @s run summon firework_rocket ~4 ~.5 ~-2 {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;7262680,16777215]},{shape:"large_ball",colors:[I;2787012,16777215]}]}}}}
execute if score victoryTimer: gameTimer matches 16 as @a[tag=tievictory] at @s run summon firework_rocket ~1 ~.5 ~1 {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;7262680,16777215]},{shape:"large_ball",colors:[I;2787012,16777215]}]}}}}
execute if score victoryTimer: gameTimer matches 16 as @a[tag=tievictory] at @s run summon firework_rocket ~-1 ~.5 ~-3 {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;7262680,16777215]},{shape:"large_ball",colors:[I;2787012,16777215]}]}}}}

execute if score victoryTimer: gameTimer matches 32 as @a[tag=tievictory] at @s run summon firework_rocket ~2 ~.5 ~3 {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;7262680,16777215]},{shape:"large_ball",colors:[I;2787012,16777215]}]}}}}
execute if score victoryTimer: gameTimer matches 32 as @a[tag=tievictory] at @s run summon firework_rocket ~4 ~.5 ~-2 {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;7262680,16777215]},{shape:"large_ball",colors:[I;2787012,16777215]}]}}}}
execute if score victoryTimer: gameTimer matches 32 as @a[tag=tievictory] at @s run summon firework_rocket ~1 ~.5 ~1 {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;7262680,16777215]},{shape:"large_ball",colors:[I;2787012,16777215]}]}}}}
execute if score victoryTimer: gameTimer matches 32 as @a[tag=tievictory] at @s run summon firework_rocket ~-1 ~.5 ~-3 {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;7262680,16777215]},{shape:"large_ball",colors:[I;2787012,16777215]}]}}}}

execute if score victoryTimer: gameTimer matches 48 as @a[tag=tievictory] at @s run summon firework_rocket ~2 ~.5 ~3 {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;7262680,16777215]},{shape:"large_ball",colors:[I;2787012,16777215]}]}}}}
execute if score victoryTimer: gameTimer matches 48 as @a[tag=tievictory] at @s run summon firework_rocket ~4 ~.5 ~-2 {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;7262680,16777215]},{shape:"large_ball",colors:[I;2787012,16777215]}]}}}}
execute if score victoryTimer: gameTimer matches 48 as @a[tag=tievictory] at @s run summon firework_rocket ~1 ~.5 ~1 {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;7262680,16777215]},{shape:"large_ball",colors:[I;2787012,16777215]}]}}}}
execute if score victoryTimer: gameTimer matches 48 as @a[tag=tievictory] at @s run summon firework_rocket ~-1 ~.5 ~-3 {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;7262680,16777215]},{shape:"large_ball",colors:[I;2787012,16777215]}]}}}}

execute if score victoryTimer: gameTimer matches 60 as @a[tag=tievictory] at @s run summon firework_rocket ~2 ~.5 ~3 {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;7262680,16777215]},{shape:"large_ball",colors:[I;2787012,16777215]}]}}}}
execute if score victoryTimer: gameTimer matches 60 as @a[tag=tievictory] at @s run summon firework_rocket ~4 ~.5 ~-2 {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;7262680,16777215]},{shape:"large_ball",colors:[I;2787012,16777215]}]}}}}
execute if score victoryTimer: gameTimer matches 60 as @a[tag=tievictory] at @s run summon firework_rocket ~1 ~.5 ~1 {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;7262680,16777215]},{shape:"large_ball",colors:[I;2787012,16777215]}]}}}}
execute if score victoryTimer: gameTimer matches 60 as @a[tag=tievictory] at @s run summon firework_rocket ~-1 ~.5 ~-3 {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"small_ball",colors:[I;7262680,16777215]},{shape:"large_ball",colors:[I;2787012,16777215]}]}}}}

execute if score victoryTimer: gameTimer matches 60 run function battle:ingame/detect
execute if score victoryTimer: gameTimer matches 60 run tag @a remove tievictory
execute if score victoryTimer: gameTimer matches 60 run tag @a remove victory
execute if score victoryTimer: gameTimer matches 60 run function battle:reset/reset
execute if score victoryTimer: gameTimer matches 60 run scoreboard players reset victoryTimer: gameTimer