execute if entity @s[tag=!conj_up] run summon item ~ ~ ~ {Tags:[new_item],Item:{id:"vine",count:1,components:{"minecraft:enchantment_glint_override":true}}}
execute if entity @s[tag=conj_up] run summon item ~ ~ ~ {Tags:[new_item],Item:{id:"wild_armor_trim_smithing_template",count:1,components:{"minecraft:enchantment_glint_override":true}}}

execute if entity @s[tag=conj_up] summon slime run function battle:classes/conjurer/vines/item/extra
execute if entity @s[tag=conj_up] summon slime run function battle:classes/conjurer/vines/item/extra
execute if entity @s[tag=conj_up] summon slime run function battle:classes/conjurer/vines/item/extra

execute as @n[type=item,tag=new_item] run function battle:classes/conjurer/vines/item/apply
function battle:classes/conjurer/vines/cd/loop

schedule function battle:classes/conjurer/vines/item/land_loop 2t

tag @s remove conj_up