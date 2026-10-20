tag @s add PharCurse
summon area_effect_cloud ~ ~0.1 ~ {custom_particle:{type:"large_smoke"},ReapplicationDelay:2,Radius:3f,Duration:40,Tags:["PharCursedGround"]}
particle minecraft:soul ~ ~ ~ 2 2 2 0 200 normal @a
particle minecraft:infested ~ ~ ~ 2 2 2 0.5 300 normal @a
playsound minecraft:entity.evoker.prepare_attack master @a[distance=..20] ~ ~ ~ 1 0.5
playsound minecraft:entity.phantom.bite master @a[distance=..20] ~ ~ ~ 1 0.7
execute at @e[type=area_effect_cloud,tag=PharCursedGround] run effect give @a[distance=..3] blindness 2 0 true
execute at @e[type=area_effect_cloud,tag=PharCursedGround] run effect give @a[distance=..3] wither 3 1 true
execute at @e[type=area_effect_cloud,tag=PharCursedGround] run effect give @a[distance=..3] slow_falling 3 1 true
execute at @e[type=area_effect_cloud,tag=PharCursedGround] run summon lightning_bolt ~ ~-2 ~
execute at @e[type=area_effect_cloud,tag=PharCursedGround] run summon lightning_bolt ~ ~-2 ~
kill @n[type=silverfish]
kill @n[tag=PharCurse,type=item,nbt={OnGround:1b}]