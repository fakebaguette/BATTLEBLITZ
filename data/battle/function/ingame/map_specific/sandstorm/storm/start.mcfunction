schedule function battle:ingame/map_specific/sandstorm/storm/start 5t

execute as @a[tag=Participant] at @s positioned over world_surface if entity @s[dy=50] run function battle:ingame/map_specific/sandstorm/storm/storm
weather rain