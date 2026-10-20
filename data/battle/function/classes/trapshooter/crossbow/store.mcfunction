scoreboard objectives add trapArrowMotionX dummy
scoreboard objectives add trapArrowMotionY dummy
scoreboard objectives add trapArrowMotionZ dummy

summon interaction ~ ~ ~ {width:.1f,height:.1f,Tags:["trapArrowStorage","trapArrowNewStorage"]}
execute store result score @e[tag=trapArrowNewStorage,type=interaction,limit=1,distance=..1] trapArrowMotionX run data get entity @s Motion[0] 600
execute store result score @e[tag=trapArrowNewStorage,type=interaction,limit=1,distance=..1] trapArrowMotionY run data get entity @s Motion[1] 1000
execute store result score @e[tag=trapArrowNewStorage,type=interaction,limit=1,distance=..1] trapArrowMotionZ run data get entity @s Motion[2] 600
#600 900 600