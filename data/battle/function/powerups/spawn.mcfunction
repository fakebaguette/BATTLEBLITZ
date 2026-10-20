scoreboard objectives add randomPowerUps dummy

execute store result score @s randomPowerUps run random value 1..100

execute if score @s randomPowerUps matches 1..10 run summon item_display ~ ~2.5 ~ {Glowing:1b,glow_color_override:16775936,item:{id:"minecraft:miner_pottery_sherd",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"yellow","italic":false,"text":"+10% Attack Speed & +20% Mining Speed"},"minecraft:custom_data":{PowerUp:1b,HastePerm:1b},"minecraft:enchantments":{"minecraft:infinity":1}}}}
execute if score @s randomPowerUps matches 1..10 run summon text_display ~ ~3.2 ~ {default_background:1b,shadow:0b,see_through:0b,billboard:"center",Tags:["PowerUp","HastePerm","BottomText"],text:{"text":"+20% Mining Speed","color":"yellow","bold":true,"italic":false}}
execute if score @s randomPowerUps matches 1..10 run summon text_display ~ ~3.5 ~ {default_background:1b,shadow:0b,see_through:0b,billboard:"center",Tags:["PowerUp","HastePerm","TopText"],text:{"text":"+10% Attack Speed &","color":"yellow","bold":true,"italic":false}}

execute if score @s randomPowerUps matches 11..20 run summon item_display ~ ~2.5 ~ {Glowing:1b,glow_color_override:55807,item:{id:"minecraft:mourner_pottery_sherd",count:1,components:{"minecraft:custom_name":{"bold":true,"color":"dark_aqua","italic":false,"text":"+20% Damage Resistance"},"minecraft:custom_data":{PowerUp:1b,ResistancePerm:1b},"minecraft:enchantments":{"minecraft:infinity":1}}}}
execute if score @s randomPowerUps matches 11..20 run summon text_display ~ ~3.5 ~ {default_background:1b,shadow:0b,see_through:0b,billboard:"center",Tags:["PowerUp","ResistancePerm"],text:{"text":"+20% Damage Resistance","color":"aqua","bold":true,"italic":false}}

execute if score @s randomPowerUps matches 21..30 run summon item_display ~ ~2.5 ~ {Glowing:1b,glow_color_override:16755200,item:{id:"minecraft:golden_apple",components:{"minecraft:custom_data":{PowerUp:1b,Enhanced:1b,Enchantments:[{id:"minecraft:infinity",lvl:1s}]}}}}
execute if score @s randomPowerUps matches 21..30 run summon text_display ~ ~3.5 ~ {default_background:1b,shadow:0b,see_through:0b,billboard:"center",Tags:["PowerUp","Gapple"],text:{"text":"Enhanced Golden Apple","color":"gold","bold":true,"italic":false}}

#execute if score @s randomPowerUps matches 31..40 run summon item_display ~ ~2.5 ~ {Glowing:1b,glow_color_override:16711680,item:{id:"minecraft:lingering_potion",count:1,components:{"minecraft:custom_data":{PowerUp:1b,DecayPotion:1b},"minecraft:enchantments":{"minecraft:infinity":1},"minecraft:potion_contents":{potion:"minecraft:harming",custom_color:8519680}}}}
#execute if score @s randomPowerUps matches 31..40 run summon text_display ~ ~3.5 ~ {default_background:1b,shadow:0b,see_through:0b,billboard:"center",Tags:["PowerUp","DecayPotion"],text:{"text":"Lingering Potion of Decay","color":"dark_red","bold":true,"italic":false}}

execute if score @s randomPowerUps matches 31..40 run summon item_display ~ ~2.5 ~ {Glowing:1b,glow_color_override:16777215,item:{id:"minecraft:sugar",count:1,components:{"minecraft:custom_data":{PowerUp:1b,SpeedPowder:1b},"minecraft:enchantments":{"minecraft:infinity":1}}}}
execute if score @s randomPowerUps matches 31..40 run summon text_display ~ ~3.5 ~ {default_background:1b,shadow:0b,see_through:0b,billboard:"center",Tags:["PowerUp","SpeedPowder"],text:{"text":"Speed Powder","color":"white","bold":true,"italic":false}}

