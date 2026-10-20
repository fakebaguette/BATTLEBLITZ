
scoreboard players set .reset firstjoin 1

execute if score .original_map toggleMap matches 0 run scoreboard players set .toggle toggleMap 0
execute if score .toggle toggleMap matches 0 run scoreboard players reset 𝐌𝐀𝐏｜𝐒𝐋𝐀𝐓𝐄
execute if score .toggle toggleMap matches 0 run scoreboard players reset 𝐌𝐀𝐏｜𝐂𝐑𝐈𝐌𝐒𝐎𝐍
execute if score .toggle toggleMap matches 0 run scoreboard players reset 𝐌𝐀𝐏｜𝐒𝐀𝐍𝐃𝐒𝐓𝐎𝐑𝐌
execute if score .toggle toggleMap matches 0 run scoreboard players reset 𝐌𝐀𝐏｜𝐑𝐄𝐒𝐄𝐑𝐕𝐄
execute if score .toggle toggleMap matches 0 run scoreboard players reset 𝐌𝐀𝐏｜𝐎𝐔𝐓𝐏𝐎𝐒𝐓
execute if score .toggle toggleMap matches 0 run scoreboard players reset 𝐌𝐀𝐏｜𝐒𝐀𝐍𝐂𝐓𝐔𝐀𝐑𝐘
function battle:toggle/togglemap
scoreboard players set .reset firstjoin 0

execute if data storage round_info t1_sym_1 run function battle:gameobjective/gameobjectiveextra/update/rounds/clear_rounds with storage round_info
data remove storage round_info t1_sym_1
data remove storage round_info t1_sym_1
data remove storage round_info t1_sym_2
data remove storage round_info t1_sym_3
data remove storage round_info t2_sym_1
data remove storage round_info t2_sym_2
data remove storage round_info t2_sym_3
data remove storage round_info t1_color
data remove storage round_info t2_color

function battle:other/hp_display/reset/init
function battle:teamchoice/7-class/open_dialog/clear

scoreboard objectives remove Forfeit
scoreboard players reset .t1_count forfeit_info
scoreboard players reset .t2_count forfeit_info
scoreboard players reset .t1_time forfeit_info
scoreboard players reset .t2_time forfeit_info
scoreboard players reset .time tutorial

scoreboard objectives remove ResetAll
scoreboard players reset .vote_count ResetAll_info
scoreboard players reset .reset_time ResetAll_info

schedule clear battle:lobby/tutorial/tutorial

#Scores
execute as @a[tag=!operator] run function battle:reset/resetscore

#Tags
execute as @a[tag=!operator] run function battle:reset/resettag

#thing
execute as @a[tag=!operator] run function battle:reset/advancement

function battle:classes/armor_values/update

#General
dialog clear @a
#tellraw @a ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Found a bug ","color":"red"},{"text":"or","color":"white"},{"text":" ","color":"red"},{"text":"have feedback?","color":"green"},{"text":" Click ","color":"white"},{"text":"here","color":"gold","click_event":{"action":"open_url","url":"https://forms.gle/ZULniyTGamu1f1jD7"}},{"text":"!","color":"white"}]
tp @a[tag=!operator,tag=!inParkour] 0 104 166 180 0
spawnpoint @a 0 104 166
clear @a[tag=!operator]
gamemode adventure @a[tag=!operator]
time set day
weather clear
experience set @a[tag=!operator] 0 levels
experience set @a[tag=!operator] 0 points
effect clear @a[tag=!operator]
effect give @a[tag=!operator] instant_health 2 255 true
effect give @a[tag=!operator] saturation 1 255 true
title @a[tag=!operator] clear
team leave @a[tag=!operator]
execute as @a[tag=!operator] run attribute @s scale base set 1
execute as @a[tag=!operator] run attribute @s max_health base set 20
execute as @a[tag=!operator] run attribute @s entity_interaction_range base set 3
execute as @a[tag=!operator] run attribute @s gravity base set 0.08
gamerule show_advancement_messages false
gamerule show_death_messages false
gamerule advance_weather false
gamerule advance_time false
gamerule command_block_output false
gamerule block_drops false
gamerule immediate_respawn true
gamerule mob_drops false
gamerule spawn_monsters false
gamerule spread_vines false
gamerule fall_damage false
gamerule keep_inventory true
gamerule natural_health_regeneration false
gamerule random_tick_speed 0
gamerule show_death_messages false
gamerule max_command_sequence_length 1000000
gamerule entity_drops false
gamerule fire_spread_radius_around_player 0
gamerule drowning_damage false

gamerule send_command_feedback false
tag @a[tag=!operator] add inLobby

schedule clear battle:gameobjective/gameobjectiveextra/update/updatescoreboards
function battle:gameobjective/gameobjectiveextra/update/timereset
function battle:ingame/map_specific/sandstorm/storm/stopstorm
function battle:ingame/map_specific/crypt/fire/stopstorm
function battle:reset/boxreset

#lobby


#Participant/Player Count
scoreboard players reset #ofplayers:
scoreboard players reset #ofplayersTeam1:
scoreboard players reset #ofplayersTeam2:
scoreboard players reset #ofaliveRed:
scoreboard players reset #ofaliveMag:
scoreboard players reset #ofaliveAqu:
scoreboard players reset #ofaliveLim:
scoreboard players reset #ofaliveGol:
scoreboard players reset #ofaliveYel:

#Game Entities
function battle:reset/entities

#Classes
execute as @a[tag=!operator] run function battle:reset/runereset

#Death
data modify storage death Pos set value [0.0d,0.0d,0.0d]

scoreboard objectives remove playerDiedInt
scoreboard objectives remove hpInt
scoreboard objectives add playerDiedInt deathCount
scoreboard objectives add hpInt health
scoreboard objectives add teamPlayerCount dummy
scoreboard objectives add teamDeath deathCount

#Team
scoreboard objectives add blockRed minecraft.used:minecraft.red_concrete
scoreboard objectives add blockMag minecraft.used:minecraft.magenta_concrete
scoreboard objectives add blockAqu minecraft.used:minecraft.light_blue_concrete
scoreboard objectives add blockLim minecraft.used:minecraft.lime_concrete
scoreboard objectives add blockGol minecraft.used:minecraft.orange_concrete
scoreboard objectives add blockYel minecraft.used:minecraft.yellow_concrete

scoreboard objectives add endBlockRed minecraft.used:minecraft.red_concrete
scoreboard objectives add endBlockMag minecraft.used:minecraft.magenta_concrete
scoreboard objectives add endBlockAqu minecraft.used:minecraft.light_blue_concrete
scoreboard objectives add endBlockLim minecraft.used:minecraft.lime_concrete
scoreboard objectives add endBlockGol minecraft.used:minecraft.orange_concrete
scoreboard objectives add endBlockYel minecraft.used:minecraft.yellow_concrete

scoreboard objectives add endKillCount playerKillCount
scoreboard objectives add endDeathCount deathCount
scoreboard objectives add endDMGCount minecraft.custom:damage_dealt

scoreboard players reset TeamRed: round_1
scoreboard players reset TeamMag: round_1
scoreboard players reset TeamAqu: round_1
scoreboard players reset TeamLim: round_1
scoreboard players reset TeamGol: round_1
scoreboard players reset TeamYel: round_1

scoreboard players reset TeamRed: round_2
scoreboard players reset TeamMag: round_2
scoreboard players reset TeamAqu: round_2
scoreboard players reset TeamLim: round_2
scoreboard players reset TeamGol: round_2
scoreboard players reset TeamYel: round_2

scoreboard players reset TeamRed: round_3
scoreboard players reset TeamMag: round_3
scoreboard players reset TeamAqu: round_3
scoreboard players reset TeamLim: round_3
scoreboard players reset TeamGol: round_3
scoreboard players reset TeamYel: round_3

scoreboard players reset TeamRed: round_4
scoreboard players reset TeamMag: round_4
scoreboard players reset TeamAqu: round_4
scoreboard players reset TeamLim: round_4
scoreboard players reset TeamGol: round_4
scoreboard players reset TeamYel: round_4

