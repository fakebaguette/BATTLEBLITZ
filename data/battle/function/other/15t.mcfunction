schedule function battle:other/15t 15t

function battle:ingame/detect

execute if score .toggle toggleMap matches 5 as @a[tag=Participant,gamemode=adventure] at @e[type=minecraft:interaction,tag=map5CornerWarning] if entity @s[dx=61,dy=50,dz=27] run title @s times 0 20 10
execute if score .toggle toggleMap matches 5 as @a[tag=Participant,gamemode=adventure] at @e[type=minecraft:interaction,tag=map5CornerWarning] if entity @s[dx=61,dy=50,dz=27] run title @s actionbar ["",{"text":"WARNING ","bold":true,"color":"red"},{"text":"☠","color":"red"}," - You are at the edge of the map and can fall off!"]
execute if score .toggle toggleMap matches 5 as @a[tag=Participant,gamemode=adventure] at @e[type=minecraft:interaction,tag=map5CornerWarning] if entity @s[dx=61,dy=25,dz=27] run kill @s

execute if entity @a[tag=inGame] run function battle:ingame/enablefunction/general
execute unless entity @a[tag=inGame] run function battle:ingame/disablefunction/general

scoreboard objectives add firstjoin dummy
execute as @a unless score @s firstjoin matches 1.. run function battle:reset/firstjoin

#advancement
execute as @a[scores={parkourCount=100..}] run advancement grant @s only battle:cosmetics/lobby/parkour
execute as @a[scores={pvpKills=30..}] run advancement grant @s only battle:cosmetics/lobby/pvp

#powup particles
execute at @a[nbt={Inventory:[{id:"minecraft:splash_potion",components:{"minecraft:custom_data":{DecayPotion:1b}}}]}] run particle minecraft:sculk_soul ~ ~0.5 ~ .01 .01 .01 0.1 1 normal @a
execute at @e[type=item,nbt={Item:{id:"minecraft:splash_potion",components:{"minecraft:custom_data":{DecayPotion:1b}}}}] run particle minecraft:sculk_soul ~ ~ ~ .01 .01 .01 0.1 1 normal @a

execute at @a[nbt={Inventory:[{id:"minecraft:golden_apple",components:{"minecraft:custom_data":{Enhanced:1b}}}]}] run particle minecraft:totem_of_undying ~ ~0.5 ~ .1 .1 .1 0.4 1 normal @a
execute at @e[type=item,nbt={Item:{id:"minecraft:golden_apple",components:{"minecraft:custom_data":{Enhanced:1b}}}}] run particle minecraft:totem_of_undying ~ ~ ~ .1 .1 .1 0.4 1 normal @a

execute at @a[nbt={Inventory:[{id:"minecraft:experience_bottle",components:{"minecraft:custom_data":{LightBottle:1b}}}]}] run particle minecraft:end_rod ~ ~ ~ .05 .05 .05 0.1 1 normal @a
execute at @e[type=item,nbt={Item:{id:"minecraft:experience_bottle",components:{"minecraft:custom_data":{LightBottle:1b}}}}] run particle minecraft:end_rod ~ ~ ~ .05 .05 .05 0.1 1 normal @a

execute at @a[nbt={Inventory:[{id:"minecraft:pufferfish",components:{"minecraft:custom_data":{Pufferfish:1b}}}]}] run particle minecraft:dust{color:[0.988,0.996,0.698],scale:2} ~ ~ ~ .05 .05 .05 0.1 2 normal @a
execute at @e[type=item,nbt={Item:{id:"minecraft:pufferfish",components:{"minecraft:custom_data":{Pufferfish:1b}}}}] run particle minecraft:dust{color:[0.988,0.996,0.698],scale:2} ~ ~ ~ .05 .05 .05 0.1 2 normal @a

execute at @a[nbt={Inventory:[{id:"minecraft:warped_fungus",components:{"minecraft:custom_data":{Shroom:1b}}}]}] run particle witch ~ ~ ~ .05 .05 .05 0.1 2 normal @a
execute at @e[type=item,nbt={Item:{id:"minecraft:warped_fungus",components:{"minecraft:custom_data":{Shroom:1b}}}}] run particle witch ~ ~ ~ .05 .05 .05 0.1 2 normal @a

execute at @a[nbt={Inventory:[{id:"minecraft:skull_pottery_sherd",components:{"minecraft:custom_data":{PharCurse:1b}}}]}] run particle infested ~ ~ ~ .05 .05 .05 0.1 2 normal @a
execute at @e[type=item,nbt={Item:{id:"minecraft:skull_pottery_sherd",components:{"minecraft:custom_data":{PharCurse:1b}}}}] run particle infested ~ ~ ~ .05 .05 .05 0.1 2 normal @a

execute at @a[nbt={Inventory:[{id:"minecraft:tnt",components:{"minecraft:custom_data":{PharCurse:1b}}}]}] run particle entity_effect{color:[0.161,0.549,0.290,1.00]} ~ ~ ~ 0.1 0.1 0.1 0 2 normal @a
execute at @e[type=item,nbt={Item:{id:"minecraft:tnt",components:{"minecraft:custom_data":{PharCurse:1b}}}}] run particle entity_effect{color:[0.161,0.549,0.290,1.00]} ~ ~ ~ 0.1 0.1 0.1 0 2 normal @a


#failsafe
execute as @e[type=interaction,tag=PowerUp] at @s unless entity @e[type=item_display,distance=..3] run kill @s

execute as @e[type=interaction,tag=outOfLobby] at @s as @a[tag=!operator,distance=..30] run tp @s 0 104 166