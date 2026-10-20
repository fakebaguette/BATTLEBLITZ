schedule function battle:powerups/starst1/bstarenable 5t

scoreboard objectives add BStarCount dummy

execute as @e[type=item_display,nbt={item:{id:"minecraft:nether_star",components:{"minecraft:custom_data":{PowerUp:1b,BattleStar:1b}}}}] at @s unless score @s BStarCount matches 0.. run scoreboard players add @s BStarCount 0 
execute as @e[type=item_display,nbt={item:{id:"minecraft:nether_star",components:{"minecraft:custom_data":{PowerUp:1b,BattleStar2:1b}}}}] at @s unless score @s BStarVanish matches 0.. run scoreboard players add @s BStarVanish 0

execute as @e[type=item_display,nbt={item:{id:"minecraft:nether_star",components:{"minecraft:custom_data":{PowerUp:1b,BattleStar:1b}}}},scores={BStarCount=0..12}] run scoreboard players add @s BStarCount 1
execute as @e[type=item_display,nbt={item:{id:"minecraft:nether_star",components:{"minecraft:custom_data":{PowerUp:1b,BattleStar:1b}}}},scores={BStarCount=4}] at @s run summon text_display ~ ~.8 ~ {default_background:1b,shadow:0b,see_through:0b,billboard:"center",Tags:["PowerUp","BStarCount2","TopText"],text:{"text":"Enabling in 2","color":"white","bold":false,"italic":false}}
execute as @e[type=item_display,nbt={item:{id:"minecraft:nether_star",components:{"minecraft:custom_data":{PowerUp:1b,BattleStar:1b}}}},scores={BStarCount=4}] at @s run kill @e[type=text_display,tag=PowerUp,tag=BStarCount3,tag=TopText,limit=1,distance=..2,sort=nearest] 

execute as @e[type=item_display,nbt={item:{id:"minecraft:nether_star",components:{"minecraft:custom_data":{PowerUp:1b,BattleStar:1b}}}},scores={BStarCount=8}] at @s run summon text_display ~ ~.8 ~ {default_background:1b,shadow:0b,see_through:0b,billboard:"center",Tags:["PowerUp","BStarCount1","TopText"],text:{"text":"Enabling in 1","color":"white","bold":false,"italic":false}}
execute as @e[type=item_display,nbt={item:{id:"minecraft:nether_star",components:{"minecraft:custom_data":{PowerUp:1b,BattleStar:1b}}}},scores={BStarCount=8}] at @s run kill @e[type=text_display,tag=PowerUp,tag=BStarCount2,tag=TopText,limit=1,distance=..2,sort=nearest] 

execute as @e[type=item_display,nbt={item:{id:"minecraft:nether_star",components:{"minecraft:custom_data":{PowerUp:1b,BattleStar:1b}}}},scores={BStarCount=12}] at @s run tag @s add BattleStarEnabled
execute as @e[type=item_display,nbt={item:{id:"minecraft:nether_star",components:{"minecraft:custom_data":{PowerUp:1b,BattleStar:1b}}}},scores={BStarCount=12}] at @s run summon text_display ~ ~.8 ~ {default_background:1b,shadow:0b,see_through:0b,billboard:"center",Tags:["PowerUp","BStarCount0","TopText"],text:{"text":"COLLECT NOW","color":"green","bold":true,"italic":false}}
execute as @e[type=item_display,nbt={item:{id:"minecraft:nether_star",components:{"minecraft:custom_data":{PowerUp:1b,BattleStar:1b}}}},scores={BStarCount=12}] at @s run kill @e[type=text_display,tag=PowerUp,tag=BStarCount1,tag=TopText,limit=1,distance=..2,sort=nearest] 

execute as @e[type=item_display,nbt={item:{id:"minecraft:nether_star",components:{"minecraft:custom_data":{PowerUp:1b,BattleStar:1b}}}},scores={BStarVanish=0..159}] run scoreboard players add @s BStarVanish 1
execute as @e[type=item_display,nbt={item:{id:"minecraft:nether_star",components:{"minecraft:custom_data":{PowerUp:1b,BattleStar:1b}}}},scores={BStarVanish=160}] run kill @s