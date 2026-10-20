schedule function battle:classes/trapshooter/crossbow/main 1t

scoreboard objectives add trap_use_crossbow minecraft.used:minecraft.crossbow
scoreboard objectives add trap_arrow_score dummy

execute as @a[nbt=!{Inventory:[{id:"minecraft:crossbow",components:{"minecraft:custom_data":{TrapCrossbow:1b,NoDrop:1b}}}]}] run scoreboard players reset @s trap_use_crossbow
execute as @a[scores={trap_use_crossbow=1..},nbt={Inventory:[{id:"minecraft:crossbow",components:{"minecraft:custom_data":{TrapCrossbow:1b,NoDrop:1b}}}]}] run tag @e[type=arrow,sort=nearest,tag=!trapArrow] add trapArrow
execute as @a[scores={trap_use_crossbow=1..},nbt={Inventory:[{id:"minecraft:crossbow",components:{"minecraft:custom_data":{TrapCrossbow:1b,NoDrop:1b}}}]}] run scoreboard players add @s trap_arrow_score 1

#stores main arrow motion into interaction
execute as @e[type=arrow,tag=trapArrow] run scoreboard players add @s trap_arrow_score 1
execute as @e[type=arrow,tag=trapArrow] at @s if score @s trap_arrow_score matches 2 run function battle:classes/trapshooter/crossbow/store

#interaction stays for 13 ticks
execute as @e[tag=trapArrowStorage,type=interaction] run scoreboard players add @s trap_arrow_score 1
execute as @e[tag=trapArrowStorage,type=interaction] run tag @s remove trapArrowNewStorage

execute as @a[scores={trap_use_crossbow=1..,trap_arrow_score=5},nbt={Inventory:[{id:"minecraft:crossbow",components:{"minecraft:custom_data":{TrapCrossbow:1b,NoDrop:1b}}}]}] at @s if entity @e[type=arrow,tag=trapArrow] run particle minecraft:sonic_boom ^ ^1.5 ^3 0.01 0.01 0.01 0.1 1 normal @a

#Summon splash potion after x time and initialize
execute as @a[tag=Team1,scores={trap_use_crossbow=1..,trap_arrow_score=12},nbt={Inventory:[{id:"minecraft:crossbow",components:{"minecraft:custom_data":{TrapCrossbow:1b,NoDrop:1b}}}]}] at @s if entity @e[type=arrow,tag=trapArrow] run summon splash_potion ^ ^1.5 ^1 {Glowing:1b,Tags:["copyTrapArrow","copyTrapArrowTeam1","new_splash","splash_active"],Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{custom_color:9394778},enchantment_glint_override:true}}}
execute as @a[tag=Team2,scores={trap_use_crossbow=1..,trap_arrow_score=12},nbt={Inventory:[{id:"minecraft:crossbow",components:{"minecraft:custom_data":{TrapCrossbow:1b,NoDrop:1b}}}]}] at @s if entity @e[type=arrow,tag=trapArrow] run summon splash_potion ^ ^1.5 ^1 {Glowing:1b,Tags:["copyTrapArrow","copyTrapArrowTeam2","new_splash","splash_active"],Item:{id:"minecraft:splash_potion",count:1,components:{"minecraft:potion_contents":{custom_color:9394778},enchantment_glint_override:true}}}
execute as @e[type=splash_potion,tag=copyTrapArrow,tag=new_splash] run function battle:other/visfix/main
execute as @e[type=splash_potion,tag=copyTrapArrow,tag=new_splash] at @s run function battle:classes/trapshooter/crossbow/init_splash

#Ticking for splash
execute as @e[type=splash_potion,tag=copyTrapArrow] run scoreboard players add @s trap_arrow_score 1
execute as @e[type=splash_potion,tag=copyTrapArrow,scores={trap_arrow_score=2..}] at @s run particle minecraft:poof ~ ~ ~ 0.01 0.01 0.01 0.1 1 normal @a
execute as @e[type=splash_potion,tag=copyTrapArrow,scores={trap_arrow_score=2..}] at @s run particle minecraft:instant_effect ~ ~ ~ 0.2 0.2 0.2 0.1 2 normal @a

execute as @e[type=splash_potion,tag=copyTrapArrow,scores={trap_arrow_score=2..}] at @s run particle minecraft:sculk_charge_pop ~ ~ ~ 0.2 0.2 0.2 0.1 1 normal @a


