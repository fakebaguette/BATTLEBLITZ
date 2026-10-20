schedule function battle:powerups/starst1/bstar 2t

execute as @e[type=item_display,nbt={item:{id:"minecraft:nether_star",components:{"minecraft:custom_data":{PowerUp:1b,BattleStar:1b}}}},tag=BattleStarEnabled] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[type=item_display,nbt={item:{id:"minecraft:nether_star",components:{"minecraft:custom_data":{PowerUp:1b,BattleStar:1b}}}},tag=!BattleStarEnabled] at @s run tp @s ~ ~ ~ ~10 ~



execute as @e[type=item_display,nbt={item:{id:"minecraft:nether_star",components:{"minecraft:custom_data":{PowerUp:1b,BattleStar:1b}}}},tag=!BattleStarEnabled] at @s run particle end_rod ^ ^1 ^1 0.2 0.2 0.2 0.1 1 normal @a
execute as @e[type=item_display,nbt={item:{id:"minecraft:nether_star",components:{"minecraft:custom_data":{PowerUp:1b,BattleStar:1b}}}},tag=!BattleStarEnabled] at @s run particle end_rod ^ ^-1.2 ^1 0.2 0.2 0.2 0.1 1 normal @a

execute as @e[type=item_display,nbt={item:{id:"minecraft:nether_star",components:{"minecraft:custom_data":{PowerUp:1b,BattleStar:1b}}}},tag=BattleStarEnabled] at @s run particle totem_of_undying ^ ^1 ^1 0.2 0.2 0.2 0.1 1 normal @a

execute as @e[type=item_display,nbt={item:{id:"minecraft:nether_star",components:{"minecraft:custom_data":{PowerUp:1b,BattleStar:1b}}}},tag=BattleStarEnabled] at @s as @a[distance=..2,limit=1,sort=nearest,tag=Team1,gamemode=adventure,tag=inGame] at @s run tag @s add BStarPowUp1
execute as @e[type=item_display,nbt={item:{id:"minecraft:nether_star",components:{"minecraft:custom_data":{PowerUp:1b,BattleStar:1b}}}},tag=BattleStarEnabled] at @s as @a[distance=..2,limit=1,sort=nearest,tag=Team1,gamemode=adventure,tag=inGame] at @s run function battle:powerups/starst1/bstaroccur
