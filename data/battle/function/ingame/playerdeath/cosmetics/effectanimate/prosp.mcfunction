execute if entity @e[type=item_display,tag=effectProspAnimation] run schedule function battle:ingame/playerdeath/cosmetics/effectanimate/prosp 1t

scoreboard players add @s effectAnimate 0
scoreboard players add @e[type=item_display,tag=effectProspAnimation,scores={effectAnimate=0..}] effectAnimate 1

execute as @e[type=item_display,tag=effectProspAnimation,scores={effectAnimate=1..}] at @s run tp @s ~ ~-0.5 ~ ~20 ~
execute as @e[type=item_display,tag=effectProspAnimation,scores={effectAnimate=1..}] at @s run particle enchanted_hit ^0.000 ^0.000 ^1.000 0 0 0 0 2 normal @a
execute as @e[type=item_display,tag=effectProspAnimation,scores={effectAnimate=1..}] at @s run particle crit ^0.000 ^0.000 ^1.000 0 0 0 0 2 normal @a
execute as @e[type=item_display,tag=effectProspAnimation,scores={effectAnimate=1..}] at @s run particle entity_effect{color:[1.000,0.976,0.671,1.00]} ^0.000 ^0.000 ^1.000 0 0 0 0 4 normal @a

execute as @e[type=item_display,tag=effectProspAnimation,scores={effectAnimate=28}] at @s run particle cloud ~ ~ ~ 0.5 0.8 0.5 0.3 50 normal
execute as @e[type=item_display,tag=effectProspAnimation,scores={effectAnimate=29}] at @s run kill @s