scoreboard players reset TeamRed: round_5
scoreboard players reset TeamMag: round_5
scoreboard players reset TeamAqu: round_5
scoreboard players reset TeamLim: round_5
scoreboard players reset TeamGol: round_5
scoreboard players reset TeamYel: round_5

scoreboard players reset Team1: round_1
scoreboard players reset Team1: round_2
scoreboard players reset Team1: round_3
scoreboard players reset Team1: round_4
scoreboard players reset Team1: round_5

scoreboard players reset Team2: round_1
scoreboard players reset Team2: round_2
scoreboard players reset Team2: round_3
scoreboard players reset Team2: round_4
scoreboard players reset Team2: round_5

team remove Red
team remove Magenta
team remove Lime
team remove Aqua
team remove Gold
team remove Yellow
team remove Team1
team remove Team2
team remove Ready

team add Ready
team modify Ready prefix "✔ | "
team modify Ready color dark_green
team modify Ready seeFriendlyInvisibles true
team modify Ready collisionRule pushOtherTeams
team modify Ready friendlyFire true

team add Team1
team modify Team1 prefix "Team 1 | "
team modify Team1 color dark_gray
team modify Team1 seeFriendlyInvisibles true
team modify Team1 collisionRule pushOtherTeams
team modify Team1 friendlyFire true

team add Team2
team modify Team2 prefix "Team 2 | "
team modify Team2 color gray
team modify Team2 seeFriendlyInvisibles true
team modify Team2 collisionRule pushOtherTeams
team modify Team2 friendlyFire true

team add Red "Team Red 🔥"
team modify Red prefix "🔥 | "
team modify Red color red
team modify Red seeFriendlyInvisibles true
team modify Red collisionRule pushOtherTeams
team modify Red friendlyFire false

team add Magenta "Team Magenta 🐖"
team modify Magenta prefix "🐖 | "
team modify Magenta color light_purple
team modify Magenta seeFriendlyInvisibles true
team modify Magenta collisionRule pushOtherTeams
team modify Magenta friendlyFire false

team add Lime "Team Lime 🐲"
team modify Lime prefix "🐲 | "
team modify Lime color green
team modify Lime seeFriendlyInvisibles true
team modify Lime collisionRule pushOtherTeams
team modify Lime friendlyFire false

team add Aqua "Team Aqua 🐟"
team modify Aqua prefix "🐟 | "
team modify Aqua color aqua
team modify Aqua seeFriendlyInvisibles true
team modify Aqua collisionRule pushOtherTeams
team modify Aqua friendlyFire false

team add Gold "Team Gold 🐒"
team modify Gold prefix "🐒 | "
team modify Gold color gold
team modify Gold seeFriendlyInvisibles true
team modify Gold collisionRule pushOtherTeams
team modify Gold friendlyFire false

team add Yellow "Team Yellow 🍪"
team modify Yellow prefix "🍪 | "
team modify Yellow color yellow
team modify Yellow seeFriendlyInvisibles true
team modify Yellow collisionRule pushOtherTeams
team modify Yellow friendlyFire false



team add objRed
team modify objRed color red
team add objAqua
team modify objAqua color aqua
team add objBlue
team modify objBlue color blue
team add objDarkAqua
team modify objDarkAqua color dark_aqua
team add objDarkBlue
team modify objDarkBlue color dark_blue
team add objDarkGray
team modify objDarkGray color dark_gray
team add objDarkGreen
team modify objDarkGreen color dark_green
team add objDarkPurple
team modify objDarkPurple color dark_purple
team add objDarkRed
team modify objDarkRed color dark_red
team add objGold
team modify objGold color gold
team add objGray
team modify objGray color gray
team add objGreen
team modify objGreen color green
team add objLightPurple
team modify objLightPurple color light_purple
team add objWhite
team modify objWhite color white
team add objYellow
team modify objYellow color yellow

#scoreboard objectives remove MainReady
#scoreboard objectives remove MainTeam1
#scoreboard objectives remove MainTeam2
scoreboard objectives remove MainRed
scoreboard objectives remove MainMag
scoreboard objectives remove MainAqu
scoreboard objectives remove MainLim
scoreboard objectives remove MainGol
scoreboard objectives remove MainYel

scoreboard objectives add MainReady dummy [{"text":" BATTLE ","bold":true,"color":"#FF5500"},{"text":"| ","color":"white"},{"text":"✔","color":"dark_green"}]
scoreboard objectives add MainTeam1 dummy [{"text":" BATTLE ","bold":true,"color":"#FF5500"},{"text":"| ","color":"white"},{"text":"✔","color":"dark_green"}]
scoreboard objectives add MainTeam2 dummy [{"text":" BATTLE ","bold":true,"color":"#FF5500"},{"text":"| ","color":"white"},{"text":"✔","color":"dark_green"}]
scoreboard objectives add MainRed dummy [{"text":" BATTLE ","bold":true,"color":"#FF5500"},{"text":"| ","color":"white"},{"text":"🔥","color":"red"}]
scoreboard objectives add MainMag dummy [{"text":" BATTLE ","bold":true,"color":"#FF5500"},{"text":"| ","color":"white"},{"text":"🐖","color":"light_purple"}]
scoreboard objectives add MainAqu dummy [{"text":" BATTLE ","bold":true,"color":"#FF5500"},{"text":"| ","color":"white"},{"text":"🐟","color":"aqua"}]
scoreboard objectives add MainLim dummy [{"text":" BATTLE ","bold":true,"color":"#FF5500"},{"text":"| ","color":"white"},{"text":"🐲","color":"green"}]
scoreboard objectives add MainGol dummy [{"text":" BATTLE ","bold":true,"color":"#FF5500"},{"text":"| ","color":"white"},{"text":"🐒","color":"gold"}]
scoreboard objectives add MainYel dummy [{"text":" BATTLE ","bold":true,"color":"#FF5500"},{"text":"| ","color":"white"},{"text":"🍪","color":"yellow"}]

scoreboard objectives setdisplay sidebar.team.dark_green MainReady
scoreboard objectives setdisplay sidebar.team.dark_gray MainTeam1
scoreboard objectives setdisplay sidebar.team.gray MainTeam2
scoreboard objectives setdisplay sidebar.team.red MainRed
scoreboard objectives setdisplay sidebar.team.light_purple MainMag
scoreboard objectives setdisplay sidebar.team.aqua MainAqu
scoreboard objectives setdisplay sidebar.team.green MainLim
scoreboard objectives setdisplay sidebar.team.gold MainGol
scoreboard objectives setdisplay sidebar.team.yellow MainYel

scoreboard objectives add velocity dummy

scoreboard players set 𝐒𝐄𝐓𝐓𝐈𝐍𝐆𝐒｜𝐁𝐀𝐓𝐓𝐋𝐄 MainReady 13
#scoreboard players set 𝐑𝐎𝐔𝐍𝐃｜𝐀𝐔𝐓𝐎 MainReady 10
#scoreboard players set 𝐂𝐄𝐍𝐓𝐄𝐑｜𝐀𝐔𝐓𝐎 MainReady 9
scoreboard players set ╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴ MainReady 8
scoreboard players set 𝐌𝐎𝐃𝐈𝐅𝐈𝐄𝐑𝐒: MainReady 7
#scoreboard players set 𝐏𝐎𝐖𝐄𝐑𝐔𝐏𝐒｜✔ MainReady 6
#scoreboard players set 𝐄𝐕𝐄𝐍𝐓｜✔ MainReady 5
#scoreboard players set 𝐃𝐎𝐔𝐁𝐋𝐄｜❌ MainReady 4
#scoreboard players set 𝐇𝐀𝐋𝐅｜❌ MainReady 3
scoreboard players set ╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌ MainReady 2
#scoreboard players set 𝐐𝐔𝐈𝐂𝐊𝐌𝐀𝐓𝐂𝐇｜❌ MainReady 1

