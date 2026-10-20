scoreboard objectives add fang_time dummy

scoreboard players add @s fang_time 1
tag @s add fang_model
execute if entity @n[type=item,tag=conj_up] run tag @s add conj_up

execute if entity @e[tag=fang_model] run schedule function battle:classes/conjurer/fangs/display/loop 1t

scoreboard players add @e[tag=fang_model,scores={fang_time=1..}] fang_time 1

execute at @e[tag=fang_model,scores={fang_time=2}] run summon evoker_fangs ~ ~ ~
execute at @e[tag=fang_model,scores={fang_time=2}] run summon evoker_fangs ~1 ~ ~
execute at @e[tag=fang_model,scores={fang_time=2}] run summon evoker_fangs ~-1 ~ ~
execute at @e[tag=fang_model,scores={fang_time=2}] run summon evoker_fangs ~ ~ ~1
execute at @e[tag=fang_model,scores={fang_time=2}] run summon evoker_fangs ~ ~ ~-1
execute at @e[tag=fang_model,scores={fang_time=2}] run summon evoker_fangs ~0.8 ~ ~0.8
execute at @e[tag=fang_model,scores={fang_time=2}] run summon evoker_fangs ~-0.8 ~ ~-0.8
execute at @e[tag=fang_model,scores={fang_time=2}] run summon evoker_fangs ~-0.8 ~ ~0.8
execute at @e[tag=fang_model,scores={fang_time=2}] run summon evoker_fangs ~0.8 ~ ~-0.8
execute at @e[tag=fang_model,scores={fang_time=2}] run summon evoker_fangs ~2 ~ ~
execute at @e[tag=fang_model,scores={fang_time=2}] run summon evoker_fangs ~-2 ~ ~
execute at @e[tag=fang_model,scores={fang_time=2}] run summon evoker_fangs ~ ~ ~2
execute at @e[tag=fang_model,scores={fang_time=2}] run summon evoker_fangs ~ ~ ~-2
execute at @e[tag=fang_model,scores={fang_time=2}] run summon evoker_fangs ~1.3 ~ ~1.3
execute at @e[tag=fang_model,scores={fang_time=2}] run summon evoker_fangs ~-1.3 ~ ~-1.3
execute at @e[tag=fang_model,scores={fang_time=2}] run summon evoker_fangs ~-1.3 ~ ~1.3
execute at @e[tag=fang_model,scores={fang_time=2}] run summon evoker_fangs ~1.3 ~ ~-1.3

execute at @e[tag=fang_model,tag=conj_up,scores={fang_time=2}] run summon evoker_fangs ~3 ~ ~
execute at @e[tag=fang_model,tag=conj_up,scores={fang_time=2}] run summon evoker_fangs ~-3 ~ ~
execute at @e[tag=fang_model,tag=conj_up,scores={fang_time=2}] run summon evoker_fangs ~ ~ ~3
execute at @e[tag=fang_model,tag=conj_up,scores={fang_time=2}] run summon evoker_fangs ~ ~ ~-3
execute at @e[tag=fang_model,tag=conj_up,scores={fang_time=2}] run summon evoker_fangs ~1.8 ~ ~1.8
execute at @e[tag=fang_model,tag=conj_up,scores={fang_time=2}] run summon evoker_fangs ~-1.8 ~ ~-1.8
execute at @e[tag=fang_model,tag=conj_up,scores={fang_time=2}] run summon evoker_fangs ~-1.8 ~ ~1.8
execute at @e[tag=fang_model,tag=conj_up,scores={fang_time=2}] run summon evoker_fangs ~1.8 ~ ~-1.8



execute at @e[tag=fang_model,scores={fang_time=14}] run summon evoker_fangs ~ ~ ~
execute at @e[tag=fang_model,scores={fang_time=14}] run summon evoker_fangs ~1 ~ ~
execute at @e[tag=fang_model,scores={fang_time=14}] run summon evoker_fangs ~-1 ~ ~
execute at @e[tag=fang_model,scores={fang_time=14}] run summon evoker_fangs ~ ~ ~1
execute at @e[tag=fang_model,scores={fang_time=14}] run summon evoker_fangs ~ ~ ~-1
execute at @e[tag=fang_model,scores={fang_time=14}] run summon evoker_fangs ~0.8 ~ ~0.8
execute at @e[tag=fang_model,scores={fang_time=14}] run summon evoker_fangs ~-0.8 ~ ~-0.8
execute at @e[tag=fang_model,scores={fang_time=14}] run summon evoker_fangs ~-0.8 ~ ~0.8
execute at @e[tag=fang_model,scores={fang_time=14}] run summon evoker_fangs ~0.8 ~ ~-0.8
execute at @e[tag=fang_model,scores={fang_time=14}] run summon evoker_fangs ~2 ~ ~
execute at @e[tag=fang_model,scores={fang_time=14}] run summon evoker_fangs ~-2 ~ ~
execute at @e[tag=fang_model,scores={fang_time=14}] run summon evoker_fangs ~ ~ ~2
execute at @e[tag=fang_model,scores={fang_time=14}] run summon evoker_fangs ~ ~ ~-2
execute at @e[tag=fang_model,scores={fang_time=14}] run summon evoker_fangs ~1.3 ~ ~1.3
execute at @e[tag=fang_model,scores={fang_time=14}] run summon evoker_fangs ~-1.3 ~ ~-1.3
execute at @e[tag=fang_model,scores={fang_time=14}] run summon evoker_fangs ~-1.3 ~ ~1.3
execute at @e[tag=fang_model,scores={fang_time=14}] run summon evoker_fangs ~1.3 ~ ~-1.3

execute at @e[tag=fang_model,tag=conj_up,scores={fang_time=14}] run summon evoker_fangs ~3 ~ ~
execute at @e[tag=fang_model,tag=conj_up,scores={fang_time=14}] run summon evoker_fangs ~-3 ~ ~
execute at @e[tag=fang_model,tag=conj_up,scores={fang_time=14}] run summon evoker_fangs ~ ~ ~3
execute at @e[tag=fang_model,tag=conj_up,scores={fang_time=14}] run summon evoker_fangs ~ ~ ~-3
execute at @e[tag=fang_model,tag=conj_up,scores={fang_time=14}] run summon evoker_fangs ~1.8 ~ ~1.8
execute at @e[tag=fang_model,tag=conj_up,scores={fang_time=14}] run summon evoker_fangs ~-1.8 ~ ~-1.8
execute at @e[tag=fang_model,tag=conj_up,scores={fang_time=14}] run summon evoker_fangs ~-1.8 ~ ~1.8
execute at @e[tag=fang_model,tag=conj_up,scores={fang_time=14}] run summon evoker_fangs ~1.8 ~ ~-1.8


execute at @e[tag=fang_model,tag=conj_up,scores={fang_time=26}] run summon evoker_fangs ~ ~ ~
execute at @e[tag=fang_model,tag=conj_up,scores={fang_time=26}] run summon evoker_fangs ~1 ~ ~
execute at @e[tag=fang_model,tag=conj_up,scores={fang_time=26}] run summon evoker_fangs ~-1 ~ ~
execute at @e[tag=fang_model,tag=conj_up,scores={fang_time=26}] run summon evoker_fangs ~ ~ ~1
execute at @e[tag=fang_model,tag=conj_up,scores={fang_time=26}] run summon evoker_fangs ~ ~ ~-1
execute at @e[tag=fang_model,tag=conj_up,scores={fang_time=26}] run summon evoker_fangs ~0.8 ~ ~0.8
execute at @e[tag=fang_model,tag=conj_up,scores={fang_time=26}] run summon evoker_fangs ~-0.8 ~ ~-0.8
execute at @e[tag=fang_model,tag=conj_up,scores={fang_time=26}] run summon evoker_fangs ~-0.8 ~ ~0.8
execute at @e[tag=fang_model,tag=conj_up,scores={fang_time=26}] run summon evoker_fangs ~0.8 ~ ~-0.8
execute at @e[tag=fang_model,tag=conj_up,scores={fang_time=26}] run summon evoker_fangs ~2 ~ ~
execute at @e[tag=fang_model,tag=conj_up,scores={fang_time=26}] run summon evoker_fangs ~-2 ~ ~
execute at @e[tag=fang_model,tag=conj_up,scores={fang_time=26}] run summon evoker_fangs ~ ~ ~2
execute at @e[tag=fang_model,tag=conj_up,scores={fang_time=26}] run summon evoker_fangs ~ ~ ~-2
execute at @e[tag=fang_model,tag=conj_up,scores={fang_time=26}] run summon evoker_fangs ~1.3 ~ ~1.3
execute at @e[tag=fang_model,tag=conj_up,scores={fang_time=26}] run summon evoker_fangs ~-1.3 ~ ~-1.3
execute at @e[tag=fang_model,tag=conj_up,scores={fang_time=26}] run summon evoker_fangs ~-1.3 ~ ~1.3
execute at @e[tag=fang_model,tag=conj_up,scores={fang_time=26}] run summon evoker_fangs ~1.3 ~ ~-1.3

execute at @e[tag=fang_model,tag=conj_up,scores={fang_time=26}] run summon evoker_fangs ~3 ~ ~
execute at @e[tag=fang_model,tag=conj_up,scores={fang_time=26}] run summon evoker_fangs ~-3 ~ ~
execute at @e[tag=fang_model,tag=conj_up,scores={fang_time=26}] run summon evoker_fangs ~ ~ ~3
execute at @e[tag=fang_model,tag=conj_up,scores={fang_time=26}] run summon evoker_fangs ~ ~ ~-3
execute at @e[tag=fang_model,tag=conj_up,scores={fang_time=26}] run summon evoker_fangs ~1.8 ~ ~1.8
execute at @e[tag=fang_model,tag=conj_up,scores={fang_time=26}] run summon evoker_fangs ~-1.8 ~ ~-1.8
execute at @e[tag=fang_model,tag=conj_up,scores={fang_time=26}] run summon evoker_fangs ~-1.8 ~ ~1.8
execute at @e[tag=fang_model,tag=conj_up,scores={fang_time=26}] run summon evoker_fangs ~1.8 ~ ~-1.8

execute at @e[tag=fang_model,tag=!conj_up,scores={fang_time=14..}] as @a[tag=fang_gravity] run attribute @s gravity base set 0.08
execute at @e[tag=fang_model,tag=!conj_up,scores={fang_time=14..}] as @a[tag=fang_gravity] run tag @s remove fang_gravity
kill @e[tag=fang_model,tag=!conj_up,scores={fang_time=15..}]

execute at @e[tag=fang_model,tag=conj_up,scores={fang_time=26..}] as @a[tag=fang_gravity] run attribute @s gravity base set 0.08
execute at @e[tag=fang_model,tag=conj_up,scores={fang_time=26..}] as @a[tag=fang_gravity] run tag @s remove fang_gravity
kill @e[tag=fang_model,tag=conj_up,scores={fang_time=27..}]