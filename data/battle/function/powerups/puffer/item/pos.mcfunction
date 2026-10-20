summon item ^ ^ ^ {Tags:[new_item],Item:{id:"minecraft:pufferfish",count:1,components:{"minecraft:enchantment_glint_override":true}},OnGround:0b}
execute summon pufferfish run function battle:powerups/puffer/item/extra
execute as @n[type=item,tag=new_item] run function battle:powerups/puffer/item/apply
function battle:powerups/puffer/cd/loop