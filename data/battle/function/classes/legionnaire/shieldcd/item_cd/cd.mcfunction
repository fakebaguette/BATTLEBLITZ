execute if entity @s[scores={legion_shield_cd=1..}] run schedule function battle:classes/legionnaire/shieldcd/item_cd/loop 1s

scoreboard players remove @s legion_shield_cd 1

title @s actionbar ["",{"text":"Lightweight Aegis","color":"gold","bold":true}," Cooldown - ",{"score":{"name":"@s","objective":"legion_shield_cd"},"color":"gold"}]
execute as @s[scores={legion_shield_cd=..0}] run title @s actionbar ["",{"text":"Lightweight Aegis","color":"gold","bold":true}," Cooldown - ",{"text":"READY","color":"green"}]

execute as @s[scores={legion_shield_cd=..0}] if items entity @s container.* archer_pottery_sherd run function battle:classes/legionnaire/shieldcd/recharge

scoreboard players reset @s[scores={legion_shield_cd=..0}] legion_shield_cd