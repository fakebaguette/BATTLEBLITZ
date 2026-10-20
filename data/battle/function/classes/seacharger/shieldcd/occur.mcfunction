clear @s shield[custom_data={SeachShield:1b,NoDrop:1b}]
playsound minecraft:item.shield.break player @a ~ ~ ~ 1 1.2
playsound minecraft:item.armor.equip_chain player @a ~ ~ ~ 1 0.7
effect give @s absorption 4 0
scoreboard players set @s seach_shield_dura 0
scoreboard players add @s seach_shield_cd 1

function battle:classes/seacharger/shieldcd/item_cd/loop
function battle:classes/seacharger/replace_spear/no_shield