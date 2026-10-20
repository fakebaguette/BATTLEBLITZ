function battle:lobby/cosmetics/reset/chat
$tag @s[tag=$(clicked_class)KillMessage] add EQUIP$(clicked_class)KillMessage
$tellraw @s[tag=$(clicked_class)KillMessage] ["[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"You have equipped the ","color":"white"},{"text":"$(clicked_class_display)","color":"$(clicked_class_color)","bold":true},{"text":" Kill Message","color":"white","bold":true},{"text":".","color":"white"}]
$execute at @s run playsound block.note_block.pling master @s[tag=$(clicked_class)KillMessage] ~ ~ ~ 1 1.7

$tellraw @s[tag=!$(clicked_class)KillMessage] ["[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| You ",{"text":"don't","color":"red"},{"text":" have this cosmetic","color":"white"},"."]
$execute at @s run playsound minecraft:block.vault.insert_item_fail master @s[tag=!$(clicked_class)KillMessage] ~ ~ ~ 1 1.3

function battle:lobby/cosmetics/open_dialog/disable_obj
function battle:lobby/cosmetics/open_dialog/init_obj
trigger cosmetics_open_messages