scoreboard objectives add GeneralReward dummy
scoreboard objectives add MagusReward dummy
scoreboard objectives add MarauderReward dummy
scoreboard objectives add NorthmanReward dummy
scoreboard objectives add RevenantReward dummy
scoreboard objectives add LightwielderReward dummy
scoreboard objectives add ProspectorReward dummy
scoreboard objectives add VenatorReward dummy
scoreboard objectives add PraetorianReward dummy
scoreboard objectives add LegionnaireReward dummy
scoreboard objectives add ConjurerReward dummy
scoreboard objectives add SeachargerReward dummy
scoreboard objectives add TrapshooterReward dummy
scoreboard objectives add CavalierReward dummy

scoreboard players add @a GeneralReward 0
scoreboard players add @s MagusReward 0
scoreboard players add @s MarauderReward 0
scoreboard players add @s NorthmanReward 0
scoreboard players add @s RevenantReward 0
scoreboard players add @s LightwielderReward 0
scoreboard players add @s ProspectorReward 0
scoreboard players add @s VenatorReward 0
scoreboard players add @s PraetorianReward 0
scoreboard players add @s LegionnaireReward 0
scoreboard players add @s ConjurerReward 0
scoreboard players add @s SeachargerReward 0
scoreboard players add @s TrapshooterReward 0
scoreboard players add @s CavalierReward 0

execute store result storage cosmetics crates_general int 1 run scoreboard players get @s GeneralReward
execute store result storage cosmetics crates_magus int 1 run scoreboard players get @s MagusReward
execute store result storage cosmetics crates_marauder int 1 run scoreboard players get @s MarauderReward
execute store result storage cosmetics crates_northman int 1 run scoreboard players get @s NorthmanReward
execute store result storage cosmetics crates_revenant int 1 run scoreboard players get @s RevenantReward
execute store result storage cosmetics crates_lightwielder int 1 run scoreboard players get @s LightwielderReward
execute store result storage cosmetics crates_prospector int 1 run scoreboard players get @s ProspectorReward
execute store result storage cosmetics crates_venator int 1 run scoreboard players get @s VenatorReward
execute store result storage cosmetics crates_praetorian int 1 run scoreboard players get @s PraetorianReward
execute store result storage cosmetics crates_legionnaire int 1 run scoreboard players get @s LegionnaireReward
execute store result storage cosmetics crates_conjurer int 1 run scoreboard players get @s ConjurerReward
execute store result storage cosmetics crates_seacharger int 1 run scoreboard players get @s SeachargerReward
execute store result storage cosmetics crates_trapshooter int 1 run scoreboard players get @s TrapshooterReward
execute store result storage cosmetics crates_cavalier int 1 run scoreboard players get @s CavalierReward

function battle:lobby/cosmetics/crates/show with storage cosmetics