particle minecraft:dust{color:[0.137,0.588,0.961],scale:1} ~ ~ ~ 2 2 2 0.1 100 normal @a
particle minecraft:witch ~ ~ ~ 2 2 2 1 100 normal @a
particle minecraft:dust{color:[0.82,0.055,0.757],scale:1} ~ ~ ~ .5 .5 .5 0.1 100 normal @a
playsound minecraft:entity.illusioner.mirror_move master @a ~ ~ ~ 1 1.2
playsound minecraft:entity.illusioner.prepare_mirror master @a ~ ~ ~ 1 1

execute at @s[tag=shroom_Red] as @a[distance=..3,team=!Red] run function battle:powerups/shroom/effect
execute at @s[tag=shroom_Aqua] as @a[distance=..3,team=!Aqua] run function battle:powerups/shroom/effect
execute at @s[tag=shroom_Lime] as @a[distance=..3,team=!Lime] run function battle:powerups/shroom/effect
execute at @s[tag=shroom_Magenta] as @a[distance=..3,team=!Magenta] run function battle:powerups/shroom/effect
execute at @s[tag=shroom_Gold] as @a[distance=..3,team=!Gold] run function battle:powerups/shroom/effect
execute at @s[tag=shroom_Yellow] as @a[distance=..3,team=!Yellow] run function battle:powerups/shroom/effect

kill @s