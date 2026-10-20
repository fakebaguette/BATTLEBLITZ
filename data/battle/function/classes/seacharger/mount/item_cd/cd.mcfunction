execute if entity @s[scores={seach_mount_time=1..}] run schedule function battle:classes/seacharger/mount/item_cd/loop 1s

scoreboard players remove @s seach_mount_time 1

title @s actionbar ["",{"text":"Mount Nautilus","color":"#45fe98","bold":true}," Cooldown - ",{"score":{"name":"@s","objective":"seach_mount_time"},"color":"gold"}]
execute as @s[scores={seach_mount_time=..0}] run title @s actionbar ["",{"text":"Mount Nautilus","color":"#45fe98","bold":true}," Cooldown - ",{"text":"READY","color":"green"}]

execute at @s[scores={seach_mount_time=..0}] run playsound entity.horse.saddle master @s ~ ~ ~ 1 1.4
execute as @s[scores={seach_mount_time=..0}] run advancement revoke @s only battle:seacharger/mount

scoreboard players reset @s[scores={seach_mount_time=..0}] seach_mount_time