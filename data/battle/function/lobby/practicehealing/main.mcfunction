schedule function battle:lobby/practicehealing/main 5t

scoreboard objectives add outOfCombat dummy
scoreboard objectives add takeDMG minecraft.custom:damage_taken
scoreboard objectives add dealDMG minecraft.custom:damage_dealt

execute as @a[tag=practicePvp] unless score @s outOfCombat matches 1..16 run scoreboard players add @s outOfCombat 0
execute as @a[tag=practicePvp] if score @s outOfCombat matches 0..15 run scoreboard players add @s outOfCombat 1

execute as @a[tag=practicePvp,scores={takeDMG=1..}] run scoreboard players reset @s outOfCombat
execute as @a[tag=practicePvp,scores={takeDMG=1..}] run scoreboard players reset @s takeDMG
execute as @a[tag=practicePvp,scores={takeDMG=1..}] run scoreboard players reset @s dealDMG

execute as @a[tag=practicePvp,scores={dealDMG=1..}] run scoreboard players reset @s outOfCombat
execute as @a[tag=practicePvp,scores={dealDMG=1..}] run scoreboard players reset @s takeDMG
execute as @a[tag=practicePvp,scores={dealDMG=1..}] run scoreboard players reset @s dealDMG

execute as @a[tag=practicePvp,scores={outOfCombat=16..}] run function battle:lobby/practicehealing/occur