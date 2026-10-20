summon snowball ~ ~ ~ {Tags:[new_item],Item:{id:"snowball",count:1,components:{"minecraft:enchantment_glint_override":true}}}

function battle:classes/magus/cryo/item/extra

execute at @n[type=snowball] as @n[type=snowball,tag=new_item] run function battle:classes/magus/cryo/item/apply

schedule function battle:classes/magus/cryo/item/land_loop 2t