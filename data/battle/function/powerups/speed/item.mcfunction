effect give @s absorption 8 1
effect give @s speed 8 1

playsound block.brewing_stand.brew master @a ~ ~ ~ 0.4 1.6
playsound minecraft:item.spear.lunge_3 master @a ~ ~ ~ .6 1.8
playsound minecraft:entity.breeze.charge master @a ~ ~ ~ 1 2
particle minecraft:instant_effect ~ ~0.5 ~ 0.5 0.8 0.5 1 50 normal
particle minecraft:enchanted_hit ~ ~0.5 ~ 0.5 0.8 0.5 1 50 normal
particle firework ~ ~-.7 ~ .7 .1 .7 1 25 normal @a

scoreboard players reset @s speedPowder