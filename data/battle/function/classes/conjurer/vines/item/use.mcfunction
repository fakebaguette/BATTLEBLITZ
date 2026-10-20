clear @s lime_dye[custom_data={NoDrop:1b,VinesRune:1b}] 1

execute if entity @s[tag=conj_up] run playsound entity.breeze.charge master @a ~ ~ ~ 2 1.2
execute if entity @s[tag=conj_up] run playsound entity.breeze.charge master @a ~ ~ ~ 2 1.2
execute if entity @s[tag=conj_up] run playsound entity.breeze.charge master @a ~ ~ ~ 2 1.2

playsound block.grass.place master @a ~ ~ ~ 1 0.7
playsound minecraft:block.cave_vines.place master @a ~ ~ ~ 1 0.7
playsound entity.breeze.wind_burst master @a ~ ~ ~ 0.3 1.4
particle poof ~ ~1 ~ 0.5 0.5 0.5 0.1 10 normal

execute as @s at @s positioned ~ ~1 ~ run function battle:classes/conjurer/vines/item/pos

tag @s add conjl_vines
function battle:classes/conjurer/cycle/item_cd/loop

scoreboard players add @s conj_count 1