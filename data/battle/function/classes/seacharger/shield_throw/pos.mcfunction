summon item ~ ~ ~ {Tags:[new_item,shield_item],Item:{id:"minecraft:shield",count:1,components:{item_model:"air","minecraft:enchantment_glint_override":true}},OnGround:0b}

execute if entity @s[tag=Team1] run tag @n[type=item,tag=new_item,tag=shield_item] add shield_T1
execute if entity @s[tag=Team2] run tag @n[type=item,tag=new_item,tag=shield_item] add shield_T2

function battle:classes/seacharger/shield_throw/extra

execute as @n[type=item,tag=new_item,tag=shield_item] run function battle:classes/seacharger/shield_throw/apply

tag @s add seach_threw_shield
function battle:classes/seacharger/shieldcd/item_cd/loop

schedule function battle:classes/seacharger/shield_throw/land_loop 2t