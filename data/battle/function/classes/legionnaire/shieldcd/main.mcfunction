schedule function battle:classes/legionnaire/shieldcd/main 2t

scoreboard objectives add legion_shield_dura minecraft.custom:minecraft.damage_blocked_by_shield
scoreboard objectives add legion_shield_update minecraft.custom:minecraft.damage_blocked_by_shield
scoreboard objectives add legion_shield_cd dummy
scoreboard players add @a legion_shield_cd 0

execute as @a[tag=!legionnaire_class] run scoreboard players reset @s legion_shield_dura
execute as @a[tag=!legionnaire_class] run scoreboard players reset @s legion_shield_update
execute as @a[tag=!legionnaire_class] run scoreboard players reset @s legion_shield_cd

execute as @a[scores={legion_shield_update=1..}] if items entity @s weapon.* shield run title @s actionbar ["",{"text":"Lightweight Aegis","bold":true,"color":"gold"},{"text":" Use - ","color":"white"},{"color":"yellow","score":{"objective":"legion_shield_dura","name":"@s"}},{"color":"yellow","text":" / 50"}]
scoreboard players reset @a legion_shield_update

execute as @a[scores={legion_shield_dura=50..}] at @s run function battle:classes/legionnaire/shieldcd/occur