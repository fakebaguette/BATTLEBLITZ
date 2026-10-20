data modify storage class_summary begin_message set value ""
data modify storage class_summary magus_message set value ""
data modify storage class_summary marauder_message set value ""
data modify storage class_summary northman_message set value ""
data modify storage class_summary revenant_message set value ""
data modify storage class_summary lightwielder_message set value ""
data modify storage class_summary prospector_message set value ""
data modify storage class_summary venator_message set value ""
data modify storage class_summary praetorian_message set value ""
data modify storage class_summary legionnaire_message set value ""
data modify storage class_summary conjurer_message set value ""
data modify storage class_summary seacharger_message set value ""
data modify storage class_summary trapshooter_message set value ""
data modify storage class_summary cavalier_message set value ""
data modify storage class_summary end_message set value ""

data modify storage class_summary begin_comma set value ","
data modify storage class_summary magus_comma set value ""
data modify storage class_summary marauder_comma set value ""
data modify storage class_summary northman_comma set value ""
data modify storage class_summary revenant_comma set value ""
data modify storage class_summary lightwielder_comma set value ""
data modify storage class_summary prospector_comma set value ""
data modify storage class_summary venator_comma set value ""
data modify storage class_summary praetorian_comma set value ""
data modify storage class_summary legionnaire_comma set value ""
data modify storage class_summary conjurer_comma set value ""
data modify storage class_summary seacharger_comma set value ""
data modify storage class_summary trapshooter_comma set value ""
data modify storage class_summary cavalier_comma set value ""

data modify storage class_summary begin_message set value ["-----------------------------------------------------\n\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"- ",{"text":"Class Summary","bold":true,"color":"#ffde69"},"\n\n",]
execute if entity @a[tag=magus_class] run data modify storage class_summary magus_message set value [{"text":"[","bold":false,"color":"white"},{"text":"MAGUS","bold":true,"color":"light_purple"},{"text":"] ","bold":false,"color":"white"},{"text":"| ","bold":false,"color":"white"},{"selector":"@a[tag=magus_class]"},{"text":"\n"}]
execute if entity @a[tag=marauder_class] run data modify storage class_summary marauder_message set value [{"text":"[","bold":false,"color":"white"},{"text":"MARAUDER","bold":true,"color":"dark_red"},{"text":"] ","bold":false,"color":"white"},{"text":"| ","bold":false,"color":"white"},{"selector":"@a[tag=marauder_class]"},{"text":"\n"}]
execute if entity @a[tag=northman_class] run data modify storage class_summary northman_message set value [{"text":"[","bold":false,"color":"white"},{"text":"NORTHMAN","bold":true,"color":"blue"},{"text":"] ","bold":false,"color":"white"},{"text":"| ","bold":false,"color":"white"},{"selector":"@a[tag=northman_class]"},{"text":"\n"}]
execute if entity @a[tag=revenant_class] run data modify storage class_summary revenant_message set value [{"text":"[","bold":false,"color":"white"},{"text":"REVENANT","bold":true,"color":"red"},{"text":"] ","bold":false,"color":"white"},{"text":"| ","bold":false,"color":"white"},{"selector":"@a[tag=revenant_class]"},{"text":"\n"}]
execute if entity @a[tag=lightwielder_class] run data modify storage class_summary lightwielder_message set value [{"text":"[","bold":false,"color":"white"},{"text":"LIGHTWIELDER","bold":true,"color":"#fdfcee"},{"text":"] ","bold":false,"color":"white"},{"text":"| ","bold":false,"color":"white"},{"selector":"@a[tag=lightwielder_class]"},{"text":"\n"}]
execute if entity @a[tag=prospector_class] run data modify storage class_summary prospector_message set value [{"text":"[","bold":false,"color":"white"},{"text":"PROSPECTOR","bold":true,"color":"#DFFFB0"},{"text":"] ","bold":false,"color":"white"},{"text":"| ","bold":false,"color":"white"},{"selector":"@a[tag=prospector_class]"},{"text":"\n"}]
execute if entity @a[tag=venator_class] run data modify storage class_summary venator_message set value [{"text":"[","bold":false,"color":"white"},{"text":"VENATOR","bold":true,"color":"dark_purple"},{"text":"] ","bold":false,"color":"white"},{"text":"| ","bold":false,"color":"white"},{"selector":"@a[tag=venator_class]"},{"text":"\n"}]
execute if entity @a[tag=praetorian_class] run data modify storage class_summary praetorian_message set value [{"text":"[","bold":false,"color":"white"},{"text":"PRAETORIAN","bold":true,"color":"#FF6600"},{"text":"] ","bold":false,"color":"white"},{"text":"| ","bold":false,"color":"white"},{"selector":"@a[tag=praetorian_class]"},{"text":"\n"}]
execute if entity @a[tag=legionnaire_class] run data modify storage class_summary legionnaire_message set value [{"text":"[","bold":false,"color":"white"},{"text":"LEGIONNAIRE","bold":true,"color":"gold"},{"text":"] ","bold":false,"color":"white"},{"text":"| ","bold":false,"color":"white"},{"selector":"@a[tag=legionnaire_class]"},{"text":"\n"}]
execute if entity @a[tag=conjurer_class] run data modify storage class_summary conjurer_message set value [{"text":"[","bold":false,"color":"white"},{"text":"CONJURER","bold":true,"color":"dark_green"},{"text":"] ","bold":false,"color":"white"},{"text":"| ","bold":false,"color":"white"},{"selector":"@a[tag=conjurer_class]"},{"text":"\n"}]
execute if entity @a[tag=seacharger_class] run data modify storage class_summary seacharger_message set value [{"text":"[","bold":false,"color":"white"},{"text":"SEACHARGER","bold":true,"color":"#45fe98"},{"text":"] ","bold":false,"color":"white"},{"text":"| ","bold":false,"color":"white"},{"selector":"@a[tag=seacharger_class]"},{"text":"\n"}]
execute if entity @a[tag=trapshooter_class] run data modify storage class_summary trapshooter_message set value [{"text":"[","bold":false,"color":"white"},{"text":"TRAPSHOOTER","bold":true,"color":"yellow"},{"text":"] ","bold":false,"color":"white"},{"text":"| ","bold":false,"color":"white"},{"selector":"@a[tag=trapshooter_class]"},{"text":"\n"}]
execute if entity @a[tag=cavalier_class] run data modify storage class_summary cavalier_message set value [{"text":"[","bold":false,"color":"white"},{"text":"CAVALIER","bold":true,"color":"#FFD943"},{"text":"] ","bold":false,"color":"white"},{"text":"| ","bold":false,"color":"white"},{"selector":"@a[tag=cavalier_class]"},{"text":"\n"}]
data modify storage class_summary end_message set value {"text":"\n-----------------------------------------------------","color":"white"}

execute if entity @a[tag=magus_class] run data modify storage class_summary magus_comma set value ","
execute if entity @a[tag=marauder_class] run data modify storage class_summary marauder_comma set value ","
execute if entity @a[tag=northman_class] run data modify storage class_summary northman_comma set value ","
execute if entity @a[tag=revenant_class] run data modify storage class_summary revenant_comma set value ","
execute if entity @a[tag=lightwielder_class] run data modify storage class_summary lightwielder_comma set value ","
execute if entity @a[tag=prospector_class] run data modify storage class_summary prospector_comma set value ","
execute if entity @a[tag=venator_class] run data modify storage class_summary venator_comma set value ","
execute if entity @a[tag=praetorian_class] run data modify storage class_summary praetorian_comma set value ","
execute if entity @a[tag=legionnaire_class] run data modify storage class_summary legionnaire_comma set value ","
execute if entity @a[tag=conjurer_class] run data modify storage class_summary conjurer_comma set value ","
execute if entity @a[tag=seacharger_class] run data modify storage class_summary seacharger_comma set value ","
execute if entity @a[tag=trapshooter_class] run data modify storage class_summary trapshooter_comma set value ","
execute if entity @a[tag=cavalier_class] run data modify storage class_summary cavalier_comma set value ","

schedule function battle:gameobjective/gameobjectiveextra/class_summary/2-delay 1t