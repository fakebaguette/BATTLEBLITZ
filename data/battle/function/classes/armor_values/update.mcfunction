execute as @a[tag=!magus_class,tag=!marauder_class,tag=!northman_class,tag=!revenant_class,tag=!lightwielder_class,tag=!prospector_class,tag=!venator_class,tag=!praetorian_class,tag=!legionnaire_class,tag=!conjurer_class,tag=!seacharger_class,tag=!trapshooter_class,tag=!cavalier_class] run attribute @s armor base reset

execute as @a[tag=!magus_class,tag=!marauder_class,tag=!northman_class,tag=!revenant_class,tag=!lightwielder_class,tag=!prospector_class,tag=!venator_class,tag=!praetorian_class,tag=!legionnaire_class,tag=!conjurer_class,tag=!seacharger_class,tag=!trapshooter_class,tag=!cavalier_class] run attribute @s armor_toughness base reset

execute as @a[tag=seacharger_class] run attribute @s armor base set 10
execute as @a[tag=seacharger_class] run attribute @s armor_toughness base set 2

execute as @a[tag=northman_class] run attribute @s armor base set 8
execute as @a[tag=northman_class] run attribute @s armor_toughness base set 1

execute as @a[tag=marauder_class] run attribute @s armor base set 6
execute as @a[tag=legionnaire_class] run attribute @s armor base set 6
execute as @a[tag=cavalier_class] run attribute @s armor base set 6
execute as @a[tag=conjurer_class] run attribute @s armor base set 6
execute as @a[tag=trapshooter_class] run attribute @s armor base set 6

execute as @a[tag=revenant_class] run attribute @s armor base set 5

execute as @a[tag=prospector_class] run attribute @s armor base set 4
execute as @a[tag=praetorian_class] run attribute @s armor base set 4
execute as @a[tag=magus_class] run attribute @s armor base set 4
execute as @a[tag=lightwielder_class] run attribute @s armor base set 4
execute as @a[tag=venator_class] run attribute @s armor base set 4