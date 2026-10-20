particle snowflake ~ ~ ~ 1 1 1 0.1 50 normal @a
playsound entity.wind_charge.wind_burst master @a ~ ~ ~ 2 0.6
playsound minecraft:entity.shulker_bullet.hurt master @a ~ ~ ~ 2 1.8

function battle:classes/magus/cryo/item/stack_loop
function battle:classes/magus/cryo/display/e_spec
execute if entity @s[tag=cryo_Team1] run function battle:classes/magus/cryo/display/e_t1
execute if entity @s[tag=cryo_Team2] run function battle:classes/magus/cryo/display/e_t2

execute on passengers run kill @s
kill @n[type=snowball,tag=cryo_active,distance=..1]
kill @s