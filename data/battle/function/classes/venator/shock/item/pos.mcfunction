summon arrow ~ ~ ~ {Tags:[new_item],item:{id:"echo_shard",count:1,components:{"minecraft:enchantment_glint_override":true,item_model:air}},damage:0d,PierceLevel:99b,NoGravity:1b,Silent:1b}

function battle:classes/venator/shock/item/extra

execute as @n[type=arrow,tag=new_item] run function battle:classes/venator/shock/item/apply
function battle:classes/venator/shock/cd/loop

schedule function battle:classes/venator/shock/item/land_loop 2t