scoreboard players set 𝐒𝐄𝐓𝐓𝐈𝐍𝐆𝐒｜𝐁𝐀𝐓𝐓𝐋𝐄 MainTeam1 13
#scoreboard players set 𝐑𝐎𝐔𝐍𝐃｜𝐀𝐔𝐓𝐎 MainTeam1 10
#scoreboard players set 𝐂𝐄𝐍𝐓𝐄𝐑｜𝐀𝐔𝐓𝐎 MainTeam1 9
scoreboard players set ╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴ MainTeam1 8
scoreboard players set 𝐌𝐎𝐃𝐈𝐅𝐈𝐄𝐑𝐒: MainTeam1 7
#scoreboard players set 𝐏𝐎𝐖𝐄𝐑𝐔𝐏𝐒｜✔ MainTeam1 6
#scoreboard players set 𝐄𝐕𝐄𝐍𝐓｜✔ MainTeam1 5
#scoreboard players set 𝐃𝐎𝐔𝐁𝐋𝐄｜❌ MainTeam1 4
#scoreboard players set 𝐇𝐀𝐋𝐅｜❌ MainTeam1 3
scoreboard players set ╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌ MainTeam1 2
#scoreboard players set 𝐐𝐔𝐈𝐂𝐊𝐌𝐀𝐓𝐂𝐇｜❌ MainTeam1 1

scoreboard players set 𝐒𝐄𝐓𝐓𝐈𝐍𝐆𝐒｜𝐁𝐀𝐓𝐓𝐋𝐄 MainTeam2 13
#scoreboard players set 𝐑𝐎𝐔𝐍𝐃｜𝐀𝐔𝐓𝐎 MainTeam2 10
#scoreboard players set 𝐂𝐄𝐍𝐓𝐄𝐑｜𝐀𝐔𝐓𝐎 MainTeam2 9
scoreboard players set ╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴ MainTeam2 8
scoreboard players set 𝐌𝐎𝐃𝐈𝐅𝐈𝐄𝐑𝐒: MainTeam2 7
#scoreboard players set 𝐏𝐎𝐖𝐄𝐑𝐔𝐏𝐒｜✔ MainTeam2 6
#scoreboard players set 𝐄𝐕𝐄𝐍𝐓｜✔ MainTeam2 5
#scoreboard players set 𝐃𝐎𝐔𝐁𝐋𝐄｜❌ MainTeam2 4
#scoreboard players set 𝐇𝐀𝐋𝐅｜❌ MainTeam2 3
scoreboard players set ╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌ MainTeam2 2
#scoreboard players set 𝐐𝐔𝐈𝐂𝐊𝐌𝐀𝐓𝐂𝐇｜❌ MainTeam2 1

scoreboard players set 𝐈𝐍𝐅𝐎｜𝐁𝐀𝐓𝐓𝐋𝐄 MainRed 12
#scoreboard players set 𝐑𝐎𝐔𝐍𝐃𝐒｜? MainRed 10
scoreboard players set ╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶ MainRed 9
scoreboard players set 𝐁𝐀𝐓𝐓𝐋𝐄𝐒𝐓𝐀𝐑𝐒｜✯: MainRed 8
scoreboard players set 𝐑𝐄𝐃｜𝟎✯ MainRed 7
#scoreboard players set 𝐍𝐎𝐍𝐄｜𝟎✯ MainRed 6
scoreboard players set ╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴ MainRed 5
scoreboard players set 𝐀𝐋𝐈𝐕𝐄: MainRed 4
scoreboard players set 𝐑𝐄𝐃｜𝟎 MainRed 3
#scoreboard players set 𝐍𝐎𝐍𝐄｜𝟎 MainRed 2
scoreboard players set ╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌ MainRed 1
scoreboard players set 𝐓𝐈𝐌𝐄:｜𝐍𝐎𝐍𝐄 MainRed 0

scoreboard players set 𝐈𝐍𝐅𝐎｜𝐁𝐀𝐓𝐓𝐋𝐄 MainMag 12
#scoreboard players set 𝐌𝐀𝐏｜? MainMag 11
scoreboard players set 𝐑𝐎𝐔𝐍𝐃𝐒｜? MainMag 10
scoreboard players set ╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶ MainMag 9
scoreboard players set 𝐁𝐀𝐓𝐓𝐋𝐄𝐒𝐓𝐀𝐑𝐒｜✯: MainMag 8
scoreboard players set 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟎✯ MainMag 7
#scoreboard players set 𝐍𝐎𝐍𝐄｜𝟎✯ MainMag 6
scoreboard players set ╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴ MainMag 5
scoreboard players set 𝐀𝐋𝐈𝐕𝐄: MainMag 4
scoreboard players set 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟎 MainMag 3
#scoreboard players set 𝐍𝐎𝐍𝐄｜𝟎 MainMag 2
scoreboard players set ╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌ MainMag 1
scoreboard players set 𝐓𝐈𝐌𝐄:｜𝐍𝐎𝐍𝐄 MainMag 0

scoreboard players set 𝐈𝐍𝐅𝐎｜𝐁𝐀𝐓𝐓𝐋𝐄 MainAqu 12
#scoreboard players set 𝐌𝐀𝐏｜? MainAqu 11
scoreboard players set 𝐑𝐎𝐔𝐍𝐃𝐒｜? MainAqu 10
scoreboard players set ╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶ MainAqu 9
scoreboard players set 𝐁𝐀𝐓𝐓𝐋𝐄𝐒𝐓𝐀𝐑𝐒｜✯: MainAqu 8
scoreboard players set 𝐀𝐐𝐔𝐀｜𝟎✯ MainAqu 7
#scoreboard players set 𝐍𝐎𝐍𝐄｜𝟎✯ MainAqu 6
scoreboard players set ╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴ MainAqu 5
scoreboard players set 𝐀𝐋𝐈𝐕𝐄: MainAqu 4
scoreboard players set 𝐀𝐐𝐔𝐀｜𝟎 MainAqu 3
#scoreboard players set 𝐍𝐎𝐍𝐄｜𝟎 MainAqu 2
scoreboard players set ╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌ MainAqu 1
scoreboard players set 𝐓𝐈𝐌𝐄:｜𝐍𝐎𝐍𝐄 MainAqu 0

scoreboard players set 𝐈𝐍𝐅𝐎｜𝐁𝐀𝐓𝐓𝐋𝐄 MainLim 12
#scoreboard players set 𝐌𝐀𝐏｜? MainLim 11
scoreboard players set 𝐑𝐎𝐔𝐍𝐃𝐒｜? MainLim 10
scoreboard players set ╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶ MainLim 9
scoreboard players set 𝐁𝐀𝐓𝐓𝐋𝐄𝐒𝐓𝐀𝐑𝐒｜✯: MainLim 8
scoreboard players set 𝐋𝐈𝐌𝐄｜𝟎✯ MainLim 7
#scoreboard players set 𝐍𝐎𝐍𝐄｜𝟎✯ MainLim 6
scoreboard players set ╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴ MainLim 5
scoreboard players set 𝐀𝐋𝐈𝐕𝐄: MainLim 4
scoreboard players set 𝐋𝐈𝐌𝐄｜𝟎 MainLim 3
scoreboard players set 𝐍𝐎𝐍𝐄｜𝟎 MainLim 2
scoreboard players set ╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌ MainLim 1
scoreboard players set 𝐓𝐈𝐌𝐄:｜𝐍𝐎𝐍𝐄 MainLim 0

scoreboard players set 𝐈𝐍𝐅𝐎｜𝐁𝐀𝐓𝐓𝐋𝐄 MainGol 12
#scoreboard players set 𝐌𝐀𝐏｜? MainGol 11
scoreboard players set 𝐑𝐎𝐔𝐍𝐃𝐒｜? MainGol 10
scoreboard players set ╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶ MainGol 9
scoreboard players set 𝐁𝐀𝐓𝐓𝐋𝐄𝐒𝐓𝐀𝐑𝐒｜✯: MainGol 8
scoreboard players set 𝐆𝐎𝐋𝐃｜𝟎✯ MainGol 7
#scoreboard players set 𝐍𝐎𝐍𝐄｜𝟎✯ MainGol 6
scoreboard players set ╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴ MainGol 5
scoreboard players set 𝐀𝐋𝐈𝐕𝐄: MainGol 4
scoreboard players set 𝐆𝐎𝐋𝐃｜𝟎 MainGol 3
#scoreboard players set 𝐍𝐎𝐍𝐄｜𝟎 MainGol 2
scoreboard players set ╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌ MainGol 1
scoreboard players set 𝐓𝐈𝐌𝐄:｜𝐍𝐎𝐍𝐄 MainGol 0

