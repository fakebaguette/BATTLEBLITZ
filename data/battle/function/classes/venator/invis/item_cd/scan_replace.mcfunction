scoreboard players add @s vena_invis_scan_i 1

$execute if items entity @s container.$(scan_slot) amethyst_shard[custom_data={NoDrop:1b,VenaSword:1b}] run scoreboard players set @s vena_invis_slot $(scan_slot)
execute store result storage venator slot int 1 run scoreboard players get @s vena_invis_slot
execute if score @s vena_invis_slot matches 0.. run function battle:classes/venator/invis/item_cd/replace with storage venator

execute store result storage venator scan_slot int 1 run scoreboard players get @s vena_invis_scan_i
execute unless score @s vena_invis_slot matches 0.. run function battle:classes/venator/invis/item_cd/scan_replace with storage venator