execute if score @s randomPowerUps matches 41..50 run summon item_display ~ ~2.5 ~ {Glowing:1b,glow_color_override:16774872,item:{id:"minecraft:experience_bottle",components:{"minecraft:custom_data":{PowerUp:1b,LightBottle:1b,Enchantments:[{id:"minecraft:infinity",lvl:1s}]}}}}
execute if score @s randomPowerUps matches 41..50 run summon text_display ~ ~3.5 ~ {default_background:1b,shadow:0b,see_through:0b,billboard:"center",Tags:["PowerUp","LightBottle"],text:{"text":"Bottle of Light","color":"yellow","bold":true,"italic":false}}

execute if score @s randomPowerUps matches 51..60 run summon item_display ~ ~2.5 ~ {Glowing:1b,glow_color_override:16772486,item:{id:"minecraft:pufferfish",components:{"minecraft:custom_data":{PowerUp:1b,Pufferfish:1b,Enchantments:[{id:"minecraft:infinity",lvl:1s}]}}}}
execute if score @s randomPowerUps matches 51..60 run summon text_display ~ ~3.5 ~ {default_background:1b,shadow:0b,see_through:0b,billboard:"center",Tags:["PowerUp","Pufferfish"],text:{"text":"Puffer Bomb","color":"gold","bold":true,"italic":false}}

execute if score @s randomPowerUps matches 61..70 run summon item_display ~ ~2.5 ~ {Glowing:1b,glow_color_override:16747660,item:{id:"minecraft:heart_pottery_sherd",components:{"minecraft:custom_data":{PowerUp:1b,HealthBoostPerm:1b,Enchantments:[{id:"minecraft:infinity",lvl:1s}]}}}}
execute if score @s randomPowerUps matches 61..70 run summon text_display ~ ~3.5 ~ {default_background:1b,shadow:0b,see_through:0b,billboard:"center",Tags:["PowerUp","HealthBoostPerm"],text:{"text":"+4 Max HP ","color":"red","bold":true,"italic":false}}

execute if score @s randomPowerUps matches 71..80 run summon item_display ~ ~2.5 ~ {Glowing:1b,glow_color_override:16761035,item:{id:"minecraft:warped_fungus",components:{"minecraft:custom_data":{PowerUp:1b,Shroom:1b,Enchantments:[{id:"minecraft:infinity",lvl:1s}]}}}}
execute if score @s randomPowerUps matches 71..80 run summon text_display ~ ~3.5 ~ {default_background:1b,shadow:0b,see_through:0b,billboard:"center",Tags:["PowerUp","Shroom"],text:{"text":"Hallucinogen Shroom","color":"light_purple","bold":true,"italic":false}}

execute if score @s randomPowerUps matches 81..95 run summon item_display ~ ~2.5 ~ {Glowing:1b,glow_color_override:748808,item:{id:"minecraft:tnt",components:{"minecraft:custom_data":{PowerUp:1b,toxinTNT:1b,Enchantments:[{id:"minecraft:infinity",lvl:1s}]}}}}
execute if score @s randomPowerUps matches 81..95 run summon text_display ~ ~3.5 ~ {default_background:1b,shadow:0b,see_through:0b,billboard:"center",Tags:["PowerUp","toxinTNT"],text:{"text":"Toxin TNT","color":"dark_green","bold":true,"italic":false}}

execute if score @s randomPowerUps matches 96..100 run summon item_display ~ ~2.5 ~ {Glowing:1b,glow_color_override:11141120,item:{id:"minecraft:skull_pottery_sherd",components:{"minecraft:custom_data":{PowerUp:1b,PharCurse:1b,Enchantments:[{id:"minecraft:infinity",lvl:1s}]}}}}
execute if score @s randomPowerUps matches 96..100 run summon text_display ~ ~3.5 ~ {default_background:1b,shadow:0b,see_through:0b,billboard:"center",Tags:["PowerUp","PharCurse"],text:{"text":"Wrath of the Pharaoh","color":"dark_red","bold":true,"italic":false}}
