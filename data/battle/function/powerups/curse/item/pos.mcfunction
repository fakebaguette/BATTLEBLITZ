summon item ~ ~ ~ {Tags:[new_item],Item:{id:"minecraft:skull_pottery_sherd",count:1,components:{"minecraft:enchantment_glint_override":true}},OnGround:0b}
execute as @n[type=item,tag=new_item] run function battle:powerups/curse/item/apply
function battle:powerups/curse/cd/loop