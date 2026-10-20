summon item ~ ~ ~ {Tags:[new_item,mara_bola_item],Item:{id:"minecraft:lead",count:1,components:{item_model:"air","minecraft:enchantment_glint_override":true}},OnGround:0b}

execute if entity @s[tag=Team1] run tag @n[type=item,tag=new_item,tag=mara_bola_item] add mara_bola_T1
execute if entity @s[tag=Team2] run tag @n[type=item,tag=new_item,tag=mara_bola_item] add mara_bola_T2

function battle:classes/marauder/bola/throw/2/extra

execute as @n[type=item,tag=new_item,tag=mara_bola_item] run function battle:classes/marauder/bola/throw/2/apply
function battle:classes/marauder/bola/cd/loop

schedule function battle:classes/marauder/bola/throw/2/land_loop 2t