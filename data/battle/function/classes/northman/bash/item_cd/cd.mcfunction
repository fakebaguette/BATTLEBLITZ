execute if entity @s[scores={north_bash_cd=1..}] run schedule function battle:classes/northman/bash/item_cd/loop 1s

scoreboard players remove @s north_bash_cd 1

title @s actionbar ["",{"text":"Shield Bash","color":"blue","bold":true}," Cooldown - ",{"score":{"name":"@s","objective":"north_bash_cd"},"color":"gold"}]
execute as @s[scores={north_bash_cd=..0}] run title @s actionbar ["",{"text":"Shield Bash","color":"blue","bold":true}," Cooldown - ",{"text":"READY","color":"green"}]

execute as @s[scores={north_bash_cd=..0}] run playsound minecraft:item.armor.equip_gold master @s ~ ~ ~ 1 0.8
execute as @s[scores={north_bash_cd=..0}] run advancement revoke @s only battle:northman/use
execute as @s[scores={north_bash_cd=..0}] run tag @s remove north_bash_cd

scoreboard players reset @s[scores={north_bash_cd=..0}] north_bash_cd