scoreboard objectives add game_tips dummy

execute as @e[type=interaction,tag=tipsClick] at @s if data entity @s attack run particle enchanted_hit ~ ~.5 ~ 0.2 0.2 0.2 0 10 normal
execute as @e[type=interaction,tag=tipsClick] at @s if data entity @s interaction run particle enchanted_hit ~ ~.5 ~ 0.2 0.2 0.2 0 10 normal
execute as @e[type=interaction,tag=tipsClick] at @s if data entity @s attack run playsound block.note_block.pling master @a[distance=..20] ~ ~ ~ 1 1.9
execute as @e[type=interaction,tag=tipsClick] at @s if data entity @s interaction run playsound block.note_block.pling master @a[distance=..20] ~ ~ ~ 1 1.9

execute as @e[type=interaction,tag=tipsClick] on attacker run function battle:lobby/tips/tips
execute as @e[type=interaction,tag=tipsClick] on target run function battle:lobby/tips/tips

execute as @e[type=interaction,tag=tipsClick] run data remove entity @s attack
execute as @e[type=interaction,tag=tipsClick] run data remove entity @s interaction