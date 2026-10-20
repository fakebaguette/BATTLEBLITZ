tag @s add north_has_lightning
scoreboard players reset @s north_rune_charge
clear @s cyan_dye[custom_data={NoDrop:1b,northRuneshard:1b}] 1
playsound entity.lightning_bolt.thunder master @a[distance=..20] ~ ~ ~ 3 0.8
playsound entity.lightning_bolt.impact master @a[distance=..20] ~ ~ ~ 3 0.8
playsound block.beacon.power_select master @a[distance=..20] ~ ~ ~ 3 0.9
playsound entity.player.levelup master @a[distance=..20] ~ ~ ~ 3 0.7
particle snowflake ~ ~ ~ 0.5 0.8 0.5 0.5 200 normal @a
particle cloud ~ ~ ~ 0.5 0.8 0.5 0.5 100 normal @a
particle enchanted_hit ~ ~ ~ 0.5 0.8 0.5 0.5 100 normal @a
particle wax_off ~ ~ ~ 0.5 0.8 0.5 1 50 normal @a

function battle:classes/northman/rune/lightning