execute if entity @s[scores={mara_horn_cd=1..}] run schedule function battle:classes/marauder/item_cd/loop 1s

scoreboard players remove @s mara_horn_cd 1

title @s actionbar ["",{"text":"Horn of the Marauder","color":"red","bold":true}," Cooldown - ",{"score":{"name":"@s","objective":"mara_horn_cd"},"color":"gold"}]
execute as @s[scores={mara_horn_cd=..0}] run title @s actionbar ["",{"text":"Horn of the Marauder","color":"red","bold":true}," Cooldown - ",{"text":"READY","color":"green"}]

execute as @s[scores={mara_horn_cd=..0}] run function battle:classes/marauder/end

scoreboard players reset @s[scores={mara_horn_cd=..0}] mara_horn_cd