schedule function battle:classes/prospector/recoil/main 1t

scoreboard objectives add use_prosp_crossbow used:crossbow
scoreboard objectives add prosp_crossbow_cd dummy

execute as @a[tag=prospector_class,scores={use_prosp_crossbow=1..}] at @s unless score @s prosp_crossbow_cd matches 1.. run function battle:classes/prospector/recoil/occur

scoreboard players reset @a[tag=!prospector_class] use_prosp_crossbow
execute as @a[tag=prospector_class] at @s run scoreboard players reset @s use_prosp_crossbow

execute as @e[type=snowball,tag=prosp_crossbow_push] at @s run ride @p mount @s