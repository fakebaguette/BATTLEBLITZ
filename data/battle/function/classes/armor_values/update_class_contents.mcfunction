clear @a[tag=operator,tag=Team1]
clear @a[tag=operator,tag=Team2]
execute as @a[tag=operator,tag=seacharger_class] run function battle:armor/seach

execute as @a[tag=operator,tag=northman_class] run function battle:armor/north

execute as @a[tag=operator,tag=marauder_class] run function battle:armor/mara
execute as @a[tag=operator,tag=legionnaire_class] run function battle:armor/legion
execute as @a[tag=operator,tag=cavalier_class] run function battle:armor/cava
execute as @a[tag=operator,tag=conjurer_class] run function battle:armor/conj
execute as @a[tag=operator,tag=trapshooter_class] run function battle:armor/trap

execute as @a[tag=operator,tag=revenant_class] run function battle:armor/reve

execute as @a[tag=operator,tag=prospector_class] run function battle:armor/prosp
execute as @a[tag=operator,tag=praetorian_class] run function battle:armor/praet
execute as @a[tag=operator,tag=magus_class] run function battle:armor/magus
execute as @a[tag=operator,tag=lightwielder_class] run function battle:armor/light
execute as @a[tag=operator,tag=venator_class] run function battle:armor/vena

function battle:classes/armor_values/update