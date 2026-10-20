schedule function battle:classes/seacharger/shieldcd/main 2t

scoreboard objectives add seach_shield_dura minecraft.custom:minecraft.damage_blocked_by_shield
scoreboard objectives add seach_shield_update minecraft.custom:minecraft.damage_blocked_by_shield
scoreboard objectives add seach_shield_cd dummy
scoreboard players add @a seach_shield_cd 0

execute as @a[tag=!seacharger_class] run scoreboard players reset @s seach_shield_dura
execute as @a[tag=!seacharger_class] run scoreboard players reset @s seach_shield_update
execute as @a[tag=!seacharger_class] run scoreboard players reset @s seach_shield_cd

execute as @a[scores={seach_shield_dura=1..}] unless items entity @s weapon.* shield run scoreboard players reset @s seach_shield_dura
execute as @a[scores={seach_shield_update=1..}] unless items entity @s weapon.* shield run scoreboard players reset @s seach_shield_update
execute as @a[scores={seach_shield_update=1..}] if items entity @s weapon.* shield run title @s actionbar ["",{"text":"Lightweight Targe","bold":true,"color":"#08BF88"},{"text":" Use - ","color":"white"},{"color":"dark_aqua","score":{"objective":"seach_shield_dura","name":"@s"}},{"text":" / 100","color":"dark_aqua"}]
scoreboard players reset @a seach_shield_update

execute as @a[scores={seach_shield_dura=100..}] at @s run function battle:classes/seacharger/shieldcd/occur