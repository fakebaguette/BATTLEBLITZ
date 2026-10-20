scoreboard players add @s praet_use_attack 1
playsound minecraft:block.glass.break master @a[distance=..5] ~ ~ ~ 0.5 0
playsound minecraft:entity.player.attack.crit master @a[distance=..5] ~ ~ ~ 0.5 0
playsound minecraft:entity.player.levelup master @a[distance=..5] ~ ~ ~ 0.1 1.9
particle entity_effect{color:[0.161,0.549,0.290,1.00]} ~ ~.5 ~ 0.1 0.1 0.1 0.07 50 normal @a

function battle:classes/praetorian/poison/run