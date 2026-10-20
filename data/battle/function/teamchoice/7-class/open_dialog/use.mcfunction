execute at @s run playsound minecraft:block.note_block.bit master @s ~ ~ ~ 0.3 0.8

function battle:teamchoice/7-class/open_dialog/check
function battle:teamchoice/7-class/open_dialog/cd/loop

clear @s book[custom_data={NoDrop:1b,open_class_dialog:1b}]
give @s book[custom_name=[{"bold":false,"color":"white","italic":false,"text":"["},{"bold":true,"color":"gold","italic":false,"text":"Open Class Selection"},{"bold":false,"color":"white","italic":false,"text":"]"}],lore=[{"bold":false,"color":"white","italic":false,"text":"Use: Open the class selection screen."}],custom_data={NoDrop:1b,open_class_dialog:1b},food={nutrition:0,saturation:0,can_always_eat:true},consumable={consume_seconds:1000000,animation:"none"},tooltip_display={hide_tooltip:false,hidden_components:["enchantments","unbreakable","attribute_modifiers","trim","dyed_color","potion_contents","provides_trim_material","potion_duration_scale","enchantment_glint_override","can_break","can_place_on"]}] 1

scoreboard objectives add class_open_main_dialog trigger
scoreboard players reset @s class_open_main_dialog
scoreboard players enable @s class_open_main_dialog