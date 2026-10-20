execute if entity @e[tag=exposure_trap] run schedule function battle:classes/trapshooter/trap/run 1t

execute as @e[tag=wt_change,type=block_display] at @s if block ~ ~-0.5 ~ #slabs if block ~ ~1 ~ #air run tp @s ~ ~-0.02 ~

#execute as @e[tag=exposure_trap] at @s run tp @s ~ ~ ~ ~20 ~
#execute as @e[tag=exposure_trap] at @s run particle minecraft:ash ^ ^.2 ^1.25 0.01 0.01 0.01 .01 1 normal @a

execute as @e[tag=exposure_trap,tag=TrapTeam1] at @s if entity @a[tag=!Team1,distance=..1.25] run effect give @a[tag=Team1,tag=trapshooter_class] speed 2 0 true
execute as @e[tag=exposure_trap,tag=TrapTeam2] at @s if entity @a[tag=!Team2,distance=..1.25] run effect give @a[tag=Team2,tag=trapshooter_class] speed 2 0 true

execute as @e[tag=exposure_trap,tag=TrapTeam1] at @s if entity @a[tag=!Team1,distance=..1.25] run function battle:classes/trapshooter/trap/hit1
execute as @e[tag=exposure_trap,tag=TrapTeam2] at @s if entity @a[tag=!Team2,distance=..1.25] run function battle:classes/trapshooter/trap/hit2