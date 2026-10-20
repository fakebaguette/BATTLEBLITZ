schedule function battle:lobby/chicken/sound 2t
execute as @e[tag=archeryGame] at @s run scoreboard players reset @a[distance=40..] chickenKills
execute as @a[scores={chickenKills=1..}] at @s run playsound block.note_block.pling master @s ~ ~ ~ 20 2
execute as @a[scores={chickenKills=1..}] at @s run title @s actionbar ["",{"text":"+1 Archery Point","color":"white"}]
execute as @a[scores={chickenKills=1..}] at @s run scoreboard players add @s chickenCount 1
scoreboard players reset @a chickenKills

execute as @e[tag=archeryGame] at @s run scoreboard players reset @a[distance=40..] pigKills
execute as @a[scores={pigKills=1..}] at @s run playsound block.note_block.chime master @s ~ ~ ~ 20 2
execute as @a[scores={pigKills=1..}] at @s run particle minecraft:crit ~ ~ ~ 0.5 0.8 0.5 1 50
execute as @a[scores={pigKills=1..}] at @s run title @s actionbar ["",{"text":"+5 Archery Points","color":"green"}]
execute as @a[scores={pigKills=1..}] at @s run scoreboard players add @s chickenCount 5
scoreboard players reset @a pigKills

execute as @e[tag=archeryGame] at @s run scoreboard players reset @a[distance=40..] cowKills
execute as @a[scores={cowKills=1..}] at @s run playsound block.note_block.bell master @s ~ ~ ~ 20 2
execute as @a[scores={cowKills=1..}] at @s run playsound block.note_block.chime master @s ~ ~ ~ 20 2
execute as @a[scores={cowKills=1..}] at @s run playsound block.note_block.pling master @s ~ ~ ~ 20 2
execute as @a[scores={cowKills=1..}] at @s run particle minecraft:enchanted_hit ~ ~ ~ 0.5 0.8 0.5 1 100
execute as @a[scores={cowKills=1..}] at @s run title @s actionbar ["",{"text":"+15 Archery Points","color":"gold"}]
execute as @a[scores={cowKills=1..}] at @s run scoreboard players add @s chickenCount 15
scoreboard players reset @a cowKills

execute as @e[tag=archeryGame] at @s run scoreboard players reset @a[distance=40..] foxKills
execute as @a[scores={foxKills=1..}] at @s run playsound block.note_block.chime master @s ~ ~ ~ 20 2
execute as @a[scores={foxKills=1..}] at @s run playsound block.note_block.bell master @s ~ ~ ~ 20 2
execute as @a[scores={foxKills=1..}] at @s run playsound block.note_block.pling master @s ~ ~ ~ 20 2
execute as @a[scores={foxKills=1..}] at @s run playsound block.note_block.bit master @s ~ ~ ~ 20 2
execute as @a[scores={foxKills=1..}] at @s run particle minecraft:crit ~ ~ ~ 0.5 0.8 0.5 1 100
execute as @a[scores={foxKills=1..}] at @s run particle totem_of_undying ~ ~ ~ 0.5 0.8 0.5 1 100
execute as @a[scores={foxKills=1..}] at @s run title @s actionbar ["",{"text":"+100 Archery Points","color":"yellow"}]
execute as @a[scores={foxKills=1..}] at @s run tellraw @a ["",{"selector":"@s"}," ",{"text":"killed a fox and got 100 Archery points!","color":"yellow"}]
execute as @a[scores={foxKills=1..}] at @s run scoreboard players add @s chickenCount 100
scoreboard players reset @a foxKills

execute as @e[tag=archeryGame] at @s run scoreboard players reset @a[distance=40..] tadpoleKills
execute as @a[scores={tadpoleKills=1..}] at @s run playsound block.note_block.bell master @s ~ ~ ~ 20 2
execute as @a[scores={tadpoleKills=1..}] at @s run playsound block.note_block.chime master @s ~ ~ ~ 20 2
execute as @a[scores={tadpoleKills=1..}] at @s run playsound block.note_block.pling master @s ~ ~ ~ 20 2
execute as @a[scores={tadpoleKills=1..}] at @s run particle totem_of_undying ~ ~ ~ 0.5 0.8 0.5 1 50
execute as @a[scores={tadpoleKills=1..}] at @s run particle flame ~ ~ ~ 0.5 0.8 0.5 1 100
execute as @a[scores={tadpoleKills=1..}] at @s run title @s actionbar ["",{"text":"+150 Archery Points","color":"aqua"}]
execute as @a[scores={tadpoleKills=1..}] at @s run tellraw @a ["",{"selector":"@s"}," ",{"text":"killed a tadpole and got 150 Archery points!","color":"aqua"}]
execute as @a[scores={tadpoleKills=1..}] at @s run scoreboard players add @s chickenCount 150
scoreboard players reset @a tadpoleKills

execute as @e[tag=archeryGame] at @s run scoreboard players reset @a[distance=40..] pandaKills
execute as @a[scores={pandaKills=1..}] at @s run playsound block.note_block.chime master @s ~ ~ ~ 20 2
execute as @a[scores={pandaKills=1..}] at @s run playsound block.note_block.bell master @s ~ ~ ~ 20 2
execute as @a[scores={pandaKills=1..}] at @s run playsound block.note_block.pling master @s ~ ~ ~ 20 2
execute as @a[scores={pandaKills=1..}] at @s run playsound block.note_block.bit master @s ~ ~ ~ 20 2
execute as @a[scores={pandaKills=1..}] at @s run playsound block.note_block.banjo master @s ~ ~ ~ 20 2
execute as @a[scores={pandaKills=1..}] at @s run playsound block.note_block.harp master @s ~ ~ ~ 20 2
execute as @a[scores={pandaKills=1..}] at @s run playsound block.note_block.cow_bell master @s ~ ~ ~ 20 2
execute as @a[scores={pandaKills=1..}] at @s run particle minecraft:crit ~ ~ ~ 0.5 0.8 0.5 1 100
execute as @a[scores={pandaKills=1..}] at @s run particle totem_of_undying ~ ~ ~ 0.5 0.8 0.5 1 200
execute as @a[scores={pandaKills=1..}] at @s run particle flame ~ ~ ~ 0.5 0.8 0.5 1 100
execute as @a[scores={pandaKills=1..}] at @s run particle soul_fire_flame ~ ~ ~ 0.5 0.8 0.5 1 100
execute as @a[scores={pandaKills=1..}] at @s run title @s actionbar ["",{"text":"+1000 Archery Points","color":"light_purple"}]
execute as @a[scores={pandaKills=1..}] at @s run tellraw @a ["",{"selector":"@s"}," ",{"text":"killed a panda and got 1000 Archery points!","color":"light_purple"}]
execute as @a[scores={pandaKills=1..}] at @s run scoreboard players add @s chickenCount 1000
scoreboard players reset @a pandaKills

execute as @e[tag=chickenKill] at @s unless block ~ ~-0.5 ~ air run kill @s

execute as @a[scores={chickenCount=1000..}] run advancement grant @s only battle:cosmetics/lobby/archery