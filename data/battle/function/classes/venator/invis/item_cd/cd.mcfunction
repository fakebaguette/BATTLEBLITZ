execute if entity @s[scores={vena_invis_itemCD=1..}] run schedule function battle:classes/venator/invis/item_cd/loop 1s

scoreboard players remove @s vena_invis_itemCD 1

title @s actionbar ["",{"text":"Stealth Charge","color":"#bc7bf2","bold":true}," Cooldown - ",{"score":{"name":"@s","objective":"vena_invis_itemCD"},"color":"gold"}]
execute at @s[scores={vena_invis_itemCD=..0}] run title @s actionbar ["",{"text":"Stealth Charge","color":"#bc7bf2","bold":true}," Cooldown - ",{"text":"READY","color":"green"}]

execute at @s[scores={vena_invis_itemCD=..0}] run playsound item.bundle.insert master @s ~ ~ ~ 1 1.4
execute at @s[scores={vena_invis_itemCD=..0}] run playsound ui.hud.bubble_pop master @s ~ ~ ~ 1 1.9

scoreboard objectives add vena_invis_slot dummy
scoreboard objectives add vena_invis_scan_i dummy

execute at @s[scores={vena_invis_itemCD=..0}] run scoreboard players reset @s vena_invis_slot
execute at @s[scores={vena_invis_itemCD=..0}] run scoreboard players set @s vena_invis_scan_i 0
execute at @s[scores={vena_invis_itemCD=..0}] store result storage venator scan_slot int 1 run scoreboard players get @s vena_invis_scan_i
execute at @s[scores={vena_invis_itemCD=..0}] run function battle:classes/venator/invis/item_cd/scan_replace with storage venator

execute at @s[scores={vena_invis_itemCD=..0}] if score @s vena_invis_charges < @s vena_invis_cap run function battle:classes/venator/invis/item_cd/loop
scoreboard players reset @s[scores={vena_invis_itemCD=..0}] vena_invis_itemCD