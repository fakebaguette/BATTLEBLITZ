#execute as @s[tag=fireArrowT1] at @s positioned ^3 ^ ^0.5 run summon arrow ~ ~ ~ {Fire:20,HasVisualFire:1b,Glowing:1b,pickup:0b,damage:1d,Tags:["copyLegionArrow","copyLegionArrowT1"]}
execute as @s[tag=fireArrowT1] at @s positioned ^1.5 ^ ^0.5 run summon arrow ~ ~ ~ {HasVisualFire:1b,Glowing:1b,pickup:0b,damage:1d,Tags:["copyLegionArrow","copyLegionArrowT1"]}
execute as @s[tag=fireArrowT1] at @s positioned ^-1.5 ^ ^0.5 run summon arrow ~ ~ ~ {HasVisualFire:1b,Glowing:1b,pickup:0b,damage:1d,Tags:["copyLegionArrow","copyLegionArrowT1"]}
#execute as @s[tag=fireArrowT1] at @s positioned ^-3 ^ ^0.5 run summon arrow ~ ~ ~ {Fire:20,HasVisualFire:1b,Glowing:1b,pickup:0b,damage:1d,Tags:["copyLegionArrow","copyLegionArrowT1"]}

#execute as @s[tag=fireArrowT2] at @s positioned ^3 ^ ^0.5 run summon arrow ~ ~ ~ {Fire:20,HasVisualFire:1b,Glowing:1b,pickup:0b,damage:1d,Tags:["copyLegionArrow","copyLegionArrowT2"]}
execute as @s[tag=fireArrowT2] at @s positioned ^1.5 ^ ^0.5 run summon arrow ~ ~ ~ {HasVisualFire:1b,Glowing:1b,pickup:0b,damage:1d,Tags:["copyLegionArrow","copyLegionArrowT2"]}
execute as @s[tag=fireArrowT2] at @s positioned ^-1.5 ^ ^0.5 run summon arrow ~ ~ ~ {HasVisualFire:1b,Glowing:1b,pickup:0b,damage:1d,Tags:["copyLegionArrow","copyLegionArrowT2"]}
#execute as @s[tag=fireArrowT2] at @s positioned ^-3 ^ ^0.5 run summon arrow ~ ~ ~ {Fire:20,HasVisualFire:1b,Glowing:1b,pickup:0b,damage:1d,Tags:["copyLegionArrow","copyLegionArrowT2"]}

execute as @e[type=arrow,tag=copyLegionArrow] at @s run particle minecraft:large_smoke ~ ~ ~ 0.01 0.01 0.01 0.08 2 normal @a
execute as @e[type=arrow,tag=copyLegionArrow] at @s run particle minecraft:rain ~ ~ ~ 0.01 0.01 0.01 0.08 5 normal @a
execute as @e[type=spectral_arrow,tag=fireArrow] at @s run playsound minecraft:block.bubble_column.bubble_pop master @a[distance=..30] ~ ~ ~ 5 1.5
execute as @e[type=spectral_arrow,tag=fireArrow] at @s run playsound minecraft:item.brush.brushing.sand.complete master @a[distance=..30] ~ ~ ~ 5 0
execute as @e[type=spectral_arrow,tag=fireArrow] at @s run playsound minecraft:item.nether_wart.plant master @a[distance=..30] ~ ~ ~ 5 0.8