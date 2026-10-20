execute if entity @e[type=item_display,tag=effectMagusAnimation] run schedule function battle:ingame/playerdeath/cosmetics/effectanimate/magus 1t

scoreboard players add @s effectAnimate 0
scoreboard players add @e[type=item_display,tag=effectMagusAnimation,scores={effectAnimate=0..}] effectAnimate 1

execute as @e[type=item_display,tag=effectMagusAnimation,scores={effectAnimate=1..}] at @s run tp @s ~ ~-0.5 ~ ~15 ~
execute as @e[type=item_display,tag=effectMagusAnimation,scores={effectAnimate=1..}] at @s run particle flame ^0.000 ^0.000 ^1.000 0 0 0 0 1 normal @a

execute as @e[type=item_display,tag=effectMagusAnimation,scores={effectAnimate=28}] at @s run particle snowflake ~ ~ ~ 0.5 0.5 0.5 0.2 100 normal @a
execute as @e[type=item_display,tag=effectMagusAnimation,scores={effectAnimate=28}] at @s run particle poof ~ ~ ~ 0.5 0.5 0.5 0.2 50 normal @a
execute as @e[type=item_display,tag=effectMagusAnimation,scores={effectAnimate=28}] at @s run function battle:classes/magus/cryo/display/e_cosm

execute as @e[type=item_display,tag=effectMagusAnimation,scores={effectAnimate=29}] at @s run kill @s