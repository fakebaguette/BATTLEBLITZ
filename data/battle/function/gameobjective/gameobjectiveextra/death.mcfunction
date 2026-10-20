scoreboard players reset @a[tag=!Participant] teamDeath 
execute as @a[tag=Participant,tag=CountedTeam,team=Red,scores={teamDeath=1..}] run tag @s add redDied 
execute as @a[tag=Participant,tag=CountedTeam,team=Red,scores={teamDeath=1..}] run tag @s add teamDied
execute if entity @a[tag=redDied,scores={teamDeath=1..}] run scoreboard players remove #ofaliveRed: teamPlayerCount 1
execute as @a[tag=redDied,scores={teamDeath=1..}] run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"You were eliminated.","color":"red"}," You will now spectate for the rest of this round."]
execute as @a[tag=redDied] run scoreboard players reset @s teamDeath

scoreboard players reset @a[tag=!Participant] teamDeath 
execute as @a[tag=Participant,tag=CountedTeam,team=Magenta,scores={teamDeath=1..}] run tag @s add magDied 
execute as @a[tag=Participant,tag=CountedTeam,team=Magenta,scores={teamDeath=1..}] run tag @s add teamDied
execute if entity @a[tag=magDied,scores={teamDeath=1..}] run scoreboard players remove #ofaliveMag: teamPlayerCount 1
execute as @a[tag=magDied,scores={teamDeath=1..}] run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"You were eliminated.","color":"red"}," You will now spectate for the rest of this round."]
execute as @a[tag=magDied] run scoreboard players reset @s teamDeath

scoreboard players reset @a[tag=!Participant] teamDeath 
execute as @a[tag=Participant,tag=CountedTeam,team=Aqua,scores={teamDeath=1..}] run tag @s add aquDied 
execute as @a[tag=Participant,tag=CountedTeam,team=Magenta,scores={teamDeath=1..}] run tag @s add teamDied
execute if entity @a[tag=aquDied,scores={teamDeath=1..}] run scoreboard players remove #ofaliveAqu: teamPlayerCount 1
execute as @a[tag=aquDied,scores={teamDeath=1..}] run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"You were eliminated.","color":"red"}," You will now spectate for the rest of this round."]
execute as @a[tag=aquDied] run scoreboard players reset @s teamDeath

scoreboard players reset @a[tag=!Participant] teamDeath 
execute as @a[tag=Participant,tag=CountedTeam,team=Lime,scores={teamDeath=1..}] run tag @s add limDied 
execute as @a[tag=Participant,tag=CountedTeam,team=Magenta,scores={teamDeath=1..}] run tag @s add teamDied
execute if entity @a[tag=limDied,scores={teamDeath=1..}] run scoreboard players remove #ofaliveLim: teamPlayerCount 1
execute as @a[tag=limDied,scores={teamDeath=1..}] run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"You were eliminated.","color":"red"}," You will now spectate for the rest of this round."]
execute as @a[tag=limDied] run scoreboard players reset @s teamDeath

scoreboard players reset @a[tag=!Participant] teamDeath 
execute as @a[tag=Participant,tag=CountedTeam,team=Gold,scores={teamDeath=1..}] run tag @s add golDied 
execute as @a[tag=Participant,tag=CountedTeam,team=Magenta,scores={teamDeath=1..}] run tag @s add teamDied
execute if entity @a[tag=golDied,scores={teamDeath=1..}] run scoreboard players remove #ofaliveGol: teamPlayerCount 1
execute as @a[tag=golDied,scores={teamDeath=1..}] run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"You were eliminated.","color":"red"}," You will now spectate for the rest of this round."]
execute as @a[tag=golDied] run scoreboard players reset @s teamDeath

scoreboard players reset @a[tag=!Participant] teamDeath 
execute as @a[tag=Participant,tag=CountedTeam,team=Yellow,scores={teamDeath=1..}] run tag @s add yelDied 
execute as @a[tag=Participant,tag=CountedTeam,team=Magenta,scores={teamDeath=1..}] run tag @s add teamDied
execute if entity @a[tag=yelDied,scores={teamDeath=1..}] run scoreboard players remove #ofaliveYel: teamPlayerCount 1
execute as @a[tag=yelDied,scores={teamDeath=1..}] run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"You were eliminated.","color":"red"}," You will now spectate for the rest of this round."]
execute as @a[tag=yelDied] run scoreboard players reset @s teamDeath

tag @s remove redDied
tag @s remove magDied
tag @s remove aquDied
tag @s remove limDied
tag @s remove golDied
tag @s remove yelDied

tag @s remove vena_target

clear @s golden_apple
clear @s splash_potion
clear @s experience_bottle
clear @s pufferfish
clear @s skull_pottery_sherd
clear @s warped_fungus
clear @s tnt
clear @s sugar

effect give @s resistance 2 255 true
effect give @s night_vision infinite 0 true

gamemode spectator @s

execute if score .toggle toggleMap matches 1 as @s at @e[type=interaction,tag=map1Corner] unless entity @s[dx=64,dy=70,dz=64] at @e[type=interaction,tag=5x5center,tag=map1] run tp @s ~ ~3 ~

execute if score .toggle toggleMap matches 2 as @s at @e[type=interaction,tag=map2Corner] unless entity @s[dx=45,dy=30,dz=45] at @e[type=interaction,tag=5x5center,tag=map2] run tp @s ~ ~3 ~

execute if score .toggle toggleMap matches 3 as @s at @e[type=interaction,tag=map3Corner] unless entity @s[dx=-150,dy=100,dz=-150] at @e[type=interaction,tag=5x5center,tag=map3] run tp @s ~ ~3 ~

execute if score .toggle toggleMap matches 4 as @s at @e[type=interaction,tag=map4Corner] unless entity @s[dx=90,dy=80,dz=90] at @e[type=interaction,tag=5x5center,tag=map4] run tp @s ~ ~3 ~

execute if score .toggle toggleMap matches 5 as @s at @e[type=interaction,tag=map5Corner] unless entity @s[dx=90,dy=80,dz=90] at @e[type=interaction,tag=5x5center,tag=map5] run tp @s ~ ~3 ~

execute if score .toggle toggleMap matches 6 as @s at @e[type=interaction,tag=map6Corner] unless entity @s[dx=150,dy=120,dz=200] at @e[type=interaction,tag=5x5center,tag=map6] run tp @s ~ ~3 ~

execute if score .toggle toggleMap matches 7 as @s at @e[type=interaction,tag=map7Corner] unless entity @s[dx=100,dy=50,dz=75] at @e[type=interaction,tag=5x5center,tag=map7] run tp @s ~ ~3 ~