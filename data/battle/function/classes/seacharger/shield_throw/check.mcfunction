advancement revoke @s[tag=!seacharger_class] only battle:seacharger/use

execute if entity @s[advancements={battle:seacharger/use=true}] if predicate battle:shift if items entity @s weapon.mainhand shield run function battle:classes/seacharger/shield_throw/use
execute if entity @s[advancements={battle:seacharger/use=true}] if predicate battle:shift if items entity @s weapon.offhand shield run function battle:classes/seacharger/shield_throw/use
advancement revoke @s only battle:seacharger/use