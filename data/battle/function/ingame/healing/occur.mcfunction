#Default, no power
execute as @s[gamemode=adventure,scores={health=..19}] unless score .toggle toggleHalf matches 1 unless score .toggle toggleDouble matches 1 at @s run function battle:ingame/healing/heal
#Default, power
execute as @s[gamemode=adventure,scores={health=..23},tag=HealthBoostPermBuff1] unless score .toggle toggleHalf matches 1 unless score .toggle toggleDouble matches 1 at @s run function battle:ingame/healing/heal
execute as @s[gamemode=adventure,scores={health=..27},tag=HealthBoostPermBuff2] unless score .toggle toggleHalf matches 1 unless score .toggle toggleDouble matches 1 at @s run function battle:ingame/healing/heal

#Half, no power
execute as @s[gamemode=adventure,scores={health=..9}] if score .toggle toggleHalf matches 1 at @s run function battle:ingame/healing/heal
#Half, power
execute as @s[gamemode=adventure,scores={health=..13},tag=HealthBoostPermBuff1] if score .toggle toggleHalf matches 1 at @s run function battle:ingame/healing/heal
execute as @s[gamemode=adventure,scores={health=..17},tag=HealthBoostPermBuff2] if score .toggle toggleHalf matches 1 at @s run function battle:ingame/healing/heal

#Double, no power
execute as @s[gamemode=adventure,scores={health=..39}] if score .toggle toggleDouble matches 1 at @s run function battle:ingame/healing/heal
#Double, power
execute as @s[gamemode=adventure,scores={health=..43},tag=HealthBoostPermBuff1] if score .toggle toggleDouble matches 1 at @s run function battle:ingame/healing/heal
execute as @s[gamemode=adventure,scores={health=..47},tag=HealthBoostPermBuff2] if score .toggle toggleDouble matches 1 at @s run function battle:ingame/healing/heal


execute as @s run scoreboard players reset @s outOfCombat
execute as @s run scoreboard players reset @s takeDMG
execute as @s run scoreboard players reset @s dealDMG