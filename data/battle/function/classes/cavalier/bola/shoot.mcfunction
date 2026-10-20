execute if score @s cava_bola_charge_ticks matches 0..30 run function battle:classes/cavalier/bola/throw/1/use
execute if score @s cava_bola_charge_ticks matches 31..59 run function battle:classes/cavalier/bola/throw/2/use
execute if score @s cava_bola_charge_ticks matches 60.. run function battle:classes/cavalier/bola/throw/3/use

scoreboard players reset @s cava_bola_charge_ticks
experience set @s 0 points
experience set @s 0 levels
clear @s brown_dye[custom_data={cava_bola:1b,NoDrop:1b}] 1