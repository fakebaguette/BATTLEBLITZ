execute if entity @a[tag=lightwielder_class] run function battle:ingame/enablefunction/class/light
execute unless entity @a[tag=lightwielder_class] run function battle:ingame/disablefunction/class/light

execute if entity @a[tag=marauder_class] run function battle:ingame/enablefunction/class/mara
execute unless entity @a[tag=marauder_class] run function battle:ingame/disablefunction/class/mara

execute if entity @a[tag=legionnaire_class] run function battle:ingame/enablefunction/class/legion
execute unless entity @a[tag=legionnaire_class] run function battle:ingame/disablefunction/class/legion

execute if entity @a[tag=venator_class] run function battle:ingame/enablefunction/class/vena
execute unless entity @a[tag=venator_class] run function battle:ingame/disablefunction/class/vena

execute if entity @a[tag=conjurer_class] run function battle:ingame/enablefunction/class/conj
execute unless entity @a[tag=conjurer_class] run function battle:ingame/disablefunction/class/conj

execute if entity @a[tag=magus_class] run function battle:ingame/enablefunction/class/magus
execute unless entity @a[tag=magus_class] run function battle:ingame/disablefunction/class/magus

execute if entity @a[tag=revenant_class] run function battle:ingame/enablefunction/class/reve
execute unless entity @a[tag=revenant_class] run function battle:ingame/disablefunction/class/reve

execute if entity @a[tag=trapshooter_class] run function battle:ingame/enablefunction/class/trap
execute unless entity @a[tag=trapshooter_class] run function battle:ingame/disablefunction/class/trap

execute if entity @a[tag=northman_class] run function battle:ingame/enablefunction/class/north
execute unless entity @a[tag=northman_class] run function battle:ingame/disablefunction/class/north

execute if entity @a[tag=praetorian_class] run function battle:ingame/enablefunction/class/praet
execute unless entity @a[tag=praetorian_class] run function battle:ingame/disablefunction/class/praet

execute if entity @a[tag=prospector_class] run function battle:ingame/enablefunction/class/prosp
execute unless entity @a[tag=prospector_class] run function battle:ingame/disablefunction/class/prosp

execute if entity @a[tag=cavalier_class] run function battle:ingame/enablefunction/class/cava
execute unless entity @a[tag=cavalier_class] run function battle:ingame/disablefunction/class/cava

execute if entity @a[tag=seacharger_class] run function battle:ingame/enablefunction/class/seach
execute unless entity @a[tag=seacharger_class] run function battle:ingame/disablefunction/class/seach

execute as @e[type=item_display,nbt={item:{components:{"minecraft:custom_data":{PowerUp:1b,PharCurse:1b}}}}] at @s if entity @a[tag=inGame,distance=..20] run function battle:powerups/curse/main
#execute as @e[type=item_display,nbt={item:{components:{"minecraft:custom_data":{PowerUp:1b,DecayPotion:1b}}}}] at @s if entity @a[tag=inGame,distance=..20] run function battle:powerups/decay/decaypotion
execute as @e[type=item_display,nbt={item:{components:{"minecraft:custom_data":{PowerUp:1b,Enhanced:1b}}}}] at @s if entity @a[tag=inGame,distance=..20] run function battle:powerups/enhanced/gapple
execute as @e[type=item_display,nbt={item:{components:{"minecraft:custom_data":{PowerUp:1b,HastePerm:1b}}}}] at @s if entity @a[tag=inGame,distance=..20] run function battle:powerups/haste/hastepower
execute as @e[type=item_display,nbt={item:{components:{"minecraft:custom_data":{PowerUp:1b,HealthBoostPerm:1b}}}}] at @s if entity @a[tag=inGame,distance=..20] run function battle:powerups/health/main
execute as @e[type=item_display,nbt={item:{components:{"minecraft:custom_data":{PowerUp:1b,LightBottle:1b}}}}] at @s if entity @a[tag=inGame,distance=..20] run function battle:powerups/light/main
execute as @e[type=item_display,nbt={item:{components:{"minecraft:custom_data":{PowerUp:1b,Pufferfish:1b}}}}] at @s if entity @a[tag=inGame,distance=..20] run function battle:powerups/puffer/main
execute as @e[type=item_display,nbt={item:{components:{"minecraft:custom_data":{PowerUp:1b,ResistancePerm:1b}}}}] at @s if entity @a[tag=inGame,distance=..20] run function battle:powerups/resist/resistancepower
execute as @e[type=item_display,nbt={item:{components:{"minecraft:custom_data":{PowerUp:1b,Shroom:1b}}}}] at @s if entity @a[tag=inGame,distance=..20] run function battle:powerups/shroom/main
execute as @e[type=item_display,nbt={item:{components:{"minecraft:custom_data":{PowerUp:1b,toxinTNT:1b}}}}] at @s if entity @a[tag=inGame,distance=..20] run function battle:powerups/tnt/main
execute as @e[type=item_display,nbt={item:{components:{"minecraft:custom_data":{PowerUp:1b,SpeedPowder:1b}}}}] at @s if entity @a[tag=inGame,distance=..20] run function battle:powerups/speed/speed

