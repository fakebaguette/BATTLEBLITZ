team join objRed 𝐑𝐄𝐃｜𝟎✯
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟎✯
team join objAqua 𝐀𝐐𝐔𝐀｜𝟎✯
team join objGreen 𝐋𝐈𝐌𝐄｜𝟎✯
team join objGold 𝐆𝐎𝐋𝐃｜𝟎✯
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟎✯

execute if data storage stars_info t1_d1 run function battle:gameobjective/gameobjectiveextra/update/stars/clear_stars with storage stars_info

execute if entity @a[tag=Participant,tag=Team1,team=Red] run data modify storage stars_info t1_color_obj set value "Red"
execute if entity @a[tag=Participant,tag=Team1,team=Magenta] run data modify storage stars_info t1_color_obj set value "LightPurple"
execute if entity @a[tag=Participant,tag=Team1,team=Aqua] run data modify storage stars_info t1_color_obj set value "Aqua"
execute if entity @a[tag=Participant,tag=Team1,team=Lime] run data modify storage stars_info t1_color_obj set value "Green"
execute if entity @a[tag=Participant,tag=Team1,team=Gold] run data modify storage stars_info t1_color_obj set value "Gold"
execute if entity @a[tag=Participant,tag=Team1,team=Yellow] run data modify storage stars_info t1_color_obj set value "Yellow"

execute if entity @a[tag=Participant,tag=Team2,team=Red] run data modify storage stars_info t2_color_obj set value "Red"
execute if entity @a[tag=Participant,tag=Team2,team=Magenta] run data modify storage stars_info t2_color_obj set value "LightPurple"
execute if entity @a[tag=Participant,tag=Team2,team=Aqua] run data modify storage stars_info t2_color_obj set value "Aqua"
execute if entity @a[tag=Participant,tag=Team2,team=Lime] run data modify storage stars_info t2_color_obj set value "Green"
execute if entity @a[tag=Participant,tag=Team2,team=Gold] run data modify storage stars_info t2_color_obj set value "Gold"
execute if entity @a[tag=Participant,tag=Team2,team=Yellow] run data modify storage stars_info t2_color_obj set value "Yellow"

execute if entity @a[tag=Participant,tag=Team1,team=Red] run data modify storage stars_info t1_color set value "Red"
execute if entity @a[tag=Participant,tag=Team1,team=Magenta] run data modify storage stars_info t1_color set value "Mag"
execute if entity @a[tag=Participant,tag=Team1,team=Aqua] run data modify storage stars_info t1_color set value "Aqu"
execute if entity @a[tag=Participant,tag=Team1,team=Lime] run data modify storage stars_info t1_color set value "Lim"
execute if entity @a[tag=Participant,tag=Team1,team=Gold] run data modify storage stars_info t1_color set value "Gol"
execute if entity @a[tag=Participant,tag=Team1,team=Yellow] run data modify storage stars_info t1_color set value "Yel"

execute if entity @a[tag=Participant,tag=Team2,team=Red] run data modify storage stars_info t2_color set value "Red"
execute if entity @a[tag=Participant,tag=Team2,team=Magenta] run data modify storage stars_info t2_color set value "Mag"
execute if entity @a[tag=Participant,tag=Team2,team=Aqua] run data modify storage stars_info t2_color set value "Aqu"
execute if entity @a[tag=Participant,tag=Team2,team=Lime] run data modify storage stars_info t2_color set value "Lim"
execute if entity @a[tag=Participant,tag=Team2,team=Gold] run data modify storage stars_info t2_color set value "Gol"
execute if entity @a[tag=Participant,tag=Team2,team=Yellow] run data modify storage stars_info t2_color set value "Yel"

execute if entity @a[tag=Participant,tag=Team1,team=Red] run data modify storage stars_info t1_name set value "𝐑𝐄𝐃"
execute if entity @a[tag=Participant,tag=Team1,team=Magenta] run data modify storage stars_info t1_name set value "𝐌𝐀𝐆𝐄𝐍𝐓𝐀"
execute if entity @a[tag=Participant,tag=Team1,team=Aqua] run data modify storage stars_info t1_name set value "𝐀𝐐𝐔𝐀"
execute if entity @a[tag=Participant,tag=Team1,team=Lime] run data modify storage stars_info t1_name set value "𝐋𝐈𝐌𝐄"
execute if entity @a[tag=Participant,tag=Team1,team=Gold] run data modify storage stars_info t1_name set value "𝐆𝐎𝐋𝐃"
execute if entity @a[tag=Participant,tag=Team1,team=Yellow] run data modify storage stars_info t1_name set value "𝐘𝐄𝐋𝐋𝐎𝐖"