#If hit
execute as @e[tag=trapshooter_hitbox_T1,tag=trapshooter_hitbox_active,tag=!trapshooter_hitbox_hit] at @s if data entity @s attack on attacker if entity @s[tag=!Team1] as @n at @s run function battle:classes/trapshooter/crossbow/was_hit
execute as @e[tag=trapshooter_hitbox_T2,tag=trapshooter_hitbox_active,tag=!trapshooter_hitbox_hit] at @s if data entity @s attack on attacker if entity @s[tag=!Team2] as @n at @s run function battle:classes/trapshooter/crossbow/was_hit

#Nearb
execute as @e[tag=trapshooter_hitbox_T1,tag=trapshooter_hitbox_active,tag=!trapshooter_hitbox_hit] at @s positioned ~ ~-1 ~ if entity @a[tag=!Team1,distance=..1.25] run execute on vehicle run data merge entity @s {Motion:[0,-0.2,0]}
execute as @e[tag=trapshooter_hitbox_T2,tag=trapshooter_hitbox_active,tag=!trapshooter_hitbox_hit] at @s positioned ~ ~-1 ~ if entity @a[tag=!Team2,distance=..1.25] run execute on vehicle run data merge entity @s {Motion:[0,-0.2,0]}

execute as @e[tag=trapshooter_hitbox_T1,tag=trapshooter_hitbox_active,tag=!trapshooter_hitbox_hit] at @s unless predicate battle:trapshooter/is_riding positioned ~ ~-1 ~ as @a[tag=!Team1,distance=..2.5] run damage @s 1 magic by @n[tag=trapshooter_class,tag=Team1]
execute as @e[tag=trapshooter_hitbox_T1,tag=trapshooter_hitbox_active,tag=!trapshooter_hitbox_hit] at @s unless predicate battle:trapshooter/is_riding positioned ~ ~-1 ~ run effect give @a[tag=!Team1,distance=..2.5] minecraft:wither 1 7
execute as @e[tag=trapshooter_hitbox_T1,tag=trapshooter_hitbox_active,tag=!trapshooter_hitbox_hit] at @s unless predicate battle:trapshooter/is_riding positioned ~ ~-1 ~ run effect give @a[tag=!Team1,distance=..2.5] slowness 2 2
execute as @e[tag=trapshooter_hitbox_T1,tag=trapshooter_hitbox_active] at @s unless predicate battle:trapshooter/is_riding run kill @s

execute as @e[tag=trapshooter_hitbox_T2,tag=trapshooter_hitbox_active,tag=!trapshooter_hitbox_hit] at @s unless predicate battle:trapshooter/is_riding positioned ~ ~-1 ~ as @a[tag=!Team2,distance=..2.5] run damage @s 1 magic by @n[tag=trapshooter_class,tag=Team2]
execute as @e[tag=trapshooter_hitbox_T2,tag=trapshooter_hitbox_active,tag=!trapshooter_hitbox_hit] at @s unless predicate battle:trapshooter/is_riding positioned ~ ~-1 ~ run effect give @a[tag=!Team2,distance=..2.5] minecraft:wither 1 7
execute as @e[tag=trapshooter_hitbox_T2,tag=trapshooter_hitbox_active,tag=!trapshooter_hitbox_hit] at @s unless predicate battle:trapshooter/is_riding positioned ~ ~-1 ~ run effect give @a[tag=!Team2,distance=..2.5] slowness 2 2
execute as @e[tag=trapshooter_hitbox_T2,tag=trapshooter_hitbox_active] at @s unless predicate battle:trapshooter/is_riding run kill @s

#kill after 4 sec, kill interaction 12
execute as @e[type=arrow,tag=trapArrow] if score @s trap_arrow_score matches 80.. run kill @s
execute as @e[type=splash_potion,tag=copyTrapArrow] if score @s trap_arrow_score matches 80.. run kill @s
execute as @e[tag=trapArrowStorage,type=interaction,scores={trap_arrow_score=13..}] run kill @s

#reset scores, edit the traparrowscore
execute as @a[scores={trap_use_crossbow=1..,trap_arrow_score=12..},nbt={Inventory:[{id:"minecraft:crossbow",components:{"minecraft:custom_data":{TrapCrossbow:1b,NoDrop:1b}}}]}] run scoreboard players reset @s trap_use_crossbow
execute as @a[scores={trap_arrow_score=12..},nbt={Inventory:[{id:"minecraft:crossbow",components:{"minecraft:custom_data":{TrapCrossbow:1b,NoDrop:1b}}}]}] run scoreboard players reset @s trap_arrow_score