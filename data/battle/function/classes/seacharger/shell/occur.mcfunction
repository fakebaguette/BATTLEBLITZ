tag @s add seach_has_airborne
scoreboard players reset @s seach_rune_charge
clear @s nautilus_shell[custom_data={NoDrop:1b,nautilus_rune:1b}] 1

playsound entity.turtle.egg_break master @a ~ ~ ~ 2 0.9
playsound block.conduit.activate master @a ~ ~ ~ 2 0.6
playsound block.conduit.ambient master @a ~ ~ ~ 2 0.5
playsound minecraft:block.metal.break master @a ~ ~ ~ 2 1.7
playsound entity.nautilus.eat master @a ~ ~ ~ 2 1.5

playsound entity.player.levelup master @a ~ ~ ~ 3 0.7
particle bubble_pop ~ ~ ~ 0.5 0.8 0.5 0.5 200 normal @a
particle nautilus ~ ~ ~ 0.5 0.8 0.5 1 100 normal @a
particle enchanted_hit ~ ~ ~ 0.5 0.8 0.5 0.5 100 normal @a
particle sculk_charge_pop ~ ~ ~ 0.5 0.8 0.5 1 50 normal @a

effect give @s resistance 8 0 false
effect give @s haste 8 0 false

function battle:classes/seacharger/shell/airborne