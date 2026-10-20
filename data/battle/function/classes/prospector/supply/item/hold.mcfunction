schedule function battle:classes/prospector/supply/item/hold 2t

execute as @a[tag=prospector_class] if items entity @s weapon.* paper[custom_data={supply_drop:1b,NoDrop:1b}] run function battle:classes/prospector/supply/item/ray/1-click
execute as @a[tag=prospector_class] if items entity @s weapon.* tnt[custom_data={PowerUp:1b,prospTNT:1b,NoDrop:1b}] run function battle:classes/prospector/supply/tnt/ray/1-click