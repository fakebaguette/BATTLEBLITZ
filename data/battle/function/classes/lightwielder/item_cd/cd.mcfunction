execute if entity @s[scores={light_eye_timer=1..}] run schedule function battle:classes/lightwielder/item_cd/loop 1s

scoreboard players remove @s light_eye_timer 1

title @s actionbar ["",{"text":"Eye of the Lightwielder","color":"#FDFCEE","bold":true}," Cooldown - ",{"score":{"name":"@s","objective":"light_eye_timer"},"color":"gold"}]
execute as @s[scores={light_eye_timer=..0}] run title @s actionbar ["",{"text":"Eye of the Lightwielder","color":"#FDFCEE","bold":true}," Cooldown - ",{"text":"READY","color":"green"}]

execute as @s[scores={light_eye_timer=2}] run playsound block.bell.resonate block @s ~ ~ ~ 2 1
execute as @s[scores={light_eye_timer=..0}] run tag @s remove light_eye_cd

scoreboard players reset @s[scores={light_eye_timer=..0}] light_eye_timer