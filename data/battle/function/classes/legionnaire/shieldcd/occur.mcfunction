clear @s shield[custom_data={NoDrop:1b,legionShield:1b}]
effect give @s speed 3 0 true
effect give @s absorption 4 0 true
playsound minecraft:item.shield.break player @a ~ ~ ~ 1 1.4
playsound minecraft:item.armor.equip_chain player @a ~ ~ ~ 1 0.9
scoreboard players set @s legion_shield_dura 0

function battle:classes/legionnaire/shieldcd/item_cd/loop