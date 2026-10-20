execute if entity @s[scores={north_shield_cd=1..}] run schedule function battle:classes/northman/shieldcd/item_cd/loop 1s

scoreboard players remove @s north_shield_cd 1

title @s actionbar ["",{"text":"Hefty Shield","color":"blue","bold":true}," Cooldown - ",{"score":{"name":"@s","objective":"north_shield_cd"},"color":"gold"}]
execute as @s[scores={north_shield_cd=..0}] run title @s actionbar ["",{"text":"Hefty Shield","color":"blue","bold":true}," Cooldown - ",{"text":"READY","color":"green"}]

execute as @s[scores={north_shield_cd=..0}] run function battle:classes/northman/shieldcd/recharge

scoreboard players reset @s[scores={north_shield_cd=..0}] north_shield_cd