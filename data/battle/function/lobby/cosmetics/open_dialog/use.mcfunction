execute at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 2

function battle:lobby/cosmetics/open_dialog/cd/loop

function battle:lobby/cosmetics/open_dialog/init_obj
dialog show @s battle:crates/main_menu
clear @s book[custom_data={NoDrop:1b,open_cosmetics_dialog:1b}]