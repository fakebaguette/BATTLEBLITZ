schedule function battle:powerups/usedetect 1t

execute as @a if items entity @s weapon.* tnt[custom_data={PowerUp:1b,toxinTNT:1b,NoDrop:1b}] run function battle:powerups/tnt/ray/1-click

execute as @e[type=item,nbt={OnGround:1b},tag=curse_active,tag=!temp_delay_item] at @s run function battle:powerups/curse/item
execute as @e[type=item,nbt={OnGround:1b},tag=puffer_active,tag=!temp_delay_item] at @s run function battle:powerups/puffer/item
execute as @e[type=item,nbt={OnGround:1b},tag=shroom_active,tag=!temp_delay_item] at @s run function battle:powerups/shroom/item
execute as @e[type=item,tag=temp_delay_item] at @s run tag @s remove temp_delay_item

scoreboard objectives add enhancedApple minecraft.used:minecraft.golden_apple
execute as @a[scores={enhancedApple=1..}] at @s run function battle:powerups/enhanced/item

scoreboard objectives add speedPowder minecraft.used:minecraft.sugar
execute as @a[scores={speedPowder=1..}] at @s run function battle:powerups/speed/item

scoreboard objectives add lightBottle minecraft.used:minecraft.experience_bottle
execute as @a[scores={lightBottle=1..}] at @s run function battle:powerups/light/item