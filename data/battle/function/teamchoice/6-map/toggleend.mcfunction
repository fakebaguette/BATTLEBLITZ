execute if score .toggle toggleMap matches 0 run scoreboard players set .original_map toggleMap 0
execute if score .toggle toggleMap matches 0 store result score .toggle toggleMap run random value 1..7


execute if score .toggle toggleMap matches 1 run tellraw @a[tag=Participant] ["-----------------------------------------------------\n\nThe selected map is ","[",{"text":"SLATE","color":"gray","bold":true},"]!\n",{"text":"","color":"white","bold":false},"\n-----------------------------------------------------"]
execute if score .toggle toggleMap matches 1 run time set night

execute if score .toggle toggleMap matches 2 run tellraw @a[tag=Participant] ["-----------------------------------------------------\n\nThe selected map is ","[",{"text":"CRIMSON","color":"dark_red","bold":true},"]!\n",{"text":"","color":"white","bold":false},"\n-----------------------------------------------------"]
execute if score .toggle toggleMap matches 2 run time set night
execute if score .toggle toggleMap matches 2 run effect give @a[tag=Participant] night_vision infinite 0 true

execute if score .toggle toggleMap matches 3 run tellraw @a[tag=Participant] ["-----------------------------------------------------\n\nThe selected map is ","[",{"text":"SANDSTORM","color":"yellow","bold":true},"]!\n",{"text":"","color":"white","bold":false},"\n-----------------------------------------------------"]
execute if score .toggle toggleMap matches 3 run time set day

execute if score .toggle toggleMap matches 4 run tellraw @a[tag=Participant] ["-----------------------------------------------------\n\nThe selected map is ","[",{"text":"RESERVE","color":"dark_green","bold":true},"]!\n",{"text":"","color":"white","bold":false},"\n-----------------------------------------------------"]
execute if score .toggle toggleMap matches 4 run time set day

execute if score .toggle toggleMap matches 5 run tellraw @a[tag=Participant] ["-----------------------------------------------------\n\nThe selected map is ","[",{"text":"SANCTUARY","color":"light_purple","bold":true},"]!\n",{"text":"","color":"white","bold":false},"\n-----------------------------------------------------"]
execute if score .toggle toggleMap matches 5 run time set day

execute if score .toggle toggleMap matches 6 run tellraw @a[tag=Participant] ["-----------------------------------------------------\n\nThe selected map is ","[",{"text":"OUTPOST","color":"#0059e0","bold":true},"]!\n",{"text":"","color":"white","bold":false},"\n-----------------------------------------------------"]
execute if score .toggle toggleMap matches 6 run time set 12200

execute if score .toggle toggleMap matches 7 run tellraw @a[tag=Participant] ["-----------------------------------------------------\n\nThe selected map is ","[",{"text":"CRYPT","color":"#ffb868","bold":true},"]!\n",{"text":"","color":"white","bold":false},"\n-----------------------------------------------------"]
execute if score .toggle toggleMap matches 7 run effect give @a[tag=Participant] night_vision infinite 0 true

execute if score .toggle toggleMap matches 8 run tellraw @a[tag=Participant] ["-----------------------------------------------------\n\nThe selected map is ","[",{"text":"MAP 8","color":"gray","bold":true},"]!\n",{"text":"","color":"white","bold":false},"\n-----------------------------------------------------"]
   
execute if score .toggle toggleMap matches 9 run tellraw @a[tag=Participant] ["-----------------------------------------------------\n\nThe selected map is ","[",{"text":"MAP 9","color":"gray","bold":true},"]!\n",{"text":"","color":"white","bold":false},"\n-----------------------------------------------------"]

execute if score .toggle toggleMap matches 10 run tellraw @a[tag=Participant] ["-----------------------------------------------------\n\nThe selected map is ","[",{"text":"MAP 10","color":"gray","bold":true},"]!\n",{"text":"","color":"white","bold":false},"\n-----------------------------------------------------"]

execute if score .toggle toggleMap matches 11 run tellraw @a[tag=Participant] ["-----------------------------------------------------\n\nThe selected map is ","[",{"text":"MAP 11","color":"gray","bold":true},"]!\n",{"text":"","color":"white","bold":false},"\n-----------------------------------------------------"]

execute if score .toggle toggleMap matches 12 run tellraw @a[tag=Participant] ["-----------------------------------------------------\n\nThe selected map is ","[",{"text":"MAP 12","color":"gray","bold":true},"]!\n",{"text":"","color":"white","bold":false},"\n-----------------------------------------------------"]


execute if score .toggle toggleDouble matches 1 as @a[tag=Participant] run attribute @s max_health base set 40 
execute if score .toggle toggleHalf matches 1 as @a[tag=Participant] run attribute @s max_health base set 10
schedule function battle:teamchoice/7-class/main 3s

execute at @a run playsound minecraft:block.note_block.bell master @a[tag=Participant] ~ ~ ~ 0.5 1.4
execute at @a run playsound minecraft:block.note_block.bit master @a[tag=Participant] ~ ~ ~ 0.3 1.4

tag @a remove practicePvp
scoreboard players reset * killer
scoreboard players reset * playerDiedInt
scoreboard players reset * killerPractice
scoreboard players reset * playerDiedIntPractice
scoreboard players reset * hpIntPractice

function battle:gameobjective/gameobjectiveextra/inittp
function battle:gameobjective/gameobjectiveextra/roundclear
function battle:reset/entities
function battle:gameobjective/gameobjectiveextra/closebox
function battle:gameobjective/gameobjectiveextra/update/updatescoreboards
function battle:gameobjective/gameobjectiveextra/update/stars/call_update_stars
function battle:gameobjective/gameobjectiveextra/update/rounds/call_update_rounds