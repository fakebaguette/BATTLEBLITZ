clear @s shield[custom_data={SeachShield:1b,NoDrop:1b}]

function battle:classes/seacharger/shieldcd/item_cd/loop
function battle:classes/seacharger/replace_spear/no_shield

playsound minecraft:entity.snow_golem.shoot master @a ~ ~ ~ 0.7 1.2
playsound item.shield.break master @a ~ ~ ~ 2 1.2
playsound item.armor.equip_chain master @a ~ ~ ~ 2 0.7
effect give @s speed 2 0

execute as @s at @s positioned ~ ~1 ~ run function battle:classes/seacharger/shield_throw/pos