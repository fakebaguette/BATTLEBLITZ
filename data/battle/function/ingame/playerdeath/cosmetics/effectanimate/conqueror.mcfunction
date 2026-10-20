execute if entity @e[type=item_display,tag=effectConquerorAnimation] run schedule function battle:ingame/playerdeath/cosmetics/effectanimate/conqueror 1t

scoreboard players add @s effectAnimate 0
scoreboard players add @e[type=item_display,tag=effectConquerorAnimation,scores={effectAnimate=0..}] effectAnimate 1

execute as @e[type=item_display,tag=effectConquerorAnimation,tag=effectConquerorAnimationUp,scores={effectAnimate=1..50}] at @s run tp @s ~ ~0.2 ~ ~10 ~
execute as @e[type=item_display,tag=effectConquerorAnimation,tag=effectConquerorAnimationUp,scores={effectAnimate=51..}] at @s run tp @s ~ ~-0.4 ~ ~10 ~
execute as @e[type=item_display,tag=effectConquerorAnimation,tag=effectConquerorAnimationUp,scores={effectAnimate=1..50}] at @s run particle flame ~ ~ ~ 0.5 0.5 0.5 0 1 normal @a

execute as @e[type=item_display,tag=effectConquerorAnimation,tag=effectConquerorAnimationDown,scores={effectAnimate=1..}] at @s run tp @s ~ ~-0.4 ~ ~10 ~
execute as @e[type=item_display,tag=effectConquerorAnimation,tag=effectConquerorAnimationDown,scores={effectAnimate=1..}] at @s run particle soul_fire_flame ~ ~ ~ 0.5 0.5 0.5 0 2 normal @a


execute as @e[type=item_display,tag=effectConquerorAnimation,tag=effectConquerorAnimationUp,scores={effectAnimate=75}] at @s run particle poof ~ ~ ~ 0.5 0.8 0.5 0.2 50 normal
execute as @e[type=item_display,tag=effectConquerorAnimation,tag=effectConquerorAnimationUp,scores={effectAnimate=75}] at @s run particle soul_fire_flame ~ ~ ~ 0.5 0.8 0.5 0.3 50 normal
execute as @e[type=item_display,tag=effectConquerorAnimation,tag=effectConquerorAnimationUp,scores={effectAnimate=75}] at @s run particle trial_omen ~ ~ ~ 0.5 0.8 0.5 0.2 15 normal


execute as @e[type=item_display,tag=effectConquerorAnimation,scores={effectAnimate=76}] at @s run kill @s