scoreboard players set 𝐈𝐍𝐅𝐎｜𝐁𝐀𝐓𝐓𝐋𝐄 MainYel 12
#scoreboard players set 𝐌𝐀𝐏｜? MainYel 11
scoreboard players set 𝐑𝐎𝐔𝐍𝐃𝐒｜? MainYel 10
scoreboard players set ╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶╶ MainYel 9
scoreboard players set 𝐁𝐀𝐓𝐓𝐋𝐄𝐒𝐓𝐀𝐑𝐒｜✯: MainYel 8
scoreboard players set 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟎✯ MainYel 7
#scoreboard players set 𝐍𝐎𝐍𝐄｜𝟎✯ MainYel 6
scoreboard players set ╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴╴ MainYel 5
scoreboard players set 𝐀𝐋𝐈𝐕𝐄: MainYel 4
scoreboard players set 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟎 MainYel 3
#scoreboard players set 𝐍𝐎𝐍𝐄｜𝟎 MainYel 2
scoreboard players set ╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌╌ MainYel 1
scoreboard players set 𝐓𝐈𝐌𝐄:｜𝐍𝐎𝐍𝐄 MainYel 0

team join objRed 𝐑𝐄𝐃｜𝟎
team join objRed 𝐑𝐄𝐃｜𝟏
team join objRed 𝐑𝐄𝐃｜𝟐
team join objRed 𝐑𝐄𝐃｜𝟑
team join objRed 𝐑𝐄𝐃｜𝟒
team join objRed 𝐑𝐄𝐃｜𝟓+

team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟎
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟏
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟐
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟑
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟒
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟓+

team join objAqua 𝐀𝐐𝐔𝐀｜𝟎
team join objAqua 𝐀𝐐𝐔𝐀｜𝟏
team join objAqua 𝐀𝐐𝐔𝐀｜𝟐
team join objAqua 𝐀𝐐𝐔𝐀｜𝟑
team join objAqua 𝐀𝐐𝐔𝐀｜𝟒
team join objAqua 𝐀𝐐𝐔𝐀｜𝟓+

team join objGreen 𝐋𝐈𝐌𝐄｜𝟎
team join objGreen 𝐋𝐈𝐌𝐄｜𝟏
team join objGreen 𝐋𝐈𝐌𝐄｜𝟐
team join objGreen 𝐋𝐈𝐌𝐄｜𝟑
team join objGreen 𝐋𝐈𝐌𝐄｜𝟒
team join objGreen 𝐋𝐈𝐌𝐄｜𝟓+

team join objGold 𝐆𝐎𝐋𝐃｜𝟎
team join objGold 𝐆𝐎𝐋𝐃｜𝟏
team join objGold 𝐆𝐎𝐋𝐃｜𝟐
team join objGold 𝐆𝐎𝐋𝐃｜𝟑
team join objGold 𝐆𝐎𝐋𝐃｜𝟒
team join objGold 𝐆𝐎𝐋𝐃｜𝟓+

team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟎
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟏
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟐
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟑
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟒
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟓+

team join objGreen 𝐀𝐋𝐈𝐕𝐄:

team join objRed 𝐑𝐄𝐃｜𝟎✯
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟎✯
team join objAqua 𝐀𝐐𝐔𝐀｜𝟎✯
team join objGreen 𝐋𝐈𝐌𝐄｜𝟎✯
team join objGold 𝐆𝐎𝐋𝐃｜𝟎✯
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟎✯

team join objRed 𝐑𝐄𝐃｜𝟓✯
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟓✯
team join objAqua 𝐀𝐐𝐔𝐀｜𝟓✯
team join objGreen 𝐋𝐈𝐌𝐄｜𝟓✯
team join objGold 𝐆𝐎𝐋𝐃｜𝟓✯
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟓✯

team join objRed 𝐑𝐄𝐃｜𝟏𝟎✯
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟏𝟎✯
team join objAqua 𝐀𝐐𝐔𝐀｜𝟏𝟎✯
team join objGreen 𝐋𝐈𝐌𝐄｜𝟏𝟎✯
team join objGold 𝐆𝐎𝐋𝐃｜𝟏𝟎✯
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟏𝟎✯

team join objRed 𝐑𝐄𝐃｜𝟏𝟓✯
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟏𝟓✯
team join objAqua 𝐀𝐐𝐔𝐀｜𝟏𝟓✯
team join objGreen 𝐋𝐈𝐌𝐄｜𝟏𝟓✯
team join objGold 𝐆𝐎𝐋𝐃｜𝟏𝟓✯
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟏𝟓✯

team join objRed 𝐑𝐄𝐃｜𝟐𝟎✯
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟐𝟎✯
team join objAqua 𝐀𝐐𝐔𝐀｜𝟐𝟎✯
team join objGreen 𝐋𝐈𝐌𝐄｜𝟐𝟎✯
team join objGold 𝐆𝐎𝐋𝐃｜𝟐𝟎✯
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟐𝟎✯

team join objRed 𝐑𝐄𝐃｜𝟐𝟓✯
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟐𝟓✯
team join objAqua 𝐀𝐐𝐔𝐀｜𝟐𝟓✯
team join objGreen 𝐋𝐈𝐌𝐄｜𝟐𝟓✯
team join objGold 𝐆𝐎𝐋𝐃｜𝟐𝟓✯
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟐𝟓✯

team join objRed 𝐑𝐄𝐃｜𝟑𝟎✯
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟑𝟎✯
team join objAqua 𝐀𝐐𝐔𝐀｜𝟑𝟎✯
team join objGreen 𝐋𝐈𝐌𝐄｜𝟑𝟎✯
team join objGold 𝐆𝐎𝐋𝐃｜𝟑𝟎✯
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟑𝟎✯

team join objRed 𝐑𝐄𝐃｜𝟑𝟓✯
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟑𝟓✯
team join objAqua 𝐀𝐐𝐔𝐀｜𝟑𝟓✯
team join objGreen 𝐋𝐈𝐌𝐄｜𝟑𝟓✯
team join objGold 𝐆𝐎𝐋𝐃｜𝟑𝟓✯
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟑𝟓✯

team join objRed 𝐑𝐄𝐃｜𝟒𝟎✯
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟒𝟎✯
team join objAqua 𝐀𝐐𝐔𝐀｜𝟒𝟎✯
team join objGreen 𝐋𝐈𝐌𝐄｜𝟒𝟎✯
team join objGold 𝐆𝐎𝐋𝐃｜𝟒𝟎✯
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟒𝟎✯

team join objRed 𝐑𝐄𝐃｜𝟒𝟓✯
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟒𝟓✯
team join objAqua 𝐀𝐐𝐔𝐀｜𝟒𝟓✯
team join objGreen 𝐋𝐈𝐌𝐄｜𝟒𝟓✯
team join objGold 𝐆𝐎𝐋𝐃｜𝟒𝟓✯
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟒𝟓✯

team join objRed 𝐑𝐄𝐃｜𝟓𝟎✯
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟓𝟎✯
team join objAqua 𝐀𝐐𝐔𝐀｜𝟓𝟎✯
team join objGreen 𝐋𝐈𝐌𝐄｜𝟓𝟎✯
team join objGold 𝐆𝐎𝐋𝐃｜𝟓𝟎✯
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟓𝟎✯

team join objRed 𝐑𝐄𝐃｜𝟓𝟓✯
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟓𝟓✯
team join objAqua 𝐀𝐐𝐔𝐀｜𝟓𝟓✯
team join objGreen 𝐋𝐈𝐌𝐄｜𝟓𝟓✯
team join objGold 𝐆𝐎𝐋𝐃｜𝟓𝟓✯
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟓𝟓✯

