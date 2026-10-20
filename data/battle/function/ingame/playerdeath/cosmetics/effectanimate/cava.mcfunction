execute if entity @e[type=block_display,tag=effectCavaAnimation] run schedule function battle:ingame/playerdeath/cosmetics/effectanimate/cava 1t

scoreboard players add @s effectAnimate 0
scoreboard players add @e[type=camel,tag=effectCavaAnimation,scores={effectAnimate=0..}] effectAnimate 1

execute as @e[type=camel,tag=effectCavaAnimation,scores={effectAnimate=1..}] at @s run tp @s ^ ^0.3 ^.3 ~20 ~
execute as @e[type=camel,tag=effectCavaAnimation,scores={effectAnimate=1..}] at @s run tp @e[type=block_display,tag=effectCavaAnimation,tag=targetspin] ^ ^.2 ^-0.2 ~20 ~
execute as @e[type=camel,tag=effectCavaAnimation,scores={effectAnimate=1..}] at @s run particle large_smoke ~ ~ ~ 0.5 0.5 0.5 0 3 normal @a
execute as @e[type=camel,tag=effectCavaAnimation,scores={effectAnimate=1..}] at @s run particle enchanted_hit ^ ^ ^1 0 0 0 0 1 normal @a
execute as @e[type=camel,tag=effectCavaAnimation,scores={effectAnimate=1..}] at @s run playsound entity.chicken.egg master @a ~ ~ ~ 1 1

execute as @e[type=camel,tag=effectCavaAnimation,scores={effectAnimate=60}] at @s run playsound entity.camel.ambient master @a ~ ~ ~ 10 1
execute as @e[type=camel,tag=effectCavaAnimation,scores={effectAnimate=60}] at @s run particle poof ~ ~ ~ 0.5 0.8 0.5 0.3 50 normal
execute as @e[type=camel,tag=effectCavaAnimation,scores={effectAnimate=61}] at @s run kill @e[type=item_display,tag=effectCavaAnimation,sort=nearest,limit=1]
execute as @e[type=camel,tag=effectCavaAnimation,scores={effectAnimate=61}] at @s run kill @e[type=block_display,tag=effectCavaAnimation,sort=nearest,limit=1]
execute as @e[type=camel,tag=effectCavaAnimation,scores={effectAnimate=61}] at @s run tp @s ~ ~100 ~
execute as @e[type=camel,tag=effectCavaAnimation,scores={effectAnimate=61}] at @s run kill @s