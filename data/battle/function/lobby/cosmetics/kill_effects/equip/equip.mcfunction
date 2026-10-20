function battle:lobby/cosmetics/reset/effect
$tag @s[tag=$(clicked_class)KillEffect] add EQUIP$(clicked_class)KillEffect
$execute at @s run tellraw @s[tag=$(clicked_class)KillEffect] ["[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"You have equipped the ","color":"white"},{"text":"$(clicked_class_display)","color":"$(clicked_class_color)","bold":true},{"text":" Kill Effect","color":"gold","bold":true},{"text":".","color":"white"}]
$playsound block.note_block.pling master @s[tag=$(clicked_class)KillEffect] ~ ~ ~ 1 1.7

$tellraw @s[tag=!$(clicked_class)KillEffect] ["[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| You ",{"text":"don't","color":"red"},{"text":" have this cosmetic","color":"white"},"."]
$execute at @s run playsound minecraft:block.vault.insert_item_fail master @s[tag=!$(clicked_class)KillEffect] ~ ~ ~ 1 1.3

function battle:lobby/cosmetics/open_dialog/disable_obj
function battle:lobby/cosmetics/open_dialog/init_obj
trigger cosmetics_open_effects