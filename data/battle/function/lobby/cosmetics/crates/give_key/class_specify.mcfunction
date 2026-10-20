$execute as @a[scores={give_general_key=1..}] run data modify storage $(player_id) clicked_class set value "General"
$execute as @a[scores={give_general_key=1..}] run data modify storage $(player_id) clicked_class_color set value "white"
$execute as @a[scores={give_general_key=1..}] run data modify storage $(player_id) clicked_class_display set value "Regular"
$execute as @a[scores={give_general_key=1..}] store result storage $(player_id) number_of_keys int 1 run scoreboard players get @s GeneralReward
$execute as @a[scores={give_magus_key=1..}] run data modify storage $(player_id) clicked_class set value "Magus"
$execute as @a[scores={give_magus_key=1..}] run data modify storage $(player_id) clicked_class_color set value "light_purple"
$execute as @a[scores={give_magus_key=1..}] run data modify storage $(player_id) clicked_class_display set value "Magus'"
$execute as @a[scores={give_magus_key=1..}] store result storage $(player_id) number_of_keys int 1 run scoreboard players get @s MagusReward
$execute as @a[scores={give_marauder_key=1..}] run data modify storage $(player_id) clicked_class set value "Marauder"
$execute as @a[scores={give_marauder_key=1..}] run data modify storage $(player_id) clicked_class_color set value "dark_red"
$execute as @a[scores={give_marauder_key=1..}] run data modify storage $(player_id) clicked_class_display set value "Marauder's"
$execute as @a[scores={give_marauder_key=1..}] store result storage $(player_id) number_of_keys int 1 run scoreboard players get @s MarauderReward
$execute as @a[scores={give_northman_key=1..}] run data modify storage $(player_id) clicked_class set value "Northman"
$execute as @a[scores={give_northman_key=1..}] run data modify storage $(player_id) clicked_class_color set value "blue"
$execute as @a[scores={give_northman_key=1..}] run data modify storage $(player_id) clicked_class_display set value "Northman's"
$execute as @a[scores={give_northman_key=1..}] store result storage $(player_id) number_of_keys int 1 run scoreboard players get @s NorthmanReward
$execute as @a[scores={give_revenant_key=1..}] run data modify storage $(player_id) clicked_class set value "Revenant"
$execute as @a[scores={give_revenant_key=1..}] run data modify storage $(player_id) clicked_class_color set value "red"
$execute as @a[scores={give_revenant_key=1..}] run data modify storage $(player_id) clicked_class_display set value "Revenant's"
$execute as @a[scores={give_revenant_key=1..}] store result storage $(player_id) number_of_keys int 1 run scoreboard players get @s RevenantReward
$execute as @a[scores={give_lightwielder_key=1..}] run data modify storage $(player_id) clicked_class set value "Lightwielder"
$execute as @a[scores={give_lightwielder_key=1..}] run data modify storage $(player_id) clicked_class_color set value "#fdfcee"
$execute as @a[scores={give_lightwielder_key=1..}] run data modify storage $(player_id) clicked_class_display set value "Lightwielder's"
$execute as @a[scores={give_lightwielder_key=1..}] store result storage $(player_id) number_of_keys int 1 run scoreboard players get @s LightwielderReward
$execute as @a[scores={give_prospector_key=1..}] run data modify storage $(player_id) clicked_class set value "Prospector"
$execute as @a[scores={give_prospector_key=1..}] run data modify storage $(player_id) clicked_class_color set value "#DFFFB0"
$execute as @a[scores={give_prospector_key=1..}] run data modify storage $(player_id) clicked_class_display set value "Prospector's"
$execute as @a[scores={give_prospector_key=1..}] store result storage $(player_id) number_of_keys int 1 run scoreboard players get @s ProspectorReward
$execute as @a[scores={give_venator_key=1..}] run data modify storage $(player_id) clicked_class set value "Venator"
$execute as @a[scores={give_venator_key=1..}] run data modify storage $(player_id) clicked_class_color set value "dark_purple"
$execute as @a[scores={give_venator_key=1..}] run data modify storage $(player_id) clicked_class_display set value "Venator's"
$execute as @a[scores={give_venator_key=1..}] store result storage $(player_id) number_of_keys int 1 run scoreboard players get @s VenatorReward
$execute as @a[scores={give_praetorian_key=1..}] run data modify storage $(player_id) clicked_class set value "Praetorian"
$execute as @a[scores={give_praetorian_key=1..}] run data modify storage $(player_id) clicked_class_color set value "#FF6600"
$execute as @a[scores={give_praetorian_key=1..}] run data modify storage $(player_id) clicked_class_display set value "Praetorian's"
$execute as @a[scores={give_praetorian_key=1..}] store result storage $(player_id) number_of_keys int 1 run scoreboard players get @s PraetorianReward
$execute as @a[scores={give_legionnaire_key=1..}] run data modify storage $(player_id) clicked_class set value "Legionnaire"
$execute as @a[scores={give_legionnaire_key=1..}] run data modify storage $(player_id) clicked_class_color set value "gold"
$execute as @a[scores={give_legionnaire_key=1..}] run data modify storage $(player_id) clicked_class_display set value "Legionnaire's"
$execute as @a[scores={give_legionnaire_key=1..}] store result storage $(player_id) number_of_keys int 1 run scoreboard players get @s LegionnaireReward
$execute as @a[scores={give_conjurer_key=1..}] run data modify storage $(player_id) clicked_class set value "Conjurer"
$execute as @a[scores={give_conjurer_key=1..}] run data modify storage $(player_id) clicked_class_color set value "dark_green"
$execute as @a[scores={give_conjurer_key=1..}] run data modify storage $(player_id) clicked_class_display set value "Conjurer's"
$execute as @a[scores={give_conjurer_key=1..}] store result storage $(player_id) number_of_keys int 1 run scoreboard players get @s ConjurerReward
$execute as @a[scores={give_seacharger_key=1..}] run data modify storage $(player_id) clicked_class set value "Seacharger"
$execute as @a[scores={give_seacharger_key=1..}] run data modify storage $(player_id) clicked_class_color set value "#45fe98"
$execute as @a[scores={give_seacharger_key=1..}] run data modify storage $(player_id) clicked_class_display set value "Seacharger's"
$execute as @a[scores={give_seacharger_key=1..}] store result storage $(player_id) number_of_keys int 1 run scoreboard players get @s SeachargerReward
$execute as @a[scores={give_trapshooter_key=1..}] run data modify storage $(player_id) clicked_class set value "Trapshooter"
$execute as @a[scores={give_trapshooter_key=1..}] run data modify storage $(player_id) clicked_class_color set value "yellow"
$execute as @a[scores={give_trapshooter_key=1..}] run data modify storage $(player_id) clicked_class_display set value "Trapshooter's"
$execute as @a[scores={give_trapshooter_key=1..}] store result storage $(player_id) number_of_keys int 1 run scoreboard players get @s TrapshooterReward
$execute as @a[scores={give_cavalier_key=1..}] run data modify storage $(player_id) clicked_class set value "Cavalier"
$execute as @a[scores={give_cavalier_key=1..}] run data modify storage $(player_id) clicked_class_color set value "#FFD943"
$execute as @a[scores={give_cavalier_key=1..}] run data modify storage $(player_id) clicked_class_display set value "Cavalier's"
$execute as @a[scores={give_cavalier_key=1..}] store result storage $(player_id) number_of_keys int 1 run scoreboard players get @s CavalierReward

scoreboard players reset @s give_general_key
scoreboard players reset @s give_magus_key
scoreboard players reset @s give_marauder_key
scoreboard players reset @s give_northman_key
scoreboard players reset @s give_revenant_key
scoreboard players reset @s give_lightwielder_key
scoreboard players reset @s give_prospector_key
scoreboard players reset @s give_venator_key
scoreboard players reset @s give_praetorian_key
scoreboard players reset @s give_legionnaire_key
scoreboard players reset @s give_conjurer_key
scoreboard players reset @s give_seacharger_key
scoreboard players reset @s give_trapshooter_key
scoreboard players reset @s give_cavalier_key

scoreboard objectives add cosmetics_number_of_keys dummy
$execute store result score @s cosmetics_number_of_keys run data get storage $(player_id) number_of_keys
$execute if score @s cosmetics_number_of_keys matches 0 run function battle:lobby/cosmetics/crates/give_key/none with storage $(player_id)
$execute if score @s cosmetics_number_of_keys matches 1.. run function battle:lobby/cosmetics/crates/give_key/give with storage $(player_id)