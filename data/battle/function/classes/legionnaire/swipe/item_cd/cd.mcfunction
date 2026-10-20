execute if entity @s[scores={legion_swipe_itemCD=1..}] run schedule function battle:classes/legionnaire/swipe/item_cd/loop 1s

scoreboard players remove @s legion_swipe_itemCD 1
tag @s[scores={legion_swipe_itemCD=..2}] remove legion_can_bash

title @s actionbar ["",{"text":"Slash and Bash","color":"#bfdffc","bold":true}," Cooldown - ",{"score":{"name":"@s","objective":"legion_swipe_itemCD"},"color":"gold"}]
execute at @s[scores={legion_swipe_itemCD=..0}] run title @s actionbar ["",{"text":"Slash and Bash","color":"#bfdffc","bold":true}," Cooldown - ",{"text":"READY","color":"green"}]

execute at @s[scores={legion_swipe_itemCD=..0}] run playsound item.bundle.insert master @s ~ ~ ~ 1 1.4
execute at @s[scores={legion_swipe_itemCD=..0}] run playsound item.armor.equip_copper master @s ~ ~ ~ 1 1.2
execute as @s[scores={legion_swipe_itemCD=..0}] run tag @s remove legion_swipe_cd

scoreboard players reset @s[scores={legion_swipe_itemCD=..0}] legion_swipe_itemCD