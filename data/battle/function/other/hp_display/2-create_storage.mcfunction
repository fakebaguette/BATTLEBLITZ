$data modify storage $(temp_number) storage_name set value $(temp_number)
$data modify storage $(temp_number) name set value $(temp_name)
$execute store result storage $(temp_number) player_hp int 1 run scoreboard players get @s health

$data modify storage $(temp_number) health_icon set value ""
$data modify storage $(temp_number) resist_icon set value ""
$data modify storage $(temp_number) absorp_icon set value ""
$data modify storage $(temp_number) effect_space set value ""

$execute if entity @s[nbt={active_effects:[{id:"minecraft:health_boost"}]}] run data modify storage $(temp_number) health_icon set value "§c❤" 
$execute if entity @s[nbt={active_effects:[{id:"minecraft:resistance"}]}] run data modify storage $(temp_number) resist_icon set value "§3⛨" 
$execute if entity @s[nbt={active_effects:[{id:"minecraft:absorption"}]}] run data modify storage $(temp_number) absorp_icon set value "§e❤" 

$execute if entity @s[nbt={active_effects:[{id:"minecraft:health_boost"}]}] run data modify storage $(temp_number) effect_space set value " " 
$execute if entity @s[nbt={active_effects:[{id:"minecraft:resistance"}]}] run data modify storage $(temp_number) effect_space set value " " 
$execute if entity @s[nbt={active_effects:[{id:"minecraft:absorption"}]}] run data modify storage $(temp_number) effect_space set value " " 

$data modify storage $(temp_number) mob_hp set value ""
$execute if entity @s[tag=praetorian_class] if predicate battle:praetorian/is_riding on vehicle store result storage $(temp_number) mob_hp int 1 run scoreboard players get @s mob_health
$execute if entity @s[tag=cavalier_class] if predicate battle:cavalier/is_riding on vehicle store result storage $(temp_number) mob_hp int 1 run scoreboard players get @s mob_health
$execute if entity @s[tag=seacharger_class] if predicate battle:seacharger/is_riding on vehicle store result storage $(temp_number) mob_hp int 1 run scoreboard players get @s mob_health

$data modify storage $(temp_number) mob_display_hp set value ""
$execute if entity @s[tag=praetorian_class] if predicate battle:praetorian/is_riding on vehicle run function battle:other/hp_display/3-mob_hp with storage $(temp_number)
$execute if entity @s[tag=cavalier_class] if predicate battle:cavalier/is_riding on vehicle run function battle:other/hp_display/3-mob_hp with storage $(temp_number)
$execute if entity @s[tag=seacharger_class] if predicate battle:seacharger/is_riding on vehicle run function battle:other/hp_display/3-mob_hp with storage $(temp_number)

$function battle:other/hp_display/4-player_hp with storage $(temp_number)