execute if entity @a[tag=Participant,tag=Team2,team=Red] run data modify storage stars_info t2_name set value "𝐑𝐄𝐃"
execute if entity @a[tag=Participant,tag=Team2,team=Magenta] run data modify storage stars_info t2_name set value "𝐌𝐀𝐆𝐄𝐍𝐓𝐀"
execute if entity @a[tag=Participant,tag=Team2,team=Aqua] run data modify storage stars_info t2_name set value "𝐀𝐐𝐔𝐀"
execute if entity @a[tag=Participant,tag=Team2,team=Lime] run data modify storage stars_info t2_name set value "𝐋𝐈𝐌𝐄"
execute if entity @a[tag=Participant,tag=Team2,team=Gold] run data modify storage stars_info t2_name set value "𝐆𝐎𝐋𝐃"
execute if entity @a[tag=Participant,tag=Team2,team=Yellow] run data modify storage stars_info t2_name set value "𝐘𝐄𝐋𝐋𝐎𝐖"


#
data modify storage stars_info t1_d1 set value ""
data modify storage stars_info t1_d2 set value ""
data modify storage stars_info t1_d3 set value ""

data modify storage stars_info t2_d1 set value ""
data modify storage stars_info t2_d2 set value ""
data modify storage stars_info t2_d3 set value ""

#
scoreboard objectives remove starCount_math
scoreboard objectives add starCount_math dummy

scoreboard players add Team1Stars: starCountTeam1 0
scoreboard players add Team2Stars: starCountTeam2 0

#𝟏 𝟐 𝟑 𝟒 𝟓 𝟔 𝟕 𝟖 𝟗 𝟎

scoreboard players set .100 starCount_math 100
scoreboard players set .10 starCount_math 10

scoreboard players operation .t1_stars starCount_math = Team1Stars: starCountTeam1 
scoreboard players operation .t1_d3 starCount_math = .t1_stars starCount_math
scoreboard players operation .t1_d2 starCount_math = .t1_stars starCount_math
scoreboard players operation .t1_d1 starCount_math = .t1_stars starCount_math

scoreboard players operation .t1_d3 starCount_math /= .100 starCount_math
scoreboard players operation .t1_d2 starCount_math /= .10 starCount_math
scoreboard players operation .t1_d2 starCount_math %= .10 starCount_math
scoreboard players operation .t1_d1 starCount_math %= .10 starCount_math

execute unless score .t1_d3 starCount_math matches 1.. run data modify storage stars_info t1_d3 set value ""
execute if score .t1_d3 starCount_math matches 1 run data modify storage stars_info t1_d3 set value "𝟏"
execute if score .t1_d3 starCount_math matches 2 run data modify storage stars_info t1_d3 set value "𝟐"
execute if score .t1_d3 starCount_math matches 3 run data modify storage stars_info t1_d3 set value "𝟑"
execute if score .t1_d3 starCount_math matches 4 run data modify storage stars_info t1_d3 set value "𝟒"
execute if score .t1_d3 starCount_math matches 5 run data modify storage stars_info t1_d3 set value "𝟓"
execute if score .t1_d3 starCount_math matches 6 run data modify storage stars_info t1_d3 set value "𝟔"
execute if score .t1_d3 starCount_math matches 7 run data modify storage stars_info t1_d3 set value "𝟕"
execute if score .t1_d3 starCount_math matches 8 run data modify storage stars_info t1_d3 set value "𝟖"
execute if score .t1_d3 starCount_math matches 9 run data modify storage stars_info t1_d3 set value "𝟗"

execute unless score .t1_d2 starCount_math matches 1.. run data modify storage stars_info t1_d2 set value ""
execute if score .t1_d2 starCount_math matches 1 run data modify storage stars_info t1_d2 set value "𝟏"
execute if score .t1_d2 starCount_math matches 2 run data modify storage stars_info t1_d2 set value "𝟐"
execute if score .t1_d2 starCount_math matches 3 run data modify storage stars_info t1_d2 set value "𝟑"
execute if score .t1_d2 starCount_math matches 4 run data modify storage stars_info t1_d2 set value "𝟒"
execute if score .t1_d2 starCount_math matches 5 run data modify storage stars_info t1_d2 set value "𝟓"
execute if score .t1_d2 starCount_math matches 6 run data modify storage stars_info t1_d2 set value "𝟔"
execute if score .t1_d2 starCount_math matches 7 run data modify storage stars_info t1_d2 set value "𝟕"
execute if score .t1_d2 starCount_math matches 8 run data modify storage stars_info t1_d2 set value "𝟖"
execute if score .t1_d2 starCount_math matches 9 run data modify storage stars_info t1_d2 set value "𝟗"

