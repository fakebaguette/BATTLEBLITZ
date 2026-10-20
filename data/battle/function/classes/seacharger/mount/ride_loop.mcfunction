execute if entity @e[type=nautilus,tag=seachSteed] run schedule function battle:classes/seacharger/mount/ride_loop 1t

scoreboard objectives add seach_nautilus_ride_time dummy
execute as @e[type=nautilus,tag=seachSteed] at @s run scoreboard players add @s seach_nautilus_ride_time 1

execute as @e[type=nautilus,tag=seachSteed,scores={seach_nautilus_ride_time=2}] at @s run function battle:classes/seacharger/mount/visfix
execute as @e[type=nautilus,tag=seachSteed,scores={seach_nautilus_ride_time=10}] at @s run kill @n[tag=seach_launch_nautilus] 
execute as @e[type=nautilus,tag=seachSteed,scores={seach_nautilus_ride_time=80..}] at @s run function battle:classes/seacharger/mount/kill_mount

execute as @e[type=nautilus,tag=seachSteed] at @s run function battle:classes/seacharger/mount/target/square
execute as @e[type=nautilus,tag=seachSteed,tag=mob_Team1] at @s positioned ^ ^ ^1 as @a[tag=!Team1,distance=..2.9,gamemode=adventure,tag=!seach_mount_hit] at @s run function battle:classes/seacharger/mount/target/on_target1
execute as @e[type=nautilus,tag=seachSteed,tag=mob_Team2] at @s positioned ^ ^ ^1 as @a[tag=!Team2,distance=..2.9,gamemode=adventure,tag=!seach_mount_hit] at @s run function battle:classes/seacharger/mount/target/on_target2

#execute as @a[tag=seacharger_class,tag=seach_has_steed] at @s on vehicle run rotate @s ~ ~

execute as @e[type=nautilus,tag=seachSteed,scores={seach_nautilus_ride_time=10..}] at @s if block ^ ^-0.25 ^0.5 #battle:nonsolids run tp @s ^ ^ ^0.3
execute as @a[tag=seacharger_class,tag=seach_has_steed] at @s if predicate battle:seacharger/right on vehicle at @s[scores={seach_nautilus_ride_time=10..}] if block ^-0.2 ^ ^ #battle:nonsolids run tp @s ^-0.2 ^ ^
execute as @a[tag=seacharger_class,tag=seach_has_steed] at @s if predicate battle:seacharger/left on vehicle at @s[scores={seach_nautilus_ride_time=10..}] if block ^0.2 ^ ^ #battle:nonsolids run tp @s ^0.2 ^ ^
execute as @a[tag=seacharger_class,tag=seach_has_steed] at @s if predicate battle:jump on vehicle at @s[scores={seach_nautilus_ride_time=10..}] if block ~ ~0.15 ~ #battle:nonsolids run tp @s ~ ~0.15 ~

execute as @e[tag=seach_model] at @s unless entity @e[type=nautilus,tag=seachSteed,distance=..2] run kill @s