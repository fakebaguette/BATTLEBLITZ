schedule function battle:lobby/armorgui/clear 1t

clear @a[tag=inLobby] *[custom_data={emptyBoxGui:1b,NoDrop:1b}]

execute at @e[tag=conjItemContents] run function battle:lobby/armorgui/conj
execute at @e[tag=legionItemContents] run function battle:lobby/armorgui/legion
execute at @e[tag=lightItemContents] run function battle:lobby/armorgui/light
execute at @e[tag=magusItemContents] run function battle:lobby/armorgui/magus
execute at @e[tag=maraItemContents] run function battle:lobby/armorgui/mara
execute at @e[tag=northItemContents] run function battle:lobby/armorgui/north
execute at @e[tag=praetItemContents] run function battle:lobby/armorgui/praet
execute at @e[tag=reveItemContents] run function battle:lobby/armorgui/reve
execute at @e[tag=trapItemContents] run function battle:lobby/armorgui/trap
execute at @e[tag=venaItemContents] run function battle:lobby/armorgui/vena
execute at @e[tag=prospItemContents] run function battle:lobby/armorgui/prosp
execute at @e[tag=cavaItemContents] run function battle:lobby/armorgui/cava
execute at @e[tag=seachItemContents] run function battle:lobby/armorgui/seach

execute as @e[type=interaction,tag=click_class_gui] at @s if data entity @s attack run particle enchanted_hit ~ ~.5 ~ 1 2 1 0 30 normal
execute as @e[type=interaction,tag=click_class_gui] at @s if data entity @s interaction run particle enchanted_hit ~ ~.5 ~ 1 2 1 0 30 normal

execute as @e[type=interaction,tag=click_class_gui] on attacker at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.4
execute as @e[type=interaction,tag=click_class_gui] on target at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.4

execute as @e[type=interaction,tag=click_class_gui,tag=magus_gui] on attacker run dialog show @s battle:class_info/magus
execute as @e[type=interaction,tag=click_class_gui,tag=magus_gui] on target run dialog show @s battle:class_info/magus

execute as @e[type=interaction,tag=click_class_gui,tag=marauder_gui] on attacker run dialog show @s battle:class_info/marauder
execute as @e[type=interaction,tag=click_class_gui,tag=marauder_gui] on target run dialog show @s battle:class_info/marauder

execute as @e[type=interaction,tag=click_class_gui,tag=northman_gui] on attacker run dialog show @s battle:class_info/northman
execute as @e[type=interaction,tag=click_class_gui,tag=northman_gui] on target run dialog show @s battle:class_info/northman

execute as @e[type=interaction,tag=click_class_gui,tag=revenant_gui] on attacker run dialog show @s battle:class_info/revenant
execute as @e[type=interaction,tag=click_class_gui,tag=revenant_gui] on target run dialog show @s battle:class_info/revenant

execute as @e[type=interaction,tag=click_class_gui,tag=lightwielder_gui] on attacker run dialog show @s battle:class_info/lightwielder
execute as @e[type=interaction,tag=click_class_gui,tag=lightwielder_gui] on target run dialog show @s battle:class_info/lightwielder

execute as @e[type=interaction,tag=click_class_gui,tag=prospector_gui] on attacker run dialog show @s battle:class_info/prospector
execute as @e[type=interaction,tag=click_class_gui,tag=prospector_gui] on target run dialog show @s battle:class_info/prospector

execute as @e[type=interaction,tag=click_class_gui,tag=venator_gui] on attacker run dialog show @s battle:class_info/venator
execute as @e[type=interaction,tag=click_class_gui,tag=venator_gui] on target run dialog show @s battle:class_info/venator

execute as @e[type=interaction,tag=click_class_gui,tag=praetorian_gui] on attacker run dialog show @s battle:class_info/praetorian
execute as @e[type=interaction,tag=click_class_gui,tag=praetorian_gui] on target run dialog show @s battle:class_info/praetorian

execute as @e[type=interaction,tag=click_class_gui,tag=legionnaire_gui] on attacker run dialog show @s battle:class_info/legionnaire
execute as @e[type=interaction,tag=click_class_gui,tag=legionnaire_gui] on target run dialog show @s battle:class_info/legionnaire

execute as @e[type=interaction,tag=click_class_gui,tag=conjurer_gui] on attacker run dialog show @s battle:class_info/conjurer
execute as @e[type=interaction,tag=click_class_gui,tag=conjurer_gui] on target run dialog show @s battle:class_info/conjurer

execute as @e[type=interaction,tag=click_class_gui,tag=seacharger_gui] on attacker run dialog show @s battle:class_info/seacharger
execute as @e[type=interaction,tag=click_class_gui,tag=seacharger_gui] on target run dialog show @s battle:class_info/seacharger

execute as @e[type=interaction,tag=click_class_gui,tag=trapshooter_gui] on attacker run dialog show @s battle:class_info/trapshooter
execute as @e[type=interaction,tag=click_class_gui,tag=trapshooter_gui] on target run dialog show @s battle:class_info/trapshooter

execute as @e[type=interaction,tag=click_class_gui,tag=cavalier_gui] on attacker run dialog show @s battle:class_info/cavalier
execute as @e[type=interaction,tag=click_class_gui,tag=cavalier_gui] on target run dialog show @s battle:class_info/cavalier

execute as @e[type=interaction,tag=click_class_gui] run data remove entity @s attack
execute as @e[type=interaction,tag=click_class_gui] run data remove entity @s interaction