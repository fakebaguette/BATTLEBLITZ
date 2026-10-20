summon item ~ ~ ~ {Tags:[new_item,prosp_tnt_item],Item:{id:"minecraft:tnt",count:1,components:{item_model:"air","minecraft:enchantment_glint_override":true}},OnGround:0b}

execute if entity @s[tag=Team1] run tag @n[type=item,tag=new_item,tag=prosp_tnt_item] add prosp_tnt_T1
execute if entity @s[tag=Team2] run tag @n[type=item,tag=new_item,tag=prosp_tnt_item] add prosp_tnt_T2

function battle:classes/prospector/supply/tnt_throw/extra

execute as @n[type=item,tag=new_item,tag=prosp_tnt_item] run function battle:classes/prospector/supply/tnt_throw/apply

schedule function battle:classes/prospector/supply/tnt_throw/land_loop 2t