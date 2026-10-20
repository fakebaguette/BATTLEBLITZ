schedule function battle:classes/trapshooter/trap/main 2t

execute as @a[tag=trapshooter_class] if items entity @s weapon.* comparator[custom_data={exposure_trap:1b,NoDrop:1b}] run function battle:classes/trapshooter/trap/ray/1-click