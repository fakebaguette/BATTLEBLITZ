scoreboard objectives add round_1 dummy
scoreboard objectives add round_2 dummy
scoreboard objectives add round_3 dummy
scoreboard objectives add round_4 dummy
scoreboard objectives add round_5 dummy

scoreboard players reset 𝐑𝐎𝐔𝐍𝐃𝐒｜?
scoreboard players reset 𝐌𝐀𝐏｜?
execute if data storage round_info t1_sym_1 run function battle:gameobjective/gameobjectiveextra/update/rounds/clear_rounds with storage round_info

data modify storage round_info t1_sym_1 set value "§f☐"
data modify storage round_info t1_sym_2 set value "§f☐"
data modify storage round_info t1_sym_3 set value "§f☐"
execute if score .toggle toggleRoundCount matches 1 run data modify storage round_info t1_sym_4 set value ""
execute if score .toggle toggleRoundCount matches 1 run data modify storage round_info t1_sym_5 set value ""
execute if score .toggle toggleRoundCount matches 2 run data modify storage round_info t1_sym_4 set value "§f☐"
execute if score .toggle toggleRoundCount matches 2 run data modify storage round_info t1_sym_5 set value "§f☐"
execute if score .toggle toggleRoundCount matches 3 run data modify storage round_info t1_sym_4 set value "§f☐"
execute if score .toggle toggleRoundCount matches 3 run data modify storage round_info t1_sym_5 set value "§f☐"


data modify storage round_info t2_sym_1 set value "§f☐"
data modify storage round_info t2_sym_2 set value "§f☐"
data modify storage round_info t2_sym_3 set value "§f☐"
execute if score .toggle toggleRoundCount matches 1 run data modify storage round_info t2_sym_4 set value ""
execute if score .toggle toggleRoundCount matches 1 run data modify storage round_info t2_sym_5 set value ""
execute if score .toggle toggleRoundCount matches 2 run data modify storage round_info t2_sym_4 set value "§f☐"
execute if score .toggle toggleRoundCount matches 2 run data modify storage round_info t2_sym_5 set value "§f☐"
execute if score .toggle toggleRoundCount matches 3 run data modify storage round_info t2_sym_4 set value "§f☐"
execute if score .toggle toggleRoundCount matches 3 run data modify storage round_info t2_sym_5 set value "§f☐"

execute if entity @a[tag=Participant,tag=Team1,team=Red] run data modify storage round_info t1_color set value "Red"
execute if entity @a[tag=Participant,tag=Team1,team=Magenta] run data modify storage round_info t1_color set value "Mag"
execute if entity @a[tag=Participant,tag=Team1,team=Aqua] run data modify storage round_info t1_color set value "Aqu"
execute if entity @a[tag=Participant,tag=Team1,team=Lime] run data modify storage round_info t1_color set value "Lim"
execute if entity @a[tag=Participant,tag=Team1,team=Gold] run data modify storage round_info t1_color set value "Gol"
execute if entity @a[tag=Participant,tag=Team1,team=Yellow] run data modify storage round_info t1_color set value "Yel"

execute if entity @a[tag=Participant,tag=Team2,team=Red] run data modify storage round_info t2_color set value "Red"
execute if entity @a[tag=Participant,tag=Team2,team=Magenta] run data modify storage round_info t2_color set value "Mag"
execute if entity @a[tag=Participant,tag=Team2,team=Aqua] run data modify storage round_info t2_color set value "Aqu"
execute if entity @a[tag=Participant,tag=Team2,team=Lime] run data modify storage round_info t2_color set value "Lim"
execute if entity @a[tag=Participant,tag=Team2,team=Gold] run data modify storage round_info t2_color set value "Gol"
execute if entity @a[tag=Participant,tag=Team2,team=Yellow] run data modify storage round_info t2_color set value "Yel"

#
execute if score Team1: round_1 matches 1 run data modify storage round_info t1_sym_1 set value "§a☑"
execute if score Team1: round_2 matches 1 run data modify storage round_info t1_sym_2 set value "§a☑"
execute if score Team1: round_3 matches 1 run data modify storage round_info t1_sym_3 set value "§a☑"
execute if score Team1: round_4 matches 1 run data modify storage round_info t1_sym_4 set value "§a☑"
execute if score Team1: round_5 matches 1 run data modify storage round_info t1_sym_5 set value "§a☑"

execute if score Team1: round_1 matches 2 run data modify storage round_info t1_sym_1 set value "§c☒"
execute if score Team1: round_2 matches 2 run data modify storage round_info t1_sym_2 set value "§c☒"
execute if score Team1: round_3 matches 2 run data modify storage round_info t1_sym_3 set value "§c☒"
execute if score Team1: round_4 matches 2 run data modify storage round_info t1_sym_4 set value "§c☒"
execute if score Team1: round_5 matches 2 run data modify storage round_info t1_sym_5 set value "§c☒"

execute if score Team1: round_1 matches 3 run data modify storage round_info t1_sym_1 set value "§e☐"
execute if score Team1: round_2 matches 3 run data modify storage round_info t1_sym_2 set value "§e☐"
execute if score Team1: round_3 matches 3 run data modify storage round_info t1_sym_3 set value "§e☐"
execute if score Team1: round_4 matches 3 run data modify storage round_info t1_sym_4 set value "§e☐"
execute if score Team1: round_5 matches 3 run data modify storage round_info t1_sym_5 set value "§e☐"
#2
execute if score Team2: round_1 matches 1 run data modify storage round_info t2_sym_1 set value "§a☑"
execute if score Team2: round_2 matches 1 run data modify storage round_info t2_sym_2 set value "§a☑"
execute if score Team2: round_3 matches 1 run data modify storage round_info t2_sym_3 set value "§a☑"
execute if score Team2: round_4 matches 1 run data modify storage round_info t2_sym_4 set value "§a☑"
execute if score Team2: round_5 matches 1 run data modify storage round_info t2_sym_5 set value "§a☑"

execute if score Team2: round_1 matches 2 run data modify storage round_info t2_sym_1 set value "§c☒"
execute if score Team2: round_2 matches 2 run data modify storage round_info t2_sym_2 set value "§c☒"
execute if score Team2: round_3 matches 2 run data modify storage round_info t2_sym_3 set value "§c☒"
execute if score Team2: round_4 matches 2 run data modify storage round_info t2_sym_4 set value "§c☒"
execute if score Team2: round_5 matches 2 run data modify storage round_info t2_sym_5 set value "§c☒"

execute if score Team2: round_1 matches 3 run data modify storage round_info t2_sym_1 set value "§e☐"
execute if score Team2: round_2 matches 3 run data modify storage round_info t2_sym_2 set value "§e☐"
execute if score Team2: round_3 matches 3 run data modify storage round_info t2_sym_3 set value "§e☐"
execute if score Team2: round_4 matches 3 run data modify storage round_info t2_sym_4 set value "§e☐"
execute if score Team2: round_5 matches 3 run data modify storage round_info t2_sym_5 set value "§e☐"



function battle:gameobjective/gameobjectiveextra/update/rounds/update_rounds with storage round_info