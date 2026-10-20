schedule function battle:classes/marauder/main 5t

scoreboard objectives add mara_horn_used minecraft.used:minecraft.goat_horn
scoreboard objectives add mara_horn_cd dummy
scoreboard objectives add mara_next_axe minecraft.used:minecraft.golden_axe

scoreboard players reset @a[tag=!marauder_class] mara_horn_used
execute as @a unless items entity @s container.* golden_axe[custom_data={MaraShAxe:1b,NoDrop:1b}] unless items entity @s hotbar.* golden_axe[custom_data={MaraShAxe:1b,NoDrop:1b}] unless items entity @s weapon.offhand golden_axe[custom_data={MaraShAxe:1b,NoDrop:1b}] unless items entity @s player.cursor golden_axe[custom_data={MaraShAxe:1b,NoDrop:1b}] run scoreboard players reset @s mara_next_axe
execute as @a[scores={mara_horn_used=1}] at @s run function battle:classes/marauder/occur