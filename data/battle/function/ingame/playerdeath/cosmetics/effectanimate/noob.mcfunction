execute if entity @e[type=block_display,tag=effectNoobAnimation] run schedule function battle:ingame/playerdeath/cosmetics/effectanimate/noob 1t

scoreboard players add @s effectAnimate 0
scoreboard players add @e[type=block_display,tag=effectNoobAnimation,scores={effectAnimate=0..}] effectAnimate 1

execute as @e[type=block_display,tag=effectNoobAnimation,scores={effectAnimate=1..}] at @s run tp @s ~ ~-0.3 ~ ~10 ~
execute as @e[type=block_display,tag=effectNoobAnimation,tag=targetspin] at @s run data modify entity @s Rotation set from entity @e[type=block_display,tag=spin,sort=nearest,tag=effectNoobAnimation,limit=1] Rotation
execute as @e[type=block_display,tag=effectNoobAnimation,scores={effectAnimate=1..}] at @s run particle sneeze ~ ~ ~ 0.5 0.5 0.5 0.1 10 normal
execute as @e[type=block_display,tag=effectNoobAnimation,scores={effectAnimate=1..}] at @s run playsound minecraft:entity.slime.squish_small master @a[distance=..50] ~ ~ ~ 0.8 0
execute as @e[type=block_display,tag=effectNoobAnimation,scores={effectAnimate=40}] at @s run particle sneeze ~ ~ ~ 2 2 2 0.1 200 normal
execute as @e[type=block_display,tag=effectNoobAnimation,scores={effectAnimate=40}] at @s run playsound minecraft:block.beehive.enter master @a[distance=..50] ~ ~ ~ 0.8 0
execute as @e[type=block_display,tag=effectNoobAnimation,scores={effectAnimate=40}] at @s run playsound minecraft:entity.sniffer.eat master @a[distance=..50] ~ ~ ~ 0.8 0
execute as @e[type=block_display,tag=effectNoobAnimation,scores={effectAnimate=40}] at @s run playsound minecraft:entity.sniffer.digging_stop master @a[distance=..50] ~ ~ ~ 0.8 2
execute as @e[type=block_display,tag=effectNoobAnimation,scores={effectAnimate=40}] at @s run playsound minecraft:entity.slime.squish_small master @a[distance=..50] ~ ~ ~ 0.8 0
execute as @e[type=block_display,tag=effectNoobAnimation,scores={effectAnimate=40}] at @s run playsound minecraft:entity.slime.squish master @a[distance=..50] ~ ~ ~ 0.8 0
execute as @e[type=block_display,tag=effectNoobAnimation,scores={effectAnimate=40}] at @s run kill @e[type=block_display,tag=effectNoobAnimation,sort=nearest,limit=5]