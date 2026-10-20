clear @s blue_dye[custom_data={NoDrop:1b,LifeRune:1b}] 1

execute if entity @s[tag=conj_up] run playsound entity.breeze.charge master @a ~ ~ ~ 2 1.2
execute if entity @s[tag=conj_up] run playsound entity.breeze.charge master @a ~ ~ ~ 2 1.2
execute if entity @s[tag=conj_up] run playsound entity.breeze.charge master @a ~ ~ ~ 2 1.2
playsound entity.puffer_fish.blow_up master @a ~ ~ ~ 0.7 1.7
particle poof ~ ~1 ~ 0.5 0.5 0.5 0.1 10 normal

execute as @s at @s positioned ~ ~1 ~ run function battle:classes/conjurer/life/item/pos

tag @s add conjl_life
function battle:classes/conjurer/cycle/item_cd/loop

scoreboard players add @s conj_count 1