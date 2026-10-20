schedule function battle:classes/northman/shieldcd/main 2t

scoreboard objectives add north_shield_dura minecraft.custom:minecraft.damage_blocked_by_shield
scoreboard objectives add north_shield_update minecraft.custom:minecraft.damage_blocked_by_shield
scoreboard objectives add north_shield_cd dummy
scoreboard players add @a north_shield_cd 0

execute as @a[tag=!northman_class] run scoreboard players reset @s north_shield_dura
execute as @a[tag=!northman_class] run scoreboard players reset @s north_shield_update
execute as @a[tag=!northman_class] run scoreboard players reset @s north_shield_cd

execute as @a[scores={north_shield_update=1..}] if items entity @s weapon.* shield run title @s actionbar ["",{"text":"Hefty Shield","bold":true,"color":"blue"},{"text":" Use - ","color":"white"},{"color":"yellow","score":{"objective":"north_shield_dura","name":"@s"}},{"text":" / 100","color":"yellow"}]
scoreboard players reset @a north_shield_update

execute as @a[scores={north_shield_dura=100..}] at @s run function battle:classes/northman/shieldcd/occur