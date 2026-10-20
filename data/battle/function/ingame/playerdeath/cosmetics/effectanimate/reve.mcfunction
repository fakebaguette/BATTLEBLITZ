execute if entity @e[type=item_display,tag=effectReveAnimation] run schedule function battle:ingame/playerdeath/cosmetics/effectanimate/reve 1t

scoreboard players add @s effectAnimate 0
scoreboard players add @e[type=item_display,tag=effectReveAnimation,scores={effectAnimate=0..}] effectAnimate 1

execute as @e[type=item_display,tag=effectReveAnimation,scores={effectAnimate=1..}] at @s run tp @s ~ ~0.2 ~ ~10 ~
execute as @e[type=item_display,tag=effectReveAnimation,scores={effectAnimate=1..}] at @s run particle small_flame ~ ~ ~ 0.5 0.5 0.5 0 3 normal @a
execute as @e[type=item_display,tag=effectReveAnimation,scores={effectAnimate=1..}] at @s run particle raid_omen ^ ^ ^0.5 0.1 0.1 0.1 0 1 normal @a


execute as @e[type=item_display,tag=effectReveAnimation,scores={effectAnimate=40}] at @s run particle flame ~ ~ ~ 0.5 0.8 0.5 0.3 50 normal
execute as @e[type=item_display,tag=effectReveAnimation,scores={effectAnimate=41}] at @s run kill @s