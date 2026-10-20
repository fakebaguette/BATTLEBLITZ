scoreboard players display numberformat @s hp_display fixed ""

scoreboard objectives add hp_PID dummy
execute unless score @s hp_PID matches 0.. run scoreboard players add $total hp_PID 1
execute unless score @s hp_PID matches 0.. run scoreboard players operation @s hp_PID = $total hp_PID

execute store result storage hp_display temp_number int 1 run scoreboard players get @s hp_PID

loot replace entity 3ecf96f6-5342-4ab1-a629-10926cea8230 container.0 loot battle:player_name
data modify storage hp_display temp_name set from entity 3ecf96f6-5342-4ab1-a629-10926cea8230 item.components."minecraft:profile".name
function battle:other/hp_display/2-create_storage with storage hp_display