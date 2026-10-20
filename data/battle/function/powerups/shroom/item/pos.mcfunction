summon item ~ ~ ~ {Tags:[new_item],Item:{id:"minecraft:warped_fungus",count:1,components:{"minecraft:enchantment_glint_override":true}},OnGround:0b}

execute if entity @s[team=Red] run tag @n[type=item,tag=new_item] add shroom_Red
execute if entity @s[team=Aqua] run tag @n[type=item,tag=new_item] add shroom_Aqua
execute if entity @s[team=Lime] run tag @n[type=item,tag=new_item] add shroom_Lime
execute if entity @s[team=Magenta] run tag @n[type=item,tag=new_item] add shroom_Magenta
execute if entity @s[team=Gold] run tag @n[type=item,tag=new_item] add shroom_Gold
execute if entity @s[team=Yellow] run tag @n[type=item,tag=new_item] add shroom_Yellow

execute as @n[type=item,tag=new_item] run function battle:powerups/shroom/item/apply
function battle:powerups/shroom/cd/loop