execute store result entity @s Motion[0] double 0.001 run scoreboard players get @e[tag=trapArrowStorage,type=interaction,limit=1,scores={trap_arrow_score=11}] trapArrowMotionX
execute store result entity @s Motion[1] double 0.001 run scoreboard players get @e[tag=trapArrowStorage,type=interaction,limit=1,scores={trap_arrow_score=11}] trapArrowMotionY
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @e[tag=trapArrowStorage,type=interaction,limit=1,scores={trap_arrow_score=11}] trapArrowMotionZ

playsound minecraft:block.bubble_column.bubble_pop master @a ~ ~ ~ 5 1.1
playsound minecraft:item.bucket.empty_powder_snow master @a ~ ~ ~ 1 0.8
playsound minecraft:entity.splash_potion.throw master @a ~ ~ ~ 0.5 0.7
playsound minecraft:item.nether_wart.plant master @a ~ ~ ~ 5 1.1

execute at @s summon interaction run function battle:classes/trapshooter/crossbow/extra
tag @s remove new_splash