execute unless entity @e[type=item_display,nbt={item:{components:{"minecraft:custom_data":{PowerUp:1b,PharCurse:1b}}}}] run schedule clear battle:powerups/curse/main
#execute unless entity @e[type=item_display,nbt={item:{components:{"minecraft:custom_data":{PowerUp:1b,DecayPotion:1b}}}}] run schedule clear battle:powerups/decay/decaypotion
execute unless entity @e[type=item_display,nbt={item:{components:{"minecraft:custom_data":{PowerUp:1b,Enhanced:1b}}}}] run schedule clear battle:powerups/enhanced/gapple
execute unless entity @e[type=item_display,nbt={item:{components:{"minecraft:custom_data":{PowerUp:1b,HastePerm:1b}}}}] run schedule clear battle:powerups/haste/hastepower
execute unless entity @e[type=item_display,nbt={item:{components:{"minecraft:custom_data":{PowerUp:1b,HealthBoostPerm:1b}}}}] run schedule clear battle:powerups/health/main
execute unless entity @e[type=item_display,nbt={item:{components:{"minecraft:custom_data":{PowerUp:1b,LightBottle:1b}}}}] run schedule clear battle:powerups/light/main
execute unless entity @e[type=item_display,nbt={item:{components:{"minecraft:custom_data":{PowerUp:1b,Pufferfish:1b}}}}] run schedule clear battle:powerups/puffer/main
execute unless entity @e[type=item_display,nbt={item:{components:{"minecraft:custom_data":{PowerUp:1b,ResistancePerm:1b}}}}] run schedule clear battle:powerups/resist/resistancepower
execute unless entity @e[type=item_display,nbt={item:{components:{"minecraft:custom_data":{PowerUp:1b,Shroom:1b}}}}] run schedule clear battle:powerups/shroom/main
execute unless entity @e[type=item_display,nbt={item:{components:{"minecraft:custom_data":{PowerUp:1b,toxinTNT:1b}}}}] run schedule clear battle:powerups/tnt/main
execute unless entity @e[type=item_display,nbt={item:{components:{"minecraft:custom_data":{PowerUp:1b,SpeedPowder:1b}}}}] run schedule clear battle:powerups/speed/speed

execute as @e[type=item_display,nbt={item:{components:{"minecraft:custom_data":{PowerUp:1b,BattleStar:1b}}}}] at @s if entity @a[tag=inGame,distance=..20] run function battle:powerups/starst1/bstar
execute as @e[type=item_display,nbt={item:{components:{"minecraft:custom_data":{PowerUp:1b,BattleStar:1b}}}}] at @s if entity @a[tag=inGame,distance=..20] run function battle:powerups/starst1/bstarenable
execute as @e[type=item_display,nbt={item:{components:{"minecraft:custom_data":{PowerUp:1b,BattleStar2:1b}}}}] at @s if entity @a[tag=inGame,distance=..20] run function battle:powerups/starst2/2bstar
execute as @e[type=item_display,nbt={item:{components:{"minecraft:custom_data":{PowerUp:1b,BattleStar2:1b}}}}] at @s if entity @a[tag=inGame,distance=..20] run function battle:powerups/starst2/2bstarenable

execute unless entity @e[type=item_display,nbt={item:{components:{"minecraft:custom_data":{PowerUp:1b,BattleStar:1b}}}}] run schedule clear battle:powerups/starst1/bstar
execute unless entity @e[type=item_display,nbt={item:{components:{"minecraft:custom_data":{PowerUp:1b,BattleStar:1b}}}}] run schedule clear battle:powerups/starst1/bstarenable

execute unless entity @e[type=item_display,nbt={item:{components:{"minecraft:custom_data":{PowerUp:1b,BattleStar2:1b}}}}] run schedule clear battle:powerups/starst2/2bstar
execute unless entity @e[type=item_display,nbt={item:{components:{"minecraft:custom_data":{PowerUp:1b,BattleStar2:1b}}}}] run schedule clear battle:powerups/starst2/2bstarenable