execute unless score .t1_d1 starCount_math matches 1.. run data modify storage stars_info t1_d1 set value "𝟎"
execute if score .t1_d1 starCount_math matches 1 run data modify storage stars_info t1_d1 set value "𝟏"
execute if score .t1_d1 starCount_math matches 2 run data modify storage stars_info t1_d1 set value "𝟐"
execute if score .t1_d1 starCount_math matches 3 run data modify storage stars_info t1_d1 set value "𝟑"
execute if score .t1_d1 starCount_math matches 4 run data modify storage stars_info t1_d1 set value "𝟒"
execute if score .t1_d1 starCount_math matches 5 run data modify storage stars_info t1_d1 set value "𝟓"
execute if score .t1_d1 starCount_math matches 6 run data modify storage stars_info t1_d1 set value "𝟔"
execute if score .t1_d1 starCount_math matches 7 run data modify storage stars_info t1_d1 set value "𝟕"
execute if score .t1_d1 starCount_math matches 8 run data modify storage stars_info t1_d1 set value "𝟖"
execute if score .t1_d1 starCount_math matches 9 run data modify storage stars_info t1_d1 set value "𝟗"

scoreboard players operation .t2_stars starCount_math = Team2Stars: starCountTeam2 
scoreboard players operation .t2_d3 starCount_math = .t2_stars starCount_math
scoreboard players operation .t2_d2 starCount_math = .t2_stars starCount_math
scoreboard players operation .t2_d1 starCount_math = .t2_stars starCount_math

scoreboard players operation .t2_d3 starCount_math /= .100 starCount_math
scoreboard players operation .t2_d2 starCount_math /= .10 starCount_math
scoreboard players operation .t2_d2 starCount_math %= .10 starCount_math
scoreboard players operation .t2_d1 starCount_math %= .10 starCount_math

execute unless score .t2_d3 starCount_math matches 1.. run data modify storage stars_info t2_d3 set value ""
execute if score .t2_d3 starCount_math matches 1 run data modify storage stars_info t2_d3 set value "𝟏"
execute if score .t2_d3 starCount_math matches 2 run data modify storage stars_info t2_d3 set value "𝟐"
execute if score .t2_d3 starCount_math matches 3 run data modify storage stars_info t2_d3 set value "𝟑"
execute if score .t2_d3 starCount_math matches 4 run data modify storage stars_info t2_d3 set value "𝟒"
execute if score .t2_d3 starCount_math matches 5 run data modify storage stars_info t2_d3 set value "𝟓"
execute if score .t2_d3 starCount_math matches 6 run data modify storage stars_info t2_d3 set value "𝟔"
execute if score .t2_d3 starCount_math matches 7 run data modify storage stars_info t2_d3 set value "𝟕"
execute if score .t2_d3 starCount_math matches 8 run data modify storage stars_info t2_d3 set value "𝟖"
execute if score .t2_d3 starCount_math matches 9 run data modify storage stars_info t2_d3 set value "𝟗"

execute unless score .t2_d2 starCount_math matches 1.. run data modify storage stars_info t2_d2 set value ""
execute if score .t2_d2 starCount_math matches 1 run data modify storage stars_info t2_d2 set value "𝟏"
execute if score .t2_d2 starCount_math matches 2 run data modify storage stars_info t2_d2 set value "𝟐"
execute if score .t2_d2 starCount_math matches 3 run data modify storage stars_info t2_d2 set value "𝟑"
execute if score .t2_d2 starCount_math matches 4 run data modify storage stars_info t2_d2 set value "𝟒"
execute if score .t2_d2 starCount_math matches 5 run data modify storage stars_info t2_d2 set value "𝟓"
execute if score .t2_d2 starCount_math matches 6 run data modify storage stars_info t2_d2 set value "𝟔"
execute if score .t2_d2 starCount_math matches 7 run data modify storage stars_info t2_d2 set value "𝟕"
execute if score .t2_d2 starCount_math matches 8 run data modify storage stars_info t2_d2 set value "𝟖"
execute if score .t2_d2 starCount_math matches 9 run data modify storage stars_info t2_d2 set value "𝟗"

execute unless score .t2_d1 starCount_math matches 1.. run data modify storage stars_info t2_d1 set value "𝟎"
execute if score .t2_d1 starCount_math matches 1 run data modify storage stars_info t2_d1 set value "𝟏"
execute if score .t2_d1 starCount_math matches 2 run data modify storage stars_info t2_d1 set value "𝟐"
execute if score .t2_d1 starCount_math matches 3 run data modify storage stars_info t2_d1 set value "𝟑"
execute if score .t2_d1 starCount_math matches 4 run data modify storage stars_info t2_d1 set value "𝟒"
execute if score .t2_d1 starCount_math matches 5 run data modify storage stars_info t2_d1 set value "𝟓"
execute if score .t2_d1 starCount_math matches 6 run data modify storage stars_info t2_d1 set value "𝟔"
execute if score .t2_d1 starCount_math matches 7 run data modify storage stars_info t2_d1 set value "𝟕"
execute if score .t2_d1 starCount_math matches 8 run data modify storage stars_info t2_d1 set value "𝟖"
execute if score .t2_d1 starCount_math matches 9 run data modify storage stars_info t2_d1 set value "𝟗"

function battle:gameobjective/gameobjectiveextra/update/stars/update_stars with storage stars_info