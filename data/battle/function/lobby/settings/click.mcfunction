schedule function battle:lobby/settings/click 1t

clear @a *[custom_data={NoDrop:1b,emptyBoxGui:1b}]
function battle:lobby/armorgui/power

execute as @e[type=interaction,tag=toggleSettings] at @s if data entity @s attack run particle enchanted_hit ~ ~.5 ~ 0.2 0.2 0.2 0 10 normal
execute as @e[type=interaction,tag=toggleSettings] at @s if data entity @s interaction run particle enchanted_hit ~ ~.5 ~ 0.2 0.2 0.2 0 10 normal

execute as @e[type=interaction,tag=toggleSettings] on attacker if entity @a[tag=Participant] run function battle:lobby/settings/cancel
execute as @e[type=interaction,tag=toggleSettings] on target if entity @a[tag=Participant] run function battle:lobby/settings/cancel
execute as @e[type=interaction,tag=toggleSettings] if data entity @s attack if entity @a[tag=Participant] run function battle:lobby/settings/clear
execute as @e[type=interaction,tag=toggleSettings] if data entity @s interaction if entity @a[tag=Participant] run function battle:lobby/settings/clear
execute as @e[type=interaction,tag=toggleSettings,tag=lockedSettings] run return fail 

execute as @e[type=interaction,tag=toggleMap] on attacker as @s at @s run function battle:toggle/togglemap
execute as @e[type=interaction,tag=toggleMap] on target as @s at @s run function battle:toggle/togglemap

execute as @e[type=interaction,tag=toggleCenter] on attacker as @s at @s run function battle:toggle/togglecenter
execute as @e[type=interaction,tag=toggleCenter] on target as @s at @s run function battle:toggle/togglecenter

execute as @e[type=interaction,tag=toggleRound] on attacker as @s at @s run function battle:toggle/toggleround
execute as @e[type=interaction,tag=toggleRound] on target as @s at @s run function battle:toggle/toggleround

execute as @e[type=interaction,tag=toggleRoundCount] on attacker as @s at @s run function battle:toggle/toggleroundcount
execute as @e[type=interaction,tag=toggleRoundCount] on target as @s at @s run function battle:toggle/toggleroundcount

execute as @e[type=interaction,tag=toggleDefault] on attacker as @s at @s run function battle:toggle/toggledefault
execute as @e[type=interaction,tag=toggleDefault] on target as @s at @s run function battle:toggle/toggledefault

execute as @e[type=interaction,tag=toggleOffhand] on attacker as @s at @s run function battle:toggle/toggleoffhand
execute as @e[type=interaction,tag=toggleOffhand] on target as @s at @s run function battle:toggle/toggleoffhand

execute as @e[type=interaction,tag=togglePower] on attacker as @s at @s run function battle:toggle/togglepower
execute as @e[type=interaction,tag=togglePower] on target as @s at @s run function battle:toggle/togglepower

execute as @e[type=interaction,tag=toggleSpecialEvent] on attacker as @s at @s run function battle:toggle/toggleevent
execute as @e[type=interaction,tag=toggleSpecialEvent] on target as @s at @s run function battle:toggle/toggleevent

execute as @e[type=interaction,tag=toggleDoubleHealth] on attacker as @s at @s run function battle:toggle/toggledouble
execute as @e[type=interaction,tag=toggleDoubleHealth] on target as @s at @s run function battle:toggle/toggledouble

execute as @e[type=interaction,tag=toggleHalfHealth] on attacker as @s at @s run function battle:toggle/togglehalf
execute as @e[type=interaction,tag=toggleHalfHealth] on target as @s at @s run function battle:toggle/togglehalf

execute as @e[type=interaction,tag=toggleQuickMatch] on attacker as @s at @s run function battle:toggle/togglequick
execute as @e[type=interaction,tag=toggleQuickMatch] on target as @s at @s run function battle:toggle/togglequick

execute as @e[type=interaction,tag=toggleSettings] run data remove entity @s attack
execute as @e[type=interaction,tag=toggleSettings] run data remove entity @s interaction
tag @e[type=interaction,tag=toggleSettings] remove lockedSettings