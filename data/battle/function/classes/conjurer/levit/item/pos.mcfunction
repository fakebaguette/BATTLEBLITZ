execute if entity @s[tag=!conj_up] run summon item ~ ~ ~ {Tags:[new_item],Item:{id:"glowstone_dust",count:1,components:{"minecraft:enchantment_glint_override":true}}}
execute if entity @s[tag=conj_up] run summon item ~ ~ ~ {Tags:[new_item],Item:{id:"eye_armor_trim_smithing_template",count:1,components:{"minecraft:enchantment_glint_override":true}}}

execute if entity @s[tag=conj_up] summon vex run function battle:classes/conjurer/levit/item/extra
execute if entity @s[tag=conj_up] summon vex run function battle:classes/conjurer/levit/item/extra

execute as @n[type=item,tag=new_item] run function battle:classes/conjurer/levit/item/apply
function battle:classes/conjurer/levit/cd/loop

schedule function battle:classes/conjurer/levit/item/land_loop 2t

tag @s remove conj_up