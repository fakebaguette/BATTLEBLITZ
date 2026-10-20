schedule function battle:classes/revenant/consume 2t

scoreboard objectives add reve_kill playerKillCount
scoreboard objectives add reve_enemy_died deathCount

scoreboard objectives add reve_eat_flesh minecraft.used:rotten_flesh
scoreboard objectives add reve_eat_eye minecraft.used:spider_eye
scoreboard objectives add reve_eat_soul minecraft.used:blaze_powder

scoreboard objectives add reve_consume_time_check dummy

#Enemy dies in general
execute if entity @a[scores={reve_enemy_died=1..},tag=Team2] unless entity @a[scores={reve_kill=1},tag=Team1] run give @a[tag=revenant_class,tag=Team1] rotten_flesh[custom_name={"bold":true,"color":"red","italic":false,"text":"Trophy of the Fallen"},lore=[[{"bold":false,"color":"white","italic":false,"text":"Consume: Gain"},{"bold":true,"color":"yellow","italic":false,"text":" absorption"},{"bold":false,"italic":false,"text":" and "},{"bold":true,"color":"white","italic":false,"text":"speed"},{"bold":false,"color":"white","italic":false,"text":" for a"}],{"bold":false,"color":"white","italic":false,"text":"short duration."}," ",{"bold":false,"color":"gray","italic":false,"text":"Receive when an enemy dies during the round."}],custom_data={reve_eat_flesh:1b,NoDrop:1b},enchantments={"minecraft:infinity":1},food={nutrition:0,saturation:0,can_always_eat:true},consumable={consume_seconds:1,animation:"eat"},tooltip_display={hide_tooltip:false,hidden_components:["enchantments","unbreakable","attribute_modifiers","trim","dyed_color","potion_contents","provides_trim_material","potion_duration_scale","enchantment_glint_override","can_break","can_place_on","banner_patterns","provides_banner_patterns"]}] 1
execute if entity @a[scores={reve_enemy_died=1..},tag=Team1] unless entity @a[scores={reve_kill=1},tag=Team2] run give @a[tag=revenant_class,tag=Team2] rotten_flesh[custom_name={"bold":true,"color":"red","italic":false,"text":"Trophy of the Fallen"},lore=[[{"bold":false,"color":"white","italic":false,"text":"Consume: Gain"},{"bold":true,"color":"yellow","italic":false,"text":" absorption"},{"bold":false,"italic":false,"text":" and "},{"bold":true,"color":"white","italic":false,"text":"speed"},{"bold":false,"color":"white","italic":false,"text":" for a"}],{"bold":false,"color":"white","italic":false,"text":"short duration."}," ",{"bold":false,"color":"gray","italic":false,"text":"Receive when an enemy dies during the round."}],custom_data={reve_eat_flesh:1b,NoDrop:1b},enchantments={"minecraft:infinity":1},food={nutrition:0,saturation:0,can_always_eat:true},consumable={consume_seconds:1,animation:"eat"},tooltip_display={hide_tooltip:false,hidden_components:["enchantments","unbreakable","attribute_modifiers","trim","dyed_color","potion_contents","provides_trim_material","potion_duration_scale","enchantment_glint_override","can_break","can_place_on","banner_patterns","provides_banner_patterns"]}] 1
scoreboard players reset @a[scores={reve_enemy_died=1..}] reve_enemy_died 

#kill
scoreboard players reset @a[tag=!revenant_class] reve_kill
execute as @a[tag=revenant_class,scores={reve_kill=1}] run give @s spider_eye[custom_name={"bold":true,"color":"dark_red","italic":false,"text":"Trophy of the Slain"},lore=[[{"bold":false,"color":"white","italic":false,"text":"Consume: Gain"},{"bold":true,"color":"yellow","italic":false,"text":" absorption,"},{"bold":false,"color":"white","italic":false,"text":" "},{"bold":true,"color":"white","italic":false,"text":"speed,"},{"bold":false,"italic":false,"text":" and"}],[{"bold":true,"color":"red","italic":false,"text":"strength"},{"bold":false,"color":"white","italic":false,"text":" for a short duration."}]," ",{"bold":false,"color":"gray","italic":false,"text":"Receive when you get a kill during a round."}],custom_data={reve_eat_eye:1b,NoDrop:1b},enchantments={"minecraft:infinity":1},food={nutrition:0,saturation:0,can_always_eat:true},consumable={consume_seconds:1,animation:"eat"},tooltip_display={hide_tooltip:false,hidden_components:["enchantments","unbreakable","attribute_modifiers","trim","dyed_color","potion_contents","provides_trim_material","potion_duration_scale","enchantment_glint_override","can_break","can_place_on","banner_patterns","provides_banner_patterns"]}] 1
execute as @a[tag=revenant_class,scores={reve_kill=1}] run playsound minecraft:entity.zombie.infect master @s ~ ~ ~ 2 0.7
execute as @a[tag=revenant_class,scores={reve_kill=1}] run playsound minecraft:entity.zombie_villager.cure master @s ~ ~ ~ 2 0.7
scoreboard players reset @a[scores={reve_kill=1..}] reve_kill

#consume time
scoreboard players add @a[scores={reve_consume_time_check=0..}] reve_consume_time_check 1
scoreboard players reset @a[scores={reve_consume_time_check=50}] reve_consume_time_check

#Effects
execute as @a[tag=revenant_class,scores={reve_eat_soul=1..}] at @s run function battle:classes/revenant/food/soul

execute as @a[tag=revenant_class,scores={reve_eat_flesh=1..}] at @s run function battle:classes/revenant/food/flesh

execute as @a[tag=revenant_class,scores={reve_eat_eye=1..}] at @s run function battle:classes/revenant/food/eye

scoreboard players reset @a reve_eat_soul
scoreboard players reset @a reve_eat_flesh
scoreboard players reset @a reve_eat_eye
