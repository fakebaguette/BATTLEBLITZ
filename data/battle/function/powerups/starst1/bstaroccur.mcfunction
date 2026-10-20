execute at @a[tag=BStarPowUp1,tag=Team1] as @e[type=item_display,nbt={item:{id:"minecraft:nether_star",components:{"minecraft:custom_data":{PowerUp:1b,BattleStar:1b}}}},tag=BattleStarEnabled] at @s run particle poof ~ ~ ~ 0.15 0.15 0.15 0.1 10 normal @a
execute as @a[tag=BStarPowUp1,tag=Team1] as @e[type=item_display,nbt={item:{id:"minecraft:nether_star",components:{"minecraft:custom_data":{PowerUp:1b,BattleStar:1b}}}},tag=BattleStarEnabled] at @s run particle minecraft:gust_emitter_small ~ ~ ~ 0.3 0.6 0.3 0 1 normal @a

execute as @a[tag=BStarPowUp1,tag=Team1] run playsound minecraft:block.amethyst_block.resonate block @s ~ ~ ~ 100 1.2
execute as @a[tag=BStarPowUp1,tag=Team1] run playsound minecraft:block.note_block.bell block @s ~ ~ ~ 100 1.4
execute as @a[tag=BStarPowUp1,tag=Team1] run playsound minecraft:block.note_block.chime block @s ~ ~ ~ 100 1.4
execute as @a[tag=BStarPowUp1,tag=Team1] run playsound minecraft:block.beacon.activate block @s ~ ~ ~ 100 1.2
execute as @a[tag=BStarPowUp1,tag=Team1] run scoreboard players add Team1Stars: starCountTeam1 5
execute as @a[tag=BStarPowUp1,tag=Team1] run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"You just collected a","color":"#F9CD71"},{"text":" Battle Star \u272f ","color":"gold"},{"text":"and got:\n- ","color":"#F9CD71"},{"text":"+5 BATTLESTARS ✯","bold":true,"color":"gold"},{"text":"\n- ","color":"#F9CD71"},{"text":"4 [HP]","color":"green"}]
execute as @a[tag=BStarPowUp1,tag=Team1] run effect give @s instant_health 1 0 true
execute as @a[tag=BstarPowUp1,tag=Team1] run function battle:ingame/playerdeath/cosmetics/award/checkstar

execute as @a[tag=BStarPowUp1,tag=Team1] at @s run kill @n[type=item_display,nbt={item:{id:"minecraft:nether_star",components:{"minecraft:custom_data":{PowerUp:1b,BattleStar:1b}}}},tag=BattleStarEnabled,distance=..2]
execute as @a[tag=BStarPowUp1,tag=Team1] at @s run kill @n[type=text_display,tag=BattleStar,tag=PowerUp,tag=BattleStarText,distance=..3]
execute as @a[tag=BStarPowUp1,tag=Team1] at @s run kill @n[type=text_display,tag=BattleStar,tag=PowerUp,tag=BottomText,distance=..3]
execute as @a[tag=BStarPowUp1,tag=Team1] at @s run kill @n[type=text_display,tag=BStarCount0,tag=PowerUp,tag=TopText,distance=..3]
execute as @a[tag=BStarPowUp1,tag=Team1] run tag @s remove BStarPowUp1

function battle:gameobjective/gameobjectiveextra/update/stars/call_update_stars