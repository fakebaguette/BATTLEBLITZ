tellraw @a[tag=Participant] ["---------------------------------------------------\n\n",{"text":"QUICKMATCH","bold":true,"color":"aqua"},"\n\nThe teams and colors will be",{"text":" ","bold":true},{"text":"RA","bold":true,"color":"light_purple"},{"text":"ND","bold":true,"color":"gold"},{"text":"OM","bold":true,"color":"green"},{"text":"IZ","bold":true,"color":"yellow"},{"text":"ED","bold":true,"color":"red"},{"text":"!","color":"white"},"\n\n---------------------------------------------------"]
execute at @a run playsound minecraft:block.note_block.bell master @a[tag=Participant] ~ ~ ~ 0.5 1.4
execute at @a run playsound minecraft:block.note_block.bit master @a[tag=Participant] ~ ~ ~ 0.3 1.4


schedule function battle:teamchoice/1-ready/q_recount 1s
schedule function battle:teamchoice/2-randomorteam/end/randomend 2s
schedule function battle:teamchoice/4-color1/end 3s
schedule function battle:teamchoice/5-color2/end 4s