team join objRed 𝐑𝐄𝐃｜𝟔𝟎✯
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟔𝟎✯
team join objAqua 𝐀𝐐𝐔𝐀｜𝟔𝟎✯
team join objGreen 𝐋𝐈𝐌𝐄｜𝟔𝟎✯
team join objGold 𝐆𝐎𝐋𝐃｜𝟔𝟎✯
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟔𝟎✯

team join objRed 𝐑𝐄𝐃｜𝟔𝟓✯
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟔𝟓✯
team join objAqua 𝐀𝐐𝐔𝐀｜𝟔𝟓✯
team join objGreen 𝐋𝐈𝐌𝐄｜𝟔𝟓✯
team join objGold 𝐆𝐎𝐋𝐃｜𝟔𝟓✯
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟔𝟓✯

team join objRed 𝐑𝐄𝐃｜𝟕𝟎✯
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟕𝟎✯
team join objAqua 𝐀𝐐𝐔𝐀｜𝟕𝟎✯
team join objGreen 𝐋𝐈𝐌𝐄｜𝟕𝟎✯
team join objGold 𝐆𝐎𝐋𝐃｜𝟕𝟎✯
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟕𝟎✯

team join objRed 𝐑𝐄𝐃｜𝟕𝟓✯
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟕𝟓✯
team join objAqua 𝐀𝐐𝐔𝐀｜𝟕𝟓✯
team join objGreen 𝐋𝐈𝐌𝐄｜𝟕𝟓✯
team join objGold 𝐆𝐎𝐋𝐃｜𝟕𝟓✯
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟕𝟓✯

team join objRed 𝐑𝐄𝐃｜𝟖𝟎✯
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟖𝟎✯
team join objAqua 𝐀𝐐𝐔𝐀｜𝟖𝟎✯
team join objGreen 𝐋𝐈𝐌𝐄｜𝟖𝟎✯
team join objGold 𝐆𝐎𝐋𝐃｜𝟖𝟎✯
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟖𝟎✯

team join objRed 𝐑𝐄𝐃｜𝟖𝟓✯
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟖𝟓✯
team join objAqua 𝐀𝐐𝐔𝐀｜𝟖𝟓✯
team join objGreen 𝐋𝐈𝐌𝐄｜𝟖𝟓✯
team join objGold 𝐆𝐎𝐋𝐃｜𝟖𝟓✯
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟖𝟓✯

team join objRed 𝐑𝐄𝐃｜𝟗𝟎✯
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟗𝟎✯
team join objAqua 𝐀𝐐𝐔𝐀｜𝟗𝟎✯
team join objGreen 𝐋𝐈𝐌𝐄｜𝟗𝟎✯
team join objGold 𝐆𝐎𝐋𝐃｜𝟗𝟎✯
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟗𝟎✯

team join objRed 𝐑𝐄𝐃｜𝟗𝟓✯
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟗𝟓✯
team join objAqua 𝐀𝐐𝐔𝐀｜𝟗𝟓✯
team join objGreen 𝐋𝐈𝐌𝐄｜𝟗𝟓✯
team join objGold 𝐆𝐎𝐋𝐃｜𝟗𝟓✯
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟗𝟓✯

team join objRed 𝐑𝐄𝐃｜𝟏𝟎𝟎✯
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟏𝟎𝟎✯
team join objAqua 𝐀𝐐𝐔𝐀｜𝟏𝟎𝟎✯
team join objGreen 𝐋𝐈𝐌𝐄｜𝟏𝟎𝟎✯
team join objGold 𝐆𝐎𝐋𝐃｜𝟏𝟎𝟎✯
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟏𝟎𝟎✯

team join objRed 𝐑𝐄𝐃｜𝟏𝟎𝟓✯
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀𝟏｜𝟏𝟎𝟓✯
team join objAqua 𝐀𝐐𝐔𝐀｜𝟏𝟎𝟓✯
team join objGreen 𝐋𝐈𝐌𝐄｜𝟏𝟎𝟓✯
team join objGold 𝐆𝐎𝐋𝐃｜𝟏𝟎𝟓✯
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟏𝟎𝟓✯

team join objRed 𝐑𝐄𝐃｜𝟏𝟏𝟎✯
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟏𝟏𝟎✯
team join objAqua 𝐀𝐐𝐔𝐀｜𝟏𝟏𝟎✯
team join objGreen 𝐋𝐈𝐌𝐄｜𝟏𝟏𝟎✯
team join objGold 𝐆𝐎𝐋𝐃｜𝟏𝟏𝟎✯
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟏𝟏𝟎✯

team join objRed 𝐑𝐄𝐃｜𝟏𝟏𝟓✯
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟏𝟏𝟓✯
team join objAqua 𝐀𝐐𝐔𝐀｜𝟏𝟏𝟓✯
team join objGreen 𝐋𝐈𝐌𝐄｜𝟏𝟏𝟓✯
team join objGold 𝐆𝐎𝐋𝐃｜𝟏𝟏𝟓✯
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟏𝟏𝟓✯

team join objRed 𝐑𝐄𝐃｜𝟏𝟐𝟎✯
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟏𝟐𝟎✯
team join objAqua 𝐀𝐐𝐔𝐀｜𝟏𝟐𝟎✯
team join objGreen 𝐋𝐈𝐌𝐄｜𝟏𝟐𝟎✯
team join objGold 𝐆𝐎𝐋𝐃｜𝟏𝟐𝟎✯
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟏𝟐𝟎✯

team join objRed 𝐑𝐄𝐃｜𝟏𝟐𝟓✯
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟏𝟐𝟓✯
team join objAqua 𝐀𝐐𝐔𝐀｜𝟏𝟐𝟓✯
team join objGreen 𝐋𝐈𝐌𝐄｜𝟏𝟐𝟓✯
team join objGold 𝐆𝐎𝐋𝐃｜𝟏𝟐𝟓✯
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟏𝟐𝟓✯

team join objRed 𝐑𝐄𝐃｜𝟏𝟑𝟎✯
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟏𝟑𝟎✯
team join objAqua 𝐀𝐐𝐔𝐀｜𝟏𝟑𝟎✯
team join objGreen 𝐋𝐈𝐌𝐄｜𝟏𝟑𝟎✯
team join objGold 𝐆𝐎𝐋𝐃｜𝟏𝟑𝟎✯
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟏𝟑𝟎✯

team join objRed 𝐑𝐄𝐃｜𝟏𝟑𝟓✯
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟏𝟑𝟓✯
team join objAqua 𝐀𝐐𝐔𝐀｜𝟏𝟑𝟓✯
team join objGreen 𝐋𝐈𝐌𝐄｜𝟏𝟑𝟓✯
team join objGold 𝐆𝐎𝐋𝐃｜𝟏𝟑𝟓✯
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟏𝟑𝟓✯

team join objRed 𝐑𝐄𝐃｜𝟏𝟒𝟎✯
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟏𝟒𝟎✯
team join objAqua 𝐀𝐐𝐔𝐀｜𝟏𝟒𝟎✯
team join objGreen 𝐋𝐈𝐌𝐄｜𝟏𝟒𝟎✯
team join objGold 𝐆𝐎𝐋𝐃｜𝟏𝟒𝟎✯
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟏𝟒𝟎✯

team join objRed 𝐑𝐄𝐃｜𝟏𝟒𝟓✯
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟏𝟒𝟓✯
team join objAqua 𝐀𝐐𝐔𝐀｜𝟏𝟒𝟓✯
team join objGreen 𝐋𝐈𝐌𝐄｜𝟏𝟒𝟓✯
team join objGold 𝐆𝐎𝐋𝐃｜𝟏𝟒𝟓✯
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟏𝟒𝟓✯

team join objRed 𝐑𝐄𝐃｜𝟏𝟓𝟎✯
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟏𝟓𝟎✯
team join objAqua 𝐀𝐐𝐔𝐀｜𝟏𝟓𝟎✯
team join objGreen 𝐋𝐈𝐌𝐄｜𝟏𝟓𝟎✯
team join objGold 𝐆𝐎𝐋𝐃｜𝟏𝟓𝟎✯
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟏𝟓𝟎✯

