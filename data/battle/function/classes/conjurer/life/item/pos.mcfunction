execute if entity @s[tag=conj_up] run summon item ~ ~ ~ {Tags:[new_item],Item:{id:"tide_armor_trim_smithing_template",count:1,components:{"minecraft:enchantment_glint_override":true}}}
execute if entity @s[tag=!conj_up] run summon item ~ ~ ~ {Tags:[new_item],Item:{id:"torchflower_seeds",count:1,components:{"minecraft:enchantment_glint_override":true}}}

execute as @n[type=item,tag=new_item] run function battle:classes/conjurer/life/item/apply
function battle:classes/conjurer/life/cd/loop

schedule function battle:classes/conjurer/life/item/land_loop 2t

tag @s remove conj_up