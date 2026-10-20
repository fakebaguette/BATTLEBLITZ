clear @s comparator[custom_data={NoDrop:1b,exposure_trap:1b}] 1

particle minecraft:poof ~ ~ ~ 1 1 1 0.1 50 normal @a
playsound minecraft:entity.iron_golem.repair master @a ~ ~ ~ 0.5 1.3
playsound minecraft:block.smithing_table.use master @a ~ ~ ~ 0.5 1.4
playsound block.bamboo_wood.break master @a ~ ~ ~ 0.5 1.4

loot spawn ~ ~ ~ mine ~ ~-0.1 ~ stick[enchantments={"silk_touch":1}]
data modify storage trapshooter trap_block set from entity @n[type=item] Item.id
execute if entity @s[tag=Team1] run data modify storage trapshooter trap_team set value "TrapTeam1"
execute if entity @s[tag=Team2] run data modify storage trapshooter trap_team set value "TrapTeam2"
kill @n[type=item]
execute summon interaction run function battle:classes/trapshooter/trap/spawn with storage trapshooter

function battle:classes/trapshooter/trap/run