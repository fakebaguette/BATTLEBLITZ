execute if entity @s[scores={cava_mount_timer=1..}] run schedule function battle:classes/cavalier/mount/item_cd/loop 1s

scoreboard players remove @s cava_mount_timer 1

title @s actionbar ["",{"text":"Mount Camel","color":"#FFD943","bold":true}," Cooldown - ",{"score":{"name":"@s","objective":"cava_mount_timer"},"color":"gold"}]
execute as @s[scores={cava_mount_timer=..0}] run title @s actionbar ["",{"text":"Mount Camel","color":"#FFD943","bold":true}," Cooldown - ",{"text":"READY","color":"green"}]

execute as @s[scores={cava_mount_timer=..0}] run playsound entity.camel.saddle master @s ~ ~ ~ 1 1.6
execute as @s[scores={cava_mount_timer=..0}] run advancement revoke @s only battle:cavalier/mount

scoreboard players reset @s[scores={cava_mount_timer=..0}] cava_mount_timer