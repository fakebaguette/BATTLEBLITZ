#general
function battle:ingame/detect

tag @a[tag=Participant] add roundClearing
gamemode adventure @a[tag=Participant]
effect clear @a[tag=Participant]
effect give @a[tag=Participant] instant_health 1 10 true
execute if score .toggle toggleMap matches 2 run effect give @a[tag=Participant] night_vision infinite 0 true
execute if score .toggle toggleMap matches 7 run effect give @a[tag=Participant] night_vision infinite 0 true

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

function battle:ingame/map_specific/crypt/fire/stopstorm
function battle:ingame/map_specific/sandstorm/storm/stopstorm

function battle:gameobjective/gameobjectiveextra/update/timereset

#entities
execute as @e[type=interaction,tag=growthBox] at @s run fill ~1 ~3 ~-1 ~-1 ~ ~1 air replace cherry_leaves
execute as @e[type=block_display,tag=cryo_freeze] at @s run fill ~2 ~2 ~2 ~-2 ~-2 ~-2 air replace powder_snow
kill @e[type=interaction,tag=centerLock]
kill @e[type=arrow]
kill @e[type=spectral_arrow]
kill @e[type=item_display]
kill @e[type=block_display]
kill @e[type=armor_stand,tag=PowerUp]
kill @e[type=silverfish]
kill @e[type=spider]
kill @e[type=endermite]
kill @e[type=cave_spider]
kill @e[type=husk]
kill @e[type=stray]
kill @e[type=zombie_villager]
kill @e[type=item]

#ladder model
#summon block_display 992.24 79 2005.25 {Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,0f,-0.1328f,0.0131f,0f,14f,0f,0f,0.0625f,0f,0f,0.7481f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,0.8075f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,0f,-0.1328f,0.6368f,0f,14f,0f,0f,0.0625f,0f,0f,0.7481f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,0.5581f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,0.3063f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,0.0575f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,0f,-0.1328f,0.0131f,0f,1f,0f,0f,0.0625f,0f,0f,0.7481f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,0.8075f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,0f,-0.1328f,0.6368f,0f,1f,0f,0f,0.0625f,0f,0f,0.7481f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,0.5581f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,0.3063f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,0.0575f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,6.8075f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,6.5581f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,6.3063f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,6.0575f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,7.8075f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,7.5581f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,7.3063f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,7.0575f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,8.8075f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,8.5581f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,8.3063f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,8.0575f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,9.8075f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,9.5581f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,9.3063f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,9.0575f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,2.8075f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,2.5581f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,2.3063f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,2.0575f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,3.8075f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,3.5581f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,3.3063f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,3.0575f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,4.8075f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,4.5581f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,4.3063f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,4.0575f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,5.8075f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,5.5581f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,5.3063f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,5.0575f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,10.8075f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,10.5581f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,10.3063f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,10.0575f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,11.8075f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,11.5581f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,11.3063f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,11.0575f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,12.8075f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,12.5581f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,12.3063f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,12.0575f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,13.8075f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,13.5581f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,13.3063f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,13.0575f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,1.8075f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,1.5581f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,1.3063f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,1.0575f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,1.8075f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,1.5581f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,1.3063f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,1.0575f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,0f,-0.1328f,0.0131f,0f,1f,0f,0f,0.0625f,0f,0f,0.7481f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,0f,-0.1328f,0.6368f,0f,1f,0f,0f,0.0625f,0f,0f,0.7481f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,0.5581f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,0.3063f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,0.0575f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,0f,-0.1328f,0.0131f,0f,1f,0f,0f,0.0625f,0f,0f,0.7481f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,0f,-0.1328f,0.6368f,0f,1f,0f,0f,0.0625f,0f,0f,0.7481f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,0.5581f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,0.3063f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.2419f,0f,0f,0.1336f,0.0575f,0.0625f,0f,0f,0.7431f,0f,0f,0f,1f]}]}
#summon block_display 1008.005 79 1995.8 {Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,0f,-0.1328f,0.25f,0f,14f,0f,0f,0.0625f,0f,0f,-0.875f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,0.8075f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,0f,-0.1328f,0.8737f,0f,14f,0f,0f,0.0625f,0f,0f,-0.875f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,0.5581f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,0.3063f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,0.0575f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,0f,-0.1328f,0.25f,0f,1f,0f,0f,0.0625f,0f,0f,-0.875f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,0.8075f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,0f,-0.1328f,0.8737f,0f,1f,0f,0f,0.0625f,0f,0f,-0.875f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,0.5581f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,0.3063f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,0.0575f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,6.8075f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,6.5581f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,6.3063f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,6.0575f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,7.8075f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,7.5581f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,7.3063f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,7.0575f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,8.8075f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,8.5581f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,8.3063f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,8.0575f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,9.8075f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,9.5581f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,9.3063f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,9.0575f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,2.8075f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,2.5581f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,2.3063f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,2.0575f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,3.8075f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,3.5581f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,3.3063f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,3.0575f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,4.8075f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,4.5581f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,4.3063f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,4.0575f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,5.8075f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,5.5581f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,5.3063f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,5.0575f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,10.8075f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,10.5581f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,10.3063f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,10.0575f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,11.8075f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,11.5581f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,11.3063f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,11.0575f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,12.8075f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,12.5581f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,12.3063f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,12.0575f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,13.8075f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,13.5581f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,13.3063f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,13.0575f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,1.8075f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,1.5581f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,1.3063f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,1.0575f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,1.8075f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,1.5581f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,1.3063f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,1.0575f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,0f,-0.1328f,0.25f,0f,1f,0f,0f,0.0625f,0f,0f,-0.875f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,0f,-0.1328f,0.8737f,0f,1f,0f,0f,0.0625f,0f,0f,-0.875f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,0.5581f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,0.3063f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,0.0575f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,0f,-0.1328f,0.25f,0f,1f,0f,0f,0.0625f,0f,0f,-0.875f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,0f,-0.1328f,0.8737f,0f,1f,0f,0f,0.0625f,0f,0f,-0.875f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,0.5581f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,0.3063f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]},{id:"minecraft:block_display",block_state:{Name:"minecraft:gray_concrete",Properties:{}},transformation:[0f,1f,0f,-0.005f,0f,0f,0.1336f,0.0575f,0.0625f,0f,0f,-0.88f,0f,0f,0f,1f]}]}