team join objRed 𝐑𝐄𝐃｜𝟏𝟓𝟓✯
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟏𝟓𝟓✯
team join objAqua 𝐀𝐐𝐔𝐀｜𝟏𝟓𝟓✯
team join objGreen 𝐋𝐈𝐌𝐄｜𝟏𝟓𝟓✯
team join objGold 𝐆𝐎𝐋𝐃｜𝟏𝟓𝟓✯
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟏𝟓𝟓✯

team join objRed 𝐑𝐄𝐃｜𝟏𝟔𝟎✯
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟏𝟔𝟎✯
team join objAqua 𝐀𝐐𝐔𝐀｜𝟏𝟔𝟎✯
team join objGreen 𝐋𝐈𝐌𝐄｜𝟏𝟔𝟎✯
team join objGold 𝐆𝐎𝐋𝐃｜𝟏𝟔𝟎✯
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟏𝟔𝟎✯

team join objRed 𝐑𝐄𝐃｜𝟏𝟔𝟓✯
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟏𝟔𝟓✯
team join objAqua 𝐀𝐐𝐔𝐀｜𝟏𝟔𝟓✯
team join objGreen 𝐋𝐈𝐌𝐄｜𝟏𝟔𝟓✯
team join objGold 𝐆𝐎𝐋𝐃｜𝟏𝟔𝟓✯
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟏𝟔𝟓✯

team join objRed 𝐑𝐄𝐃｜𝟏𝟕𝟎✯
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟏𝟕𝟎✯
team join objAqua 𝐀𝐐𝐔𝐀｜𝟏𝟕𝟎✯
team join objGreen 𝐋𝐈𝐌𝐄｜𝟏𝟕𝟎✯
team join objGold 𝐆𝐎𝐋𝐃｜𝟏𝟕𝟎✯
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟏𝟕𝟎✯

team join objRed 𝐑𝐄𝐃｜𝟏𝟕𝟓✯
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟏𝟕𝟓✯
team join objAqua 𝐀𝐐𝐔𝐀｜𝟏𝟕𝟓✯
team join objGreen 𝐋𝐈𝐌𝐄｜𝟏𝟕𝟓✯
team join objGold 𝐆𝐎𝐋𝐃｜𝟏𝟕𝟓✯
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟏𝟕𝟓✯

team join objRed 𝐑𝐄𝐃｜𝟏𝟖𝟎✯
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟏𝟖𝟎✯
team join objAqua 𝐀𝐐𝐔𝐀｜𝟏𝟖𝟎✯
team join objGreen 𝐋𝐈𝐌𝐄｜𝟏𝟖𝟎✯
team join objGold 𝐆𝐎𝐋𝐃｜𝟏𝟖𝟎✯
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟏𝟖𝟎✯

team join objRed 𝐑𝐄𝐃｜𝟏𝟖𝟓✯
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟏𝟖𝟓✯
team join objAqua 𝐀𝐐𝐔𝐀｜𝟏𝟖𝟓✯
team join objGreen 𝐋𝐈𝐌𝐄｜𝟏𝟖𝟓✯
team join objGold 𝐆𝐎𝐋𝐃｜𝟏𝟖𝟓✯
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟏𝟖𝟓✯

team join objRed 𝐑𝐄𝐃｜𝟏𝟗𝟎✯
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟏𝟗𝟎✯
team join objAqua 𝐀𝐐𝐔𝐀｜𝟏𝟗𝟎✯
team join objGreen 𝐋𝐈𝐌𝐄｜𝟏𝟗𝟎✯
team join objGold 𝐆𝐎𝐋𝐃｜𝟏𝟗𝟎✯
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟏𝟗𝟎✯

team join objRed 𝐑𝐄𝐃｜𝟏𝟗𝟓✯
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟏𝟗𝟓✯
team join objAqua 𝐀𝐐𝐔𝐀｜𝟏𝟗𝟓✯
team join objGreen 𝐋𝐈𝐌𝐄｜𝟏𝟗𝟓✯
team join objGold 𝐆𝐎𝐋𝐃｜𝟏𝟗𝟓✯
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟏𝟗𝟓✯

team join objRed 𝐑𝐄𝐃｜𝟐𝟎𝟎✯
team join objLightPurple 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟐𝟎𝟎✯
team join objAqua 𝐀𝐐𝐔𝐀｜𝟐𝟎𝟎✯
team join objGreen 𝐋𝐈𝐌𝐄｜𝟐𝟎𝟎✯
team join objGold 𝐆𝐎𝐋𝐃｜𝟐𝟎𝟎✯
team join objYellow 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟐𝟎𝟎✯

scoreboard players reset 𝐑𝐄𝐃｜𝟎✯
scoreboard players reset 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟎✯
scoreboard players reset 𝐀𝐐𝐔𝐀｜𝟎✯
scoreboard players reset 𝐋𝐈𝐌𝐄｜𝟎✯
scoreboard players reset 𝐆𝐎𝐋𝐃｜𝟎✯
scoreboard players reset 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟎✯

scoreboard players reset 𝐑𝐄𝐃｜𝟓✯
scoreboard players reset 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟓✯
scoreboard players reset 𝐀𝐐𝐔𝐀｜𝟓✯
scoreboard players reset 𝐋𝐈𝐌𝐄｜𝟓✯
scoreboard players reset 𝐆𝐎𝐋𝐃｜𝟓✯
scoreboard players reset 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟓✯

scoreboard players reset 𝐑𝐄𝐃｜𝟏𝟎✯
scoreboard players reset 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟏𝟎✯
scoreboard players reset 𝐀𝐐𝐔𝐀｜𝟏𝟎✯
scoreboard players reset 𝐋𝐈𝐌𝐄｜𝟏𝟎✯
scoreboard players reset 𝐆𝐎𝐋𝐃｜𝟏𝟎✯
scoreboard players reset 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟏𝟎✯

scoreboard players reset 𝐑𝐄𝐃｜𝟏𝟓✯
scoreboard players reset 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟏𝟓✯
scoreboard players reset 𝐀𝐐𝐔𝐀｜𝟏𝟓✯
scoreboard players reset 𝐋𝐈𝐌𝐄｜𝟏𝟓✯
scoreboard players reset 𝐆𝐎𝐋𝐃｜𝟏𝟓✯
scoreboard players reset 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟏𝟓✯

scoreboard players reset 𝐑𝐄𝐃｜𝟐𝟎✯
scoreboard players reset 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟐𝟎✯
scoreboard players reset 𝐀𝐐𝐔𝐀｜𝟐𝟎✯
scoreboard players reset 𝐋𝐈𝐌𝐄｜𝟐𝟎✯
scoreboard players reset 𝐆𝐎𝐋𝐃｜𝟐𝟎✯
scoreboard players reset 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟐𝟎✯

scoreboard players reset 𝐑𝐄𝐃｜𝟐𝟓✯
scoreboard players reset 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟐𝟓✯
scoreboard players reset 𝐀𝐐𝐔𝐀｜𝟐𝟓✯
scoreboard players reset 𝐋𝐈𝐌𝐄｜𝟐𝟓✯
scoreboard players reset 𝐆𝐎𝐋𝐃｜𝟐𝟓✯
scoreboard players reset 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟐𝟓✯

scoreboard players reset 𝐑𝐄𝐃｜𝟑𝟎✯
scoreboard players reset 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟑𝟎✯
scoreboard players reset 𝐀𝐐𝐔𝐀｜𝟑𝟎✯
scoreboard players reset 𝐋𝐈𝐌𝐄｜𝟑𝟎✯
scoreboard players reset 𝐆𝐎𝐋𝐃｜𝟑𝟎✯
scoreboard players reset 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟑𝟎✯

scoreboard players reset 𝐑𝐄𝐃｜𝟑𝟓✯
scoreboard players reset 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟑𝟓✯
scoreboard players reset 𝐀𝐐𝐔𝐀｜𝟑𝟓✯
scoreboard players reset 𝐋𝐈𝐌𝐄｜𝟑𝟓✯
scoreboard players reset 𝐆𝐎𝐋𝐃｜𝟑𝟓✯
scoreboard players reset 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟑𝟓✯

