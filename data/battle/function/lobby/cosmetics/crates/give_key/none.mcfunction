$tellraw @s ["[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| You ",{"text":"don't","color":"red"}," have any ",{"text":"$(clicked_class_display)","bold":true,"color":"$(clicked_class_color)"},{"text":" Crate Keys","color":"white"},"."]
execute at @s run playsound minecraft:block.vault.insert_item_fail master @s ~ ~ ~ 10 1.3

function battle:lobby/cosmetics/open_dialog/disable_obj
function battle:lobby/cosmetics/open_dialog/init_obj
trigger cosmetics_open_crates