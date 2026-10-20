clear @s red_dye[custom_data={NoDrop:1b,FangsRune:1b}] 1

execute if entity @s[tag=conj_up] run playsound entity.breeze.charge master @a ~ ~ ~ 2 1.2
execute if entity @s[tag=conj_up] run playsound entity.breeze.charge master @a ~ ~ ~ 2 1.2
execute if entity @s[tag=conj_up] run playsound entity.breeze.charge master @a ~ ~ ~ 2 1.2
playsound item.golden_dandelion.use master @a ~ ~ ~ 1 0.7
playsound entity.breeze.wind_burst master @a ~ ~ ~ 0.7 1.7
particle poof ~ ~1 ~ 0.5 0.5 0.5 0.1 10 normal

execute as @s at @s positioned ~ ~1 ~ run function battle:classes/conjurer/fangs/item/pos

tag @s add conjl_fangs
function battle:classes/conjurer/cycle/item_cd/loop

scoreboard players add @s conj_count 1