scoreboard players reset 𝐑𝐄𝐃｜𝟒𝟎✯
scoreboard players reset 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟒𝟎✯
scoreboard players reset 𝐀𝐐𝐔𝐀｜𝟒𝟎✯
scoreboard players reset 𝐋𝐈𝐌𝐄｜𝟒𝟎✯
scoreboard players reset 𝐆𝐎𝐋𝐃｜𝟒𝟎✯
scoreboard players reset 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟒𝟎✯

scoreboard players reset 𝐑𝐄𝐃｜𝟒𝟓✯
scoreboard players reset 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟒𝟓✯
scoreboard players reset 𝐀𝐐𝐔𝐀｜𝟒𝟓✯
scoreboard players reset 𝐋𝐈𝐌𝐄｜𝟒𝟓✯
scoreboard players reset 𝐆𝐎𝐋𝐃｜𝟒𝟓✯
scoreboard players reset 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟒𝟓✯

scoreboard players reset 𝐑𝐄𝐃｜𝟓𝟎✯
scoreboard players reset 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟓𝟎✯
scoreboard players reset 𝐀𝐐𝐔𝐀｜𝟓𝟎✯
scoreboard players reset 𝐋𝐈𝐌𝐄｜𝟓𝟎✯
scoreboard players reset 𝐆𝐎𝐋𝐃｜𝟓𝟎✯
scoreboard players reset 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟓𝟎✯

scoreboard players reset 𝐑𝐄𝐃｜𝟓𝟓✯
scoreboard players reset 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟓𝟓✯
scoreboard players reset 𝐀𝐐𝐔𝐀｜𝟓𝟓✯
scoreboard players reset 𝐋𝐈𝐌𝐄｜𝟓𝟓✯
scoreboard players reset 𝐆𝐎𝐋𝐃｜𝟓𝟓✯
scoreboard players reset 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟓𝟓✯

scoreboard players reset 𝐑𝐄𝐃｜𝟔𝟎✯
scoreboard players reset 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟔𝟎✯
scoreboard players reset 𝐀𝐐𝐔𝐀｜𝟔𝟎✯
scoreboard players reset 𝐋𝐈𝐌𝐄｜𝟔𝟎✯
scoreboard players reset 𝐆𝐎𝐋𝐃｜𝟔𝟎✯
scoreboard players reset 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟔𝟎✯

scoreboard players reset 𝐑𝐄𝐃｜𝟔𝟓✯
scoreboard players reset 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟔𝟓✯
scoreboard players reset 𝐀𝐐𝐔𝐀｜𝟔𝟓✯
scoreboard players reset 𝐋𝐈𝐌𝐄｜𝟔𝟓✯
scoreboard players reset 𝐆𝐎𝐋𝐃｜𝟔𝟓✯
scoreboard players reset 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟔𝟓✯

scoreboard players reset 𝐑𝐄𝐃｜𝟕𝟎✯
scoreboard players reset 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟕𝟎✯
scoreboard players reset 𝐀𝐐𝐔𝐀｜𝟕𝟎✯
scoreboard players reset 𝐋𝐈𝐌𝐄｜𝟕𝟎✯
scoreboard players reset 𝐆𝐎𝐋𝐃｜𝟕𝟎✯
scoreboard players reset 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟕𝟎✯

scoreboard players reset 𝐑𝐄𝐃｜𝟕𝟓✯
scoreboard players reset 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟕𝟓✯
scoreboard players reset 𝐀𝐐𝐔𝐀｜𝟕𝟓✯
scoreboard players reset 𝐋𝐈𝐌𝐄｜𝟕𝟓✯
scoreboard players reset 𝐆𝐎𝐋𝐃｜𝟕𝟓✯
scoreboard players reset 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟕𝟓✯

scoreboard players reset 𝐑𝐄𝐃｜𝟖𝟎✯
scoreboard players reset 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟖𝟎✯
scoreboard players reset 𝐀𝐐𝐔𝐀｜𝟖𝟎✯
scoreboard players reset 𝐋𝐈𝐌𝐄｜𝟖𝟎✯
scoreboard players reset 𝐆𝐎𝐋𝐃｜𝟖𝟎✯
scoreboard players reset 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟖𝟎✯

scoreboard players reset 𝐑𝐄𝐃｜𝟖𝟓✯
scoreboard players reset 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟖𝟓✯
scoreboard players reset 𝐀𝐐𝐔𝐀｜𝟖𝟓✯
scoreboard players reset 𝐋𝐈𝐌𝐄｜𝟖𝟓✯
scoreboard players reset 𝐆𝐎𝐋𝐃｜𝟖𝟓✯
scoreboard players reset 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟖𝟓✯

scoreboard players reset 𝐑𝐄𝐃｜𝟗𝟎✯
scoreboard players reset 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟗𝟎✯
scoreboard players reset 𝐀𝐐𝐔𝐀｜𝟗𝟎✯
scoreboard players reset 𝐋𝐈𝐌𝐄｜𝟗𝟎✯
scoreboard players reset 𝐆𝐎𝐋𝐃｜𝟗𝟎✯
scoreboard players reset 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟗𝟎✯

scoreboard players reset 𝐑𝐄𝐃｜𝟗𝟓✯
scoreboard players reset 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟗𝟓✯
scoreboard players reset 𝐀𝐐𝐔𝐀｜𝟗𝟓✯
scoreboard players reset 𝐋𝐈𝐌𝐄｜𝟗𝟓✯
scoreboard players reset 𝐆𝐎𝐋𝐃｜𝟗𝟓✯
scoreboard players reset 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟗𝟓✯

scoreboard players reset 𝐑𝐄𝐃｜𝟏𝟎𝟎✯
scoreboard players reset 𝐌𝐀𝐆𝐄𝐍𝐓𝐀｜𝟏𝟎𝟎✯
scoreboard players reset 𝐀𝐐𝐔𝐀｜𝟏𝟎𝟎✯
scoreboard players reset 𝐋𝐈𝐌𝐄｜𝟏𝟎𝟎✯
scoreboard players reset 𝐆𝐎𝐋𝐃｜𝟏𝟎𝟎✯
scoreboard players reset 𝐘𝐄𝐋𝐋𝐎𝐖｜𝟏𝟎𝟎✯

team join objGreen 𝐏𝐎𝐖𝐄𝐑𝐔𝐏𝐒｜✔
team join objGreen 𝐄𝐕𝐄𝐍𝐓｜✔
team join objGreen 𝐃𝐎𝐔𝐁𝐋𝐄｜✔
team join objGreen 𝐇𝐀𝐋𝐅｜✔

team join objRed 𝐏𝐎𝐖𝐄𝐑𝐔𝐏𝐒｜❌
team join objRed 𝐄𝐕𝐄𝐍𝐓｜❌
team join objRed 𝐃𝐎𝐔𝐁𝐋𝐄｜❌
team join objRed 𝐇𝐀𝐋𝐅｜❌

team join objLightPurple 𝐌𝐀𝐏｜𝐑𝐀𝐍𝐃𝐎𝐌
team join objGray 𝐌𝐀𝐏｜𝐒𝐋𝐀𝐓𝐄
team join objDarkRed 𝐌𝐀𝐏｜𝐂𝐑𝐈𝐌𝐒𝐎𝐍
team join objYellow 𝐌𝐀𝐏｜𝐒𝐀𝐍𝐃𝐒𝐓𝐎𝐑𝐌
team join objDarkGreen 𝐌𝐀𝐏｜𝐑𝐄𝐒𝐄𝐑𝐕𝐄
team join objLightPurple 𝐌𝐀𝐏｜𝐒𝐀𝐍𝐂𝐓𝐔𝐀𝐑𝐘
team join objBlue 𝐌𝐀𝐏｜𝐎𝐔𝐓𝐏𝐎𝐒𝐓
team join objGold 𝐌𝐀𝐏｜𝐂𝐑𝐘𝐏𝐓

team join objGreen 𝐑𝐎𝐔𝐍𝐃｜𝐀𝐔𝐓𝐎
team join objRed 𝐑𝐎𝐔𝐍𝐃｜𝟏:𝟎𝟎
team join objGold 𝐑𝐎𝐔𝐍𝐃｜𝟐:𝟎𝟎
team join objYellow 𝐑𝐎𝐔𝐍𝐃｜𝟑:𝟎𝟎

team join objGreen 𝐂𝐄𝐍𝐓𝐄𝐑｜𝐀𝐔𝐓𝐎
team join objDarkRed 𝐂𝐄𝐍𝐓𝐄𝐑｜𝟎:𝟎𝟓
team join objRed 𝐂𝐄𝐍𝐓𝐄𝐑｜𝟎:𝟏𝟎
team join objGold 𝐂𝐄𝐍𝐓𝐄𝐑｜𝟎:𝟐𝟎
team join objYellow 𝐂𝐄𝐍𝐓𝐄𝐑｜𝟎:𝟑𝟎

#Choice

scoreboard objectives remove vote_phase
scoreboard objectives add vote_phase dummy

scoreboard objectives remove triggerParticipate
scoreboard objectives remove triggerNoParticipate
scoreboard objectives add triggerParticipate trigger
scoreboard objectives add triggerNoParticipate trigger

scoreboard objectives remove vote_randomize
scoreboard objectives remove vote_pick
scoreboard objectives add vote_randomize trigger
scoreboard objectives add vote_pick trigger

scoreboard objectives remove team1
scoreboard objectives remove team2
scoreboard objectives add team1 trigger
scoreboard objectives add team2 trigger

scoreboard objectives remove vote_red
scoreboard objectives remove vote_mag
scoreboard objectives remove vote_aqu
scoreboard objectives remove vote_lim
scoreboard objectives remove vote_gol
scoreboard objectives remove vote_yel
scoreboard objectives add vote_red trigger
scoreboard objectives add vote_mag trigger
scoreboard objectives add vote_aqu trigger
scoreboard objectives add vote_lim trigger
scoreboard objectives add vote_gol trigger
scoreboard objectives add vote_yel trigger

scoreboard objectives remove randomColor
scoreboard objectives remove randomPowerUps
scoreboard objectives remove randomTeamOrRandomize
scoreboard objectives remove randomTeamPick
scoreboard objectives remove randomTeamRandomize
scoreboard objectives add randomColor dummy
scoreboard objectives add randomPowerUps dummy
scoreboard objectives add randomTeamOrRandomize dummy
scoreboard objectives add randomTeamPick dummy
scoreboard objectives add randomTeamRandomize dummy

scoreboard objectives add vote_random trigger
scoreboard objectives add vote_lightwielder trigger
scoreboard objectives add vote_marauder trigger
scoreboard objectives add vote_legionnaire trigger
scoreboard objectives add vote_venator trigger
scoreboard objectives add vote_conjurer trigger
scoreboard objectives add vote_revenant trigger
scoreboard objectives add vote_magus trigger
scoreboard objectives add vote_trapshooter trigger
scoreboard objectives add vote_northman trigger
scoreboard objectives add vote_praetorian trigger
scoreboard objectives add vote_prospector trigger
scoreboard objectives add vote_cavalier trigger
scoreboard objectives add vote_seacharger trigger

scoreboard players reset .ready vote_phase
scoreboard players reset .readyTime vote_phase
scoreboard players reset .max
scoreboard players reset .choice
scoreboard players reset .choiceMap
scoreboard players reset .random
scoreboard players reset .copyRandom
scoreboard players reset .subtract
scoreboard players reset .divide
scoreboard players reset .classSpeedup
scoreboard players reset Team1Stars:
scoreboard players reset Team2Stars:
scoreboard players reset .count
scoreboard players reset .check1
scoreboard players reset .check2
scoreboard players reset .check3
scoreboard players reset .check4
scoreboard players reset .check5
scoreboard players reset .check6
scoreboard players reset .check7
scoreboard players reset .check8
scoreboard players reset .check9

scoreboard objectives remove gameTimer
scoreboard objectives add gameTimer dummy

scoreboard objectives remove centerTimer
scoreboard objectives add centerTimer dummy
scoreboard players reset round1: gameTimer
scoreboard players reset round2: gameTimer
scoreboard players reset round3: gameTimer
scoreboard players reset round4: gameTimer
scoreboard players reset round5: gameTimer
scoreboard players reset gameStartTimer: gameTimer
scoreboard players reset gameStart2Timer: gameTimer
scoreboard players reset gameStart3Timer: gameTimer
scoreboard players reset gameStart4Timer: gameTimer
scoreboard players reset gameStart5Timer: gameTimer
scoreboard players reset victoryTimer: gameTimer

execute as @a run function battle:classes/magus/reset
execute as @a run function battle:classes/revenant/reset
execute as @a run function battle:classes/venator/reset
execute as @a run function battle:classes/conjurer/reset
execute as @a run function battle:classes/marauder/reset
execute as @a run function battle:classes/northman/reset
execute as @a run function battle:classes/praetorian/reset
execute as @a run function battle:classes/prospector/reset
execute as @a run function battle:classes/legionnaire/reset
execute as @a run function battle:classes/trapshooter/reset
execute as @a run function battle:classes/lightwielder/reset
execute as @a run function battle:classes/cavalier/reset
execute as @a run function battle:classes/seacharger/reset

function battle:ingame/disablefunction/class/conj
function battle:ingame/disablefunction/class/light
function battle:ingame/disablefunction/class/legion
function battle:ingame/disablefunction/class/magus
function battle:ingame/disablefunction/class/mara
function battle:ingame/disablefunction/class/north
function battle:ingame/disablefunction/class/praet
function battle:ingame/disablefunction/class/reve
function battle:ingame/disablefunction/class/trap
function battle:ingame/disablefunction/class/vena
function battle:ingame/disablefunction/class/cava
function battle:ingame/disablefunction/class/seach
function battle:ingame/disablefunction/class/prosp

schedule clear battle:ingame/pads/speed/check
schedule clear battle:ingame/pads/jump/check
schedule clear battle:ingame/pads/teleport/main
schedule clear battle:ingame/map_specific/slate/main
schedule clear battle:classes/venator/hunt/glow
schedule clear battle:powerups/curse/main
schedule clear battle:powerups/enhanced/gapple
schedule clear battle:powerups/haste/hastepower
schedule clear battle:powerups/health/main
schedule clear battle:powerups/light/main
schedule clear battle:powerups/puffer/main
schedule clear battle:powerups/resist/resistancepower
schedule clear battle:powerups/shroom/main
schedule clear battle:powerups/tnt/main

#schedule clear battle:powerups/decay/decaypotion

function battle:lobby/disablefunction/archery
function battle:lobby/disablefunction/class
function battle:lobby/disablefunction/credits
function battle:lobby/disablefunction/lobby
function battle:lobby/disablefunction/pvp
function battle:lobby/disablefunction/settings

schedule clear battle:teamchoice/0-participate/main
schedule clear battle:teamchoice/1-ready/main
schedule clear battle:teamchoice/2-randomorteam/main
schedule clear battle:teamchoice/3-teampick/main
schedule clear battle:teamchoice/4-color1/main
schedule clear battle:teamchoice/5-color2/main
schedule clear battle:teamchoice/7-class/main
schedule clear battle:gameobjective/startgame
schedule clear battle:gameobjective/startgame2
schedule clear battle:gameobjective/startgame3
schedule clear battle:gameobjective/startgame4
schedule clear battle:gameobjective/startgame5
schedule clear battle:gameobjective/round1/main
schedule clear battle:gameobjective/round2/main
schedule clear battle:gameobjective/round3/main
schedule clear battle:gameobjective/round4/main
schedule clear battle:gameobjective/round5/main
schedule clear battle:gameobjective/victory

schedule clear battle:ingame/restock/10s
schedule clear battle:ingame/restock/12s
schedule clear battle:ingame/restock/15s
schedule clear battle:ingame/restock/20s
schedule clear battle:ingame/restock/25s

function battle:teamchoice/1-ready/main

function ladder:load
function player_motion:internal/technical/load