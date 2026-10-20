#init
scoreboard objectives add prosp_tnt_time dummy

execute as @e[type=tnt,tag=prospTNT] run scoreboard players add @s prosp_tnt_time 1
execute if entity @s[tag=Team1] run summon tnt ~ ~0.25 ~ {Fire:10000,HasVisualFire:1b,Glowing:1b,CustomNameVisible:0b,fuse:20000,Tags:["prospTNT","prosp_tnt_T1"]}
execute if entity @s[tag=Team2] run summon tnt ~ ~0.25 ~ {Fire:10000,HasVisualFire:1b,Glowing:1b,CustomNameVisible:0b,fuse:20000,Tags:["prospTNT","prosp_tnt_T2"]}
execute if entity @s run summon text_display ~ ~ ~ {billboard:"center",default_background:1b,shadow:0b,see_through:0b,Tags:["prospTNT_text"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]},text:{"bold":true,"color":"#DFFFB0","italic":false,"text":"Prospector's TNT"}}
execute if entity @s run ride @n[tag=prospTNT_text] mount @n[tag=prospTNT]
execute if entity @s run playsound minecraft:entity.tnt.primed master @a ~ ~ ~ 1 1.3
execute if entity @s run particle smoke ~ ~ ~ 1 0.5 1 0 50 normal @a
clear @s tnt[custom_data={prospTNT:1b, NoDrop:1b, PowerUp:1b}] 1

#scheduled
execute as @e[type=tnt,tag=prospTNT,scores={prosp_tnt_time=30..}] at @s run function battle:classes/prospector/supply/tnt_throw/display/end_throw
execute as @e[type=tnt,tag=prospTNT,scores={prosp_tnt_time=30..}] at @s run kill @n[tag=prospTNT_text]
execute as @e[type=tnt,tag=prospTNT,scores={prosp_tnt_time=30..}] run kill @s

execute if entity @e[type=tnt,tag=prospTNT] run schedule function battle:classes/prospector/supply/tnt/use 1t

