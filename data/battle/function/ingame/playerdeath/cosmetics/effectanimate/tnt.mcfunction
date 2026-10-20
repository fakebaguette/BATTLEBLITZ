execute if entity @e[type=tnt,tag=effectTNTAnimation] run schedule function battle:ingame/playerdeath/cosmetics/effectanimate/tnt 1t

scoreboard players add @s effectAnimate 0
scoreboard players add @e[type=tnt,tag=effectTNTAnimation,scores={effectAnimate=0..}] effectAnimate 1

execute as @e[type=tnt,tag=effectTNTAnimation,scores={effectAnimate=1..}] at @s run tp @s ~ ~-0.8 ~ ~10 ~
execute as @e[type=tnt,tag=effectTNTAnimation,scores={effectAnimate=15}] at @s run particle explosion_emitter ~ ~ ~ 0 0 0 0 1 normal
execute as @e[type=tnt,tag=effectTNTAnimation,scores={effectAnimate=15}] at @s run kill @s