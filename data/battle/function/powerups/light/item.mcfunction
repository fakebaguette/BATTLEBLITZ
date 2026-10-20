tag @e[type=experience_bottle,sort=nearest,limit=1,distance=..3] add lightBottle
execute if entity @s[tag=Team1] as @e[type=experience_bottle,sort=nearest,limit=1,distance=..3] at @s summon area_effect_cloud run function battle:powerups/light/init1
execute if entity @s[tag=Team2] as @e[type=experience_bottle,sort=nearest,limit=1,distance=..3] at @s summon area_effect_cloud run function battle:powerups/light/init2
execute as @e[type=experience_bottle,tag=lightBottle] at @s run particle minecraft:dust{color:[0.953,0.941,0.847],scale:1} ~ ~ ~ 0.1 0.1 0.1 0.01 1 normal @a

execute if entity @e[type=area_effect_cloud,tag=lightAOE] run schedule function battle:powerups/light/item 1t
execute as @e[type=area_effect_cloud,tag=lightAOE] at @s unless predicate battle:bottleoflight/light run function battle:powerups/light/explode
scoreboard players reset @s lightBottle
tag @s remove haslightBottle