#power ups
tag @a[tag=Participant] remove HastePermBuff1
tag @a[tag=Participant] remove HastePermBuff2
tag @a[tag=Participant] remove ResistPermBuff1
tag @a[tag=Participant] remove ResistPermBuff2
tag @a[tag=Participant] remove HealthBoostPermBuff1
tag @a[tag=Participant] remove HealthBoostPermBuff2
scoreboard players reset @s speedPowder
scoreboard players reset @s enhancedApple

execute as @a[tag=Participant] at @s run attribute @s gravity base reset

clear @a[tag=roundClearing] leather_helmet
clear @a[tag=roundClearing] leather_chestplate
clear @a[tag=roundClearing] leather_leggings
clear @a[tag=roundClearing] leather_boots

clear @a[tag=roundClearing] golden_helmet
clear @a[tag=roundClearing] golden_chestplate
clear @a[tag=roundClearing] golden_leggings
clear @a[tag=roundClearing] golden_boots

clear @a[tag=roundClearing] chainmail_helmet
clear @a[tag=roundClearing] chainmail_chestplate
clear @a[tag=roundClearing] chainmail_leggings
clear @a[tag=roundClearing] chainmail_boots

clear @a[tag=roundClearing] iron_helmet
clear @a[tag=roundClearing] iron_chestplate
clear @a[tag=roundClearing] iron_leggings
clear @a[tag=roundClearing] iron_boots

clear @a[tag=roundClearing] diamond_helmet
clear @a[tag=roundClearing] diamond_chestplate
clear @a[tag=roundClearing] diamond_leggings
clear @a[tag=roundClearing] diamond_boots

clear @a[tag=roundClearing] netherite_helmet
clear @a[tag=roundClearing] netherite_chestplate
clear @a[tag=roundClearing] netherite_leggings
clear @a[tag=roundClearing] netherite_boots

