function battle:classes/armor_values/update

execute as @a[scores={class_open_main_dialog=1..}] at @s run function battle:teamchoice/7-class/open_dialog/use

execute as @a[tag=chose_class,scores={vote_random=1..}] at @s run function battle:teamchoice/7-class/chose_already
execute as @a[tag=chose_class,scores={vote_magus=1..}] at @s run function battle:teamchoice/7-class/chose_already
execute as @a[tag=chose_class,scores={vote_marauder=1..}] at @s run function battle:teamchoice/7-class/chose_already
execute as @a[tag=chose_class,scores={vote_northman=1..}] at @s run function battle:teamchoice/7-class/chose_already
execute as @a[tag=chose_class,scores={vote_revenant=1..}] at @s run function battle:teamchoice/7-class/chose_already
execute as @a[tag=chose_class,scores={vote_lightwielder=1..}] at @s run function battle:teamchoice/7-class/chose_already
execute as @a[tag=chose_class,scores={vote_prospector=1..}] at @s run function battle:teamchoice/7-class/chose_already
execute as @a[tag=chose_class,scores={vote_venator=1..}] at @s run function battle:teamchoice/7-class/chose_already
execute as @a[tag=chose_class,scores={vote_praetorian=1..}] at @s run function battle:teamchoice/7-class/chose_already
execute as @a[tag=chose_class,scores={vote_legionnaire=1..}] at @s run function battle:teamchoice/7-class/chose_already
execute as @a[tag=chose_class,scores={vote_conjurer=1..}] at @s run function battle:teamchoice/7-class/chose_already
execute as @a[tag=chose_class,scores={vote_seacharger=1..}] at @s run function battle:teamchoice/7-class/chose_already
execute as @a[tag=chose_class,scores={vote_trapshooter=1..}] at @s run function battle:teamchoice/7-class/chose_already
execute as @a[tag=chose_class,scores={vote_cavalier=1..}] at @s run function battle:teamchoice/7-class/chose_already

execute as @a[tag=!chose_class,scores={vote_random=1..},tag=Team1] run function battle:teamchoice/7-class/class1/random/init
execute as @a[tag=!chose_class,scores={vote_magus=1..},tag=Team1] unless entity @a[tag=magus_class,tag=Team1] run function battle:teamchoice/7-class/class1/magus
execute as @a[tag=!chose_class,scores={vote_marauder=1..},tag=Team1] unless entity @a[tag=marauder_class,tag=Team1] run function battle:teamchoice/7-class/class1/marauder
execute as @a[tag=!chose_class,scores={vote_northman=1..},tag=Team1] unless entity @a[tag=northman_class,tag=Team1] run function battle:teamchoice/7-class/class1/northman
execute as @a[tag=!chose_class,scores={vote_revenant=1..},tag=Team1] unless entity @a[tag=revenant_class,tag=Team1] run function battle:teamchoice/7-class/class1/revenant
execute as @a[tag=!chose_class,scores={vote_lightwielder=1..},tag=Team1] unless entity @a[tag=lightwielder_class,tag=Team1] run function battle:teamchoice/7-class/class1/lightwielder
execute as @a[tag=!chose_class,scores={vote_prospector=1..},tag=Team1] unless entity @a[tag=prospector_class,tag=Team1] run function battle:teamchoice/7-class/class1/prospector
execute as @a[tag=!chose_class,scores={vote_venator=1..},tag=Team1] unless entity @a[tag=venator_class,tag=Team1] run function battle:teamchoice/7-class/class1/venator
execute as @a[tag=!chose_class,scores={vote_praetorian=1..},tag=Team1] unless entity @a[tag=praetorian_class,tag=Team1] run function battle:teamchoice/7-class/class1/praetorian
execute as @a[tag=!chose_class,scores={vote_legionnaire=1..},tag=Team1] unless entity @a[tag=legionnaire_class,tag=Team1] run function battle:teamchoice/7-class/class1/legionnaire
execute as @a[tag=!chose_class,scores={vote_conjurer=1..},tag=Team1] unless entity @a[tag=conjurer_class,tag=Team1] run function battle:teamchoice/7-class/class1/conjurer
execute as @a[tag=!chose_class,scores={vote_seacharger=1..},tag=Team1] unless entity @a[tag=seacharger_class,tag=Team1] run function battle:teamchoice/7-class/class1/seacharger
execute as @a[tag=!chose_class,scores={vote_trapshooter=1..},tag=Team1] unless entity @a[tag=trapshooter_class,tag=Team1] run function battle:teamchoice/7-class/class1/trapshooter
execute as @a[tag=!chose_class,scores={vote_cavalier=1..},tag=Team1] unless entity @a[tag=cavalier_class,tag=Team1] run function battle:teamchoice/7-class/class1/cavalier

execute as @a[tag=!chose_class,scores={vote_random=1..},tag=Team2] run function battle:teamchoice/7-class/class2/random/init
execute as @a[tag=!chose_class,scores={vote_magus=1..},tag=Team2] unless entity @a[tag=magus_class,tag=Team2] run function battle:teamchoice/7-class/class2/magus
execute as @a[tag=!chose_class,scores={vote_marauder=1..},tag=Team2] unless entity @a[tag=marauder_class,tag=Team2] run function battle:teamchoice/7-class/class2/marauder
execute as @a[tag=!chose_class,scores={vote_northman=1..},tag=Team2] unless entity @a[tag=northman_class,tag=Team2] run function battle:teamchoice/7-class/class2/northman
execute as @a[tag=!chose_class,scores={vote_revenant=1..},tag=Team2] unless entity @a[tag=revenant_class,tag=Team2] run function battle:teamchoice/7-class/class2/revenant
execute as @a[tag=!chose_class,scores={vote_lightwielder=1..},tag=Team2] unless entity @a[tag=lightwielder_class,tag=Team2] run function battle:teamchoice/7-class/class2/lightwielder
execute as @a[tag=!chose_class,scores={vote_prospector=1..},tag=Team2] unless entity @a[tag=prospector_class,tag=Team2] run function battle:teamchoice/7-class/class2/prospector
execute as @a[tag=!chose_class,scores={vote_venator=1..},tag=Team2] unless entity @a[tag=venator_class,tag=Team2] run function battle:teamchoice/7-class/class2/venator
execute as @a[tag=!chose_class,scores={vote_praetorian=1..},tag=Team2] unless entity @a[tag=praetorian_class,tag=Team2] run function battle:teamchoice/7-class/class2/praetorian
execute as @a[tag=!chose_class,scores={vote_legionnaire=1..},tag=Team2] unless entity @a[tag=legionnaire_class,tag=Team2] run function battle:teamchoice/7-class/class2/legionnaire
execute as @a[tag=!chose_class,scores={vote_conjurer=1..},tag=Team2] unless entity @a[tag=conjurer_class,tag=Team2] run function battle:teamchoice/7-class/class2/conjurer
execute as @a[tag=!chose_class,scores={vote_seacharger=1..},tag=Team2] unless entity @a[tag=seacharger_class,tag=Team2] run function battle:teamchoice/7-class/class2/seacharger
execute as @a[tag=!chose_class,scores={vote_trapshooter=1..},tag=Team2] unless entity @a[tag=trapshooter_class,tag=Team2] run function battle:teamchoice/7-class/class2/trapshooter
execute as @a[tag=!chose_class,scores={vote_cavalier=1..},tag=Team2] unless entity @a[tag=cavalier_class,tag=Team2] run function battle:teamchoice/7-class/class2/cavalier
