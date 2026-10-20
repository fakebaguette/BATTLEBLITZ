clear @s shield[custom_data={ShieldBash:1b,NoDrop:1b}]
playsound minecraft:item.shield.break player @a ~ ~ ~ 1 1.2
playsound minecraft:item.armor.equip_chain player @a ~ ~ ~ 1 0.7
effect give @s speed 2 0
scoreboard players set @s north_shield_dura 0

function battle:classes/northman/shieldcd/item_cd/loop