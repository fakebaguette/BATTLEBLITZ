execute if entity @s[scores={seach_shield_cd=1..}] run schedule function battle:classes/seacharger/shieldcd/item_cd/loop 1s

scoreboard players remove @s seach_shield_cd 1

title @s actionbar ["",{"text":"Lightweight Targe","color":"#08BF88","bold":true}," Cooldown - ",{"score":{"name":"@s","objective":"seach_shield_cd"},"color":"gold"}]
execute as @s[scores={seach_shield_cd=..0}] run title @s actionbar ["",{"text":"Lightweight Targe","color":"#08BF88","bold":true}," Cooldown - ",{"text":"READY","color":"green"}]

execute as @s[scores={seach_shield_cd=..0}] run function battle:classes/seacharger/shieldcd/recharge

scoreboard players reset @s[scores={seach_shield_cd=..0}] seach_shield_cd