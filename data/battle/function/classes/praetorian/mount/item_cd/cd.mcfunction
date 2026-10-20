execute if entity @s[scores={praet_mount_timer=1..}] run schedule function battle:classes/praetorian/mount/item_cd/loop 1s

scoreboard players remove @s praet_mount_timer 1

title @s actionbar ["",{"text":"Mount Cavalry","color":"#FF6600","bold":true}," Cooldown - ",{"score":{"name":"@s","objective":"praet_mount_timer"},"color":"gold"}]
execute as @s[scores={praet_mount_timer=..0}] run title @s actionbar ["",{"text":"Mount Cavalry","color":"#FF6600","bold":true}," Cooldown - ",{"text":"READY","color":"green"}]

execute as @s[scores={praet_mount_timer=..0}] run playsound entity.horse.saddle master @s ~ ~ ~ 1 1.6
execute as @s[scores={praet_mount_timer=..0}] run advancement revoke @s only battle:praetorian/mount

scoreboard players reset @s[scores={praet_mount_timer=..0}] praet_mount_timer