clear @a[tag=roundClearing] end_rod
clear @a[tag=roundClearing] wooden_sword
clear @a[tag=roundClearing] stone_sword
clear @a[tag=roundClearing] iron_sword
clear @a[tag=roundClearing] golden_sword
clear @a[tag=roundClearing] copper_sword
clear @a[tag=roundClearing] diamond_sword
clear @a[tag=roundClearing] netherite_sword

clear @a[tag=roundClearing] wooden_axe
clear @a[tag=roundClearing] stone_axe
clear @a[tag=roundClearing] iron_axe
clear @a[tag=roundClearing] golden_axe
clear @a[tag=roundClearing] diamond_axe
clear @a[tag=roundClearing] netherite_axe

clear @a[tag=roundClearing] copper_spear
clear @a[tag=roundClearing] wooden_spear
clear @a[tag=roundClearing] stone_spear
clear @a[tag=roundClearing] iron_spear
clear @a[tag=roundClearing] golden_spear
clear @a[tag=roundClearing] diamond_spear
clear @a[tag=roundClearing] netherite_spear

clear @a[tag=roundClearing] shield
clear @a[tag=roundClearing] bow
clear @a[tag=roundClearing] crossbow

clear @a[tag=roundClearing] arrow
clear @a[tag=roundClearing] tipped_arrow
clear @a[tag=roundClearing] spectral_arrow
clear @a[tag=roundClearing] firework_rocket

clear @a[tag=roundClearing] amethyst_shard
clear @a[tag=roundClearing] spyglass
clear @a[tag=roundClearing] goat_horn
clear @a[tag=roundClearing] blaze_powder
clear @a[tag=roundClearing] spider_eye
clear @a[tag=roundClearing] rotten_flesh
clear @a[tag=roundClearing] ender_eye
clear @a[tag=roundClearing] comparator
clear @a[tag=roundClearing] snowball
clear @a[tag=roundClearing] archer_pottery_sherd
clear @a[tag=roundClearing] friend_pottery_sherd
clear @a[tag=roundClearing] blue_dye
clear @a[tag=roundClearing] lime_dye
clear @a[tag=roundClearing] red_dye
clear @a[tag=roundClearing] yellow_dye
clear @a[tag=roundClearing] red_banner
clear @a[tag=roundClearing] saddle
clear @a[tag=roundClearing] cyan_dye
clear @a[tag=roundClearing] light_gray_dye
clear @a[tag=roundClearing] brown_dye
clear @a[tag=roundClearing] nautilus_shell
clear @a[tag=roundClearing] book
clear @a[tag=roundClearing] paper

clear @a[tag=roundClearing] black_stained_glass_pane
clear @a[tag=roundClearing] white_stained_glass_pane
clear @a[tag=roundClearing] mojang_banner_pattern

clear @a[tag=roundClearing] skull_pottery_sherd
clear @a[tag=roundClearing] lingering_potion
clear @a[tag=roundClearing] golden_apple
clear @a[tag=roundClearing] miner_pottery_sherd
clear @a[tag=roundClearing] heart_pottery_sherd
clear @a[tag=roundClearing] experience_bottle
clear @a[tag=roundClearing] pufferfish
clear @a[tag=roundClearing] mourner_pottery_sherd
clear @a[tag=roundClearing] warped_fungus
clear @a[tag=roundClearing] tnt
clear @a[tag=roundClearing] sugar

#reset death
tag @a[tag=Participant] remove redDied
tag @a[tag=Participant] remove magDied
tag @a[tag=Participant] remove aquDied
tag @a[tag=Participant] remove limDied
tag @a[tag=Participant] remove golDied
tag @a[tag=Participant] remove yelDied
execute as @a[tag=diedTp,team=Red] run scoreboard players add #ofaliveRed: teamPlayerCount 1
execute as @a[tag=diedTp,team=Magenta] run scoreboard players add #ofaliveMag: teamPlayerCount 1
execute as @a[tag=diedTp,team=Aqua] run scoreboard players add #ofaliveAqu: teamPlayerCount 1
execute as @a[tag=diedTp,team=Lime] run scoreboard players add #ofaliveLim: teamPlayerCount 1
execute as @a[tag=diedTp,team=Gold] run scoreboard players add #ofaliveGol: teamPlayerCount 1
execute as @a[tag=diedTp,team=Yellow] run scoreboard players add #ofaliveYel: teamPlayerCount 1
tag @a[tag=Participant] remove diedTp
tag @a[tag=Participant] remove teamDied


#Lightwielder
execute as @a run function battle:classes/lightwielder/reset
execute as @a[tag=lightwielder_class] run function battle:armor/light

#Marauder
execute as @a run function battle:classes/marauder/reset
execute as @a[tag=marauder_class] run function battle:armor/mara

#Legionaire
execute as @a run function battle:classes/legionnaire/reset
execute as @a[tag=legionnaire_class] run function battle:armor/legion

#Venator
execute as @a run function battle:classes/venator/reset
execute as @a[tag=venator_class] run function battle:armor/vena

#Conjurer
execute as @a run function battle:classes/conjurer/reset
execute as @a[tag=conjurer_class] run function battle:armor/conj

#Revenant
execute as @a run function battle:classes/revenant/reset
execute as @a[tag=revenant_class] run function battle:armor/reve

#Magus
execute as @a run function battle:classes/magus/reset
execute as @a[tag=magus_class] run function battle:armor/magus

#Trapshooter
execute as @a run function battle:classes/trapshooter/reset
execute as @a[tag=trapshooter_class] run function battle:armor/trap

#Northman
execute as @a run function battle:classes/northman/reset
execute as @a[tag=northman_class] run function battle:armor/north

#Praetorian
execute as @a run function battle:classes/praetorian/reset
execute as @a[tag=praetorian_class] run function battle:armor/praet

#Prospector
execute as @a run function battle:classes/prospector/reset
execute as @a[tag=prospector_class] run function battle:armor/prosp

#Cavalier
execute as @a run function battle:classes/cavalier/reset
execute as @a[tag=cavalier_class] run function battle:armor/cava

#Seacharger
execute as @a run function battle:classes/seacharger/reset
execute as @a[tag=seacharger_class] run function battle:armor/seach

#Challenger
execute as @a[tag=challenger_class] run function battle:armor/chall
clear @a[tag=Participant] splash_potion[custom_data={NoDrop:1b}]
give @a[tag=challenger_class] splash_potion[custom_name={"bold":true,"color":"white","italic":false,"text":"Concoction of the Challenger"},lore=[[{"bold":false,"color":"white","italic":false,"text":"Use: Inflict players with "},{"bold":true,"color":"dark_gray","italic":false,"text":"blindness"},{"bold":false,"color":"white","italic":false,"text":"!"}]," ",["",{"bold":false,"color":"gray","italic":false,"text":"This can hit you and your allies too!"}]],potion_contents={custom_color:5064521,custom_effects:[{id:"minecraft:blindness",amplifier:0,duration:80,show_particles:1b,show_icon:1b}]},tooltip_display={hide_tooltip:false,hidden_components:["enchantments","unbreakable","attribute_modifiers","trim","dyed_color","potion_contents","provides_trim_material","potion_duration_scale","enchantment_glint_override","can_break","can_place_on","banner_patterns","provides_banner_patterns"]}] 1
#
scoreboard players reset @a tnt_itemCD
scoreboard players reset @a curse_itemCD
scoreboard players reset @a puffer_itemCD
scoreboard players reset @a shroom_itemCD

#barrier
execute at @e[type=interaction,tag=5x5center] run fill ~1 ~1 ~1 ~-1 ~1 ~-1 barrier

schedule clear battle:powerups/curse/main
#schedule clear battle:powerups/decay/decaypotion
schedule clear battle:powerups/enhanced/gapple
schedule clear battle:powerups/haste/hastepower
schedule clear battle:powerups/health/main
schedule clear battle:powerups/light/main
schedule clear battle:powerups/puffer/main
schedule clear battle:powerups/resist/resistancepower
schedule clear battle:powerups/shroom/main
schedule clear battle:powerups/tnt/main

execute at @e[type=interaction,tag=5x5center] run fill ~-50 ~-30 ~-50 ~50 ~30 ~50 air replace powder_snow
function battle:classes/armor_values/update
tag @a remove roundClearing
