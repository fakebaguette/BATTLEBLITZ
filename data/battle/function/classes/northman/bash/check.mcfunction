advancement revoke @s[tag=!northman_class] only battle:northman/use

execute if entity @s[advancements={battle:northman/use=true},tag=!north_bash_cd] if predicate battle:shift if items entity @s weapon.mainhand shield run function battle:classes/northman/bash/bash
execute if entity @s[advancements={battle:northman/use=true},tag=!north_bash_cd] if predicate battle:shift if items entity @s weapon.offhand shield run function battle:classes/northman/bash/bash