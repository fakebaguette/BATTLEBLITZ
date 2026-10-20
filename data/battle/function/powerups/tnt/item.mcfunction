#init
scoreboard objectives add toxinTNTtime dummy
execute as @e[type=tnt,tag=toxinTNT] run scoreboard players add @s toxinTNTtime 1
execute if entity @s run summon tnt ~ ~.25 ~ {Fire:10000,HasVisualFire:1b,Glowing:1b,CustomNameVisible:0b,fuse:20000,Tags:["toxinTNT"]}
execute if entity @s run summon text_display ~ ~1.25 ~ {Tags:["toxinTNT_text"],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:{"text":"Toxin TNT","color":"dark_green","bold":true,"italic":false}}

execute if entity @s run playsound minecraft:entity.tnt.primed master @a ~ ~ ~ 1 1
execute if entity @s run particle smoke ~ ~ ~ 1 0.5 1 0 50 normal @a

clear @s tnt[custom_data={toxinTNT:1b, NoDrop:1b, PowerUp:1b}] 1

#scheduled
execute at @e[type=tnt,tag=toxinTNT,scores={toxinTNTtime=30..}] run effect give @e[distance=..4] poison 4 0 true
execute at @e[type=tnt,tag=toxinTNT,scores={toxinTNTtime=30..}] as @e[distance=..4] run damage @s 6 player_attack
execute at @e[type=tnt,tag=toxinTNT,scores={toxinTNTtime=30..}] if entity @e[type=interaction,tag=5x5center,distance=..5] run fill ~2 ~1 ~2 ~-2 ~-2 ~-2 air replace #battle:battleconcrete
execute at @e[type=tnt,tag=toxinTNT,scores={toxinTNTtime=30..}] run playsound entity.generic.explode master @a ~ ~ ~ 1 0.7
execute at @e[type=tnt,tag=toxinTNT,scores={toxinTNTtime=30..}] run playsound entity.splash_potion.break master @a ~ ~ ~ 10 0.7
execute at @e[type=tnt,tag=toxinTNT,scores={toxinTNTtime=30..}] run particle entity_effect{color:[0.161,0.549,0.290,1.00]} ~ ~ ~ 1 1 1 1 500 normal @a
execute at @e[type=tnt,tag=toxinTNT,scores={toxinTNTtime=30..}] run particle dust{color:[0.239,0.820,0.435],scale:2} ~ ~ ~ 2 2 2 0.1 100 normal @a
execute at @e[type=tnt,tag=toxinTNT,scores={toxinTNTtime=30..}] run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 normal @a
execute as @e[type=tnt,tag=toxinTNT,scores={toxinTNTtime=30..}] at @s run kill @n[tag=toxinTNT_text]
execute as @e[type=tnt,tag=toxinTNT,scores={toxinTNTtime=30..}] run kill @s

execute if entity @e[type=tnt,tag=toxinTNT] run schedule function battle:powerups/tnt/item 1t

