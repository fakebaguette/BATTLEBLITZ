schedule function battle:lobby/practiceshield/main 2t

scoreboard objectives add practiceShieldDura minecraft.custom:minecraft.damage_blocked_by_shield
scoreboard objectives add practiceShieldUpdate minecraft.custom:minecraft.damage_blocked_by_shield
scoreboard objectives add practiceShieldCD dummy
scoreboard players add @a practiceShieldCD 0

execute as @a[nbt=!{Inventory:[{id:"minecraft:shield",components:{"minecraft:custom_data":{NoDrop:1b,practiceShield:1b,lobby:1b}}}]}] run scoreboard players reset @s practiceShieldUpdate
execute as @a[nbt=!{Inventory:[{id:"minecraft:shield",components:{"minecraft:custom_data":{NoDrop:1b,practiceShield:1b,lobby:1b}}}]}] run scoreboard players reset @s practiceShieldDura

execute as @a[scores={practiceShieldUpdate=1..},nbt={Inventory:[{id:"minecraft:shield",components:{"minecraft:custom_data":{NoDrop:1b,practiceShield:1b,lobby:1b}}}]}] run title @s actionbar [{"text":"Practice Shield","color":"white","bold":true},{"text":" Usage - ","color":"white"},{"color":"green","score":{"objective":"practiceShieldDura","name":"@s"}},{"text":" / 100","color":"gray"}]
scoreboard players reset @a practiceShieldUpdate

execute as @a[scores={practiceShieldDura=100..}] at @s run function battle:lobby/practiceshield/occur
execute as @a[scores={practiceShieldCD=1..}] run scoreboard players add @s practiceShieldCD 1
execute as @a[scores={practiceShieldCD=01}] run title @s actionbar ["",{"text":"Practice Shield","color":"white","bold":true},{"text":" Cooldown - "},{"text":"5","color":"gold"}]
execute as @a[scores={practiceShieldCD=10}] run title @s actionbar ["",{"text":"Practice Shield","color":"white","bold":true},{"text":" Cooldown - "},{"text":"4","color":"gold"}]
execute as @a[scores={practiceShieldCD=20}] run title @s actionbar ["",{"text":"Practice Shield","color":"white","bold":true},{"text":" Cooldown - "},{"text":"3","color":"yellow"}]
execute as @a[scores={practiceShieldCD=30}] run title @s actionbar ["",{"text":"Practice Shield","color":"white","bold":true},{"text":" Cooldown - "},{"text":"2","color":"yellow"}]
execute as @a[scores={practiceShieldCD=40}] run title @s actionbar ["",{"text":"Practice Shield","color":"white","bold":true},{"text":" Cooldown - "},{"text":"1","color":"yellow"}]
execute as @a[scores={practiceShieldCD=50}] run title @s actionbar ["",{"text":"Practice Shield","color":"white","bold":true},{"text":" Cooldown - "},{"text":"READY","color":"green"}]
execute as @a[scores={practiceShieldCD=50}] run function battle:lobby/practiceshield/recharge