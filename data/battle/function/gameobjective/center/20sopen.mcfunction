scoreboard players reset .time centerTimer
tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"Center has ","color":"white"},{"text":"UNLOCKED","color":"green"},{"text":"! ","color":"white"},{"text":"🔓","color":"green"},"\n "]
playsound minecraft:block.ender_chest.open master @a[distance=..50] ~ ~ ~ 2 0
playsound minecraft:block.shulker_box.open master @a[distance=..50] ~ ~ ~ 2 0
playsound minecraft:item.armor.equip_netherite master @a[distance=..50] ~ ~ ~ 2 0.8
playsound minecraft:item.bundle.drop_contents master @a[distance=..50] ~ ~ ~ 2 0.8
playsound minecraft:block.ender_chest.open master @a[distance=..50] ~ ~ ~ 2 0
playsound minecraft:block.shulker_box.open master @a[distance=..50] ~ ~ ~ 2 0
playsound minecraft:item.armor.equip_netherite master @a[distance=..50] ~ ~ ~ 2 0.8
playsound minecraft:item.bundle.drop_contents master @a[distance=..50] ~ ~ ~ 2 0.8
execute at @e[type=interaction,tag=5x5center] run fill ~1 ~1 ~1 ~-1 ~1 ~-1 white_concrete replace barrier
execute as @e[type=interaction,tag=5x5center] at @s run fill ~1 ~2 ~1 ~-1 ~6 ~-1 air