scoreboard objectives add seach_mount_time dummy
scoreboard players set @s seach_mount_time 15
execute as @a[scores={seach_mount_time=1..}] at @s run function battle:classes/seacharger/mount/item_cd/cd