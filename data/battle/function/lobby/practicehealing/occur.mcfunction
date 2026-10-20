execute as @s[scores={hpIntPractice=..19}] run effect give @s instant_health 1 0 true
execute as @s[scores={hpIntPractice=..19}] run title @s actionbar ["",{"text":"+","color":"yellow"},{"text":"4 HP ","bold":true,"color":"green"},{"text":"\u2764","color":"green"},{"text":" - "},{"text":"Out of Combat","bold":true,"color":"red"}]
execute as @s[scores={hpIntPractice=..19}] at @s run particle minecraft:crit ~ ~1 ~ 0.5 0.5 0.5 0.01 10 normal @a
execute as @s[scores={hpIntPractice=..19}] at @s run particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.01 10 normal @a
execute as @s[scores={hpIntPractice=..19}] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 20 1.5
execute as @s[scores={hpIntPractice=..19}] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 20 2

execute as @s[scores={hpIntPractice=..23},nbt={active_effects:[{id:"minecraft:health_boost",amplifier:0b}]}] run effect give @s instant_health 1 0 true
execute as @s[scores={hpIntPractice=..23},nbt={active_effects:[{id:"minecraft:health_boost",amplifier:0b}]}] run title @s actionbar ["",{"text":"+","color":"yellow"},{"text":"4 HP ","bold":true,"color":"green"},{"text":"\u2764","color":"green"},{"text":" - "},{"text":"Out of Combat","bold":true,"color":"red"}]
execute as @s[scores={hpIntPractice=..23},nbt={active_effects:[{id:"minecraft:health_boost",amplifier:0b}]}] at @s run particle minecraft:crit ~ ~1 ~ 0.5 0.5 0.5 0.01 10 normal @a
execute as @s[scores={hpIntPractice=..23},nbt={active_effects:[{id:"minecraft:health_boost",amplifier:0b}]}] at @s run particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.01 10 normal @a
execute as @s[scores={hpIntPractice=..23},nbt={active_effects:[{id:"minecraft:health_boost",amplifier:0b}]}] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 20 1.5
execute as @s[scores={hpIntPractice=..23},nbt={active_effects:[{id:"minecraft:health_boost",amplifier:0b}]}] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 20 2

execute as @s[scores={hpIntPractice=..27},nbt={active_effects:[{id:"minecraft:health_boost",amplifier:1b}]}] run effect give @s instant_health 1 0 true
execute as @s[scores={hpIntPractice=..27},nbt={active_effects:[{id:"minecraft:health_boost",amplifier:1b}]}] run title @s actionbar ["",{"text":"+","color":"yellow"},{"text":"4 HP ","bold":true,"color":"green"},{"text":"\u2764","color":"green"},{"text":" - "},{"text":"Out of Combat","bold":true,"color":"red"}]
execute as @s[scores={hpIntPractice=..27},nbt={active_effects:[{id:"minecraft:health_boost",amplifier:1b}]}] at @s run particle minecraft:crit ~ ~1 ~ 0.5 0.5 0.5 0.01 10 normal @a
execute as @s[scores={hpIntPractice=..27},nbt={active_effects:[{id:"minecraft:health_boost",amplifier:1b}]}] at @s run particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.01 10 normal @a
execute as @s[scores={hpIntPractice=..27},nbt={active_effects:[{id:"minecraft:health_boost",amplifier:1b}]}] at @s run playsound minecraft:entity.arrow.hit_player master @s ~ ~ ~ 20 1.5
execute as @s[scores={hpIntPractice=..27},nbt={active_effects:[{id:"minecraft:health_boost",amplifier:1b}]}] at @s run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 20 2

execute as @s run scoreboard players reset @s outOfCombat
execute as @s run scoreboard players reset @s takeDMG
execute as @s run scoreboard players reset @s dealDMG