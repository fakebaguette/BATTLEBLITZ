schedule function battle:classes/magus/cryo/main 1t

scoreboard objectives add use_magus_snowball used:snowball
scoreboard players reset @a[tag=!magus_class] use_magus_snowball

execute as @a[scores={use_magus_snowball=1..}] unless items entity @s weapon.* snowball[custom_data={NoDrop:1b,CryoRune:1b}] unless items entity @s inventory.* snowball[custom_data={NoDrop:1b,CryoRune:1b}] run function battle:classes/magus/cryo/item_cd/loop

execute as @a[scores={use_magus_snowball=1..}] at @s run function battle:classes/magus/cryo/item/use

execute as @e[type=block_display,tag=cryo_freeze] at @s unless entity @a[distance=..2, scores={cryo_stack_enemy=3}] run kill @s