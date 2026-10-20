advancement revoke @s[tag=!legionnaire_class] only battle:legionnaire/bash
advancement revoke @s[tag=!legion_can_bash] only battle:legionnaire/bash

execute if entity @s[advancements={battle:legionnaire/bash=true},tag=legion_can_bash] if predicate battle:shift if items entity @s weapon.mainhand shield run function battle:classes/legionnaire/bash/bash
execute if entity @s[advancements={battle:legionnaire/bash=true},tag=legion_can_bash] if predicate battle:shift if items entity @s weapon.offhand shield run function battle:classes/legionnaire/bash/bash