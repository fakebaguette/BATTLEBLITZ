scoreboard objectives add cava_mount_timer dummy

tag @s remove cava_has_steed

scoreboard players set @s cava_mount_timer 10
execute as @a[scores={cava_mount_timer=1..}] at @s run function battle:classes/cavalier/mount/item_cd/cd