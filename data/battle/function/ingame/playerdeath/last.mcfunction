data merge entity @s {Tags:["deathMarker"]}

data modify entity @s Pos set from storage death Pos

#stuff to do dring death
execute if entity @a[tag=deadPlayer,tag=inGame,tag=Team1] at @s run summon item_display ~ ~1.6 ~ {item:{id:"minecraft:nether_star",components:{"minecraft:custom_data":{PowerUp:1b,BattleStar2:1b,Enchantments:[{id:"minecraft:infinity",lvl:1s}]}}},Tags:["PowerUp"],glow_color_override:16437791}
execute if entity @a[tag=deadPlayer,tag=inGame,tag=Team1] at @s run summon text_display ~ ~2.75 ~ {Tags:["PowerUpStar","PowerUp","BattleStar2","BattleStarText"],default_background:1b,shadow:0b,see_through:0b,billboard:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.25f,1.25f,1.25f]},text:{"text":"✯ Battle Star ✯","color":"gold","bold":true,"italic":false}}
execute if entity @a[tag=deadPlayer,tag=inGame,tag=Team1] at @s run summon text_display ~ ~2.4 ~ {Tags:["PowerUpStar","PowerUp","BStar2Count3","TopText"],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:{"text":"Enabling in 3","color":"white","bold":false,"italic":false}}
execute if entity @a[tag=deadPlayer,tag=inGame,tag=Team1] at @s run summon text_display ~ ~2.1 ~ {Tags:["PowerUpStar","PowerUp","BattleStar2","BottomText"],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:{"text":"(Team 2)","color":"gray","bold":false,"italic":true}}

execute if entity @a[tag=deadPlayer,tag=inGame,tag=Team2] at @s run summon item_display ~ ~1.6 ~ {item:{id:"minecraft:nether_star",components:{"minecraft:custom_data":{PowerUp:1b,BattleStar:1b,Enchantments:[{id:"minecraft:infinity",lvl:1s}]}}},Tags:["PowerUp"],glow_color_override:16437791}
execute if entity @a[tag=deadPlayer,tag=inGame,tag=Team2] at @s run summon text_display ~ ~2.75 ~ {Tags:["PowerUpStar","PowerUp","BattleStar","BattleStarText"],default_background:1b,shadow:0b,see_through:0b,billboard:"center",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.25f,1.25f,1.25f]},text:{"text":"✯ Battle Star ✯","color":"gold","bold":true,"italic":false}}
execute if entity @a[tag=deadPlayer,tag=inGame,tag=Team2] at @s run summon text_display ~ ~2.4 ~ {Tags:["PowerUpStar","PowerUp","BStarCount3","TopText"],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:{"text":"Enabling in 3","color":"white","bold":false,"italic":false}}
execute if entity @a[tag=deadPlayer,tag=inGame,tag=Team2] at @s run summon text_display ~ ~2.1 ~ {Tags:["PowerUpStar","PowerUp","BattleStar","BottomText"],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:{"text":"(Team 1)","color":"gray","bold":false,"italic":true}}

execute at @s run particle minecraft:sculk_soul ~ ~2 ~ .5 .5 .5 .2 30 normal @a
execute at @s run particle minecraft:gust_emitter_large ~ ~2 ~ 0.1 0.5 0.1 0 1
execute at @s run playsound minecraft:block.note_block.chime master @a ~ ~ ~ 5 1.5
execute at @s run playsound minecraft:block.note_block.bit master @a ~ ~ ~ 5 1.5
execute at @s run playsound minecraft:entity.wither.break_block master @a ~ ~ ~ 0.3 0.7

tag @a[tag=EQUIPtntKillMessage] add EQUIPKillMessage
tag @a[tag=EQUIPspaceKillMessage] add EQUIPKillMessage
tag @a[tag=EQUIPnoobKillMessage] add EQUIPKillMessage
tag @a[tag=EQUIPconquerorKillMessage] add EQUIPKillMessage
tag @a[tag=EQUIPchampionKillMessage] add EQUIPKillMessage
tag @a[tag=EQUIPlightKillMessage] add EQUIPKillMessage
tag @a[tag=EQUIPmaraKillMessage] add EQUIPKillMessage
tag @a[tag=EQUIPlegionKillMessage] add EQUIPKillMessage
tag @a[tag=EQUIPvenaKillMessage] add EQUIPKillMessage
tag @a[tag=EQUIPfrontKillMessage] add EQUIPKillMessage
tag @a[tag=EQUIPreveKillMessage] add EQUIPKillMessage
tag @a[tag=EQUIPmagusKillMessage] add EQUIPKillMessage
tag @a[tag=EQUIPtrapKillMessage] add EQUIPKillMessage
tag @a[tag=EQUIPnorthKillMessage] add EQUIPKillMessage
tag @a[tag=EQUIPpraetKillMessage] add EQUIPKillMessage
tag @a[tag=EQUIPprospKillMessage] add EQUIPKillMessage
tag @a[tag=EQUIPcavaKillMessage] add EQUIPKillMessage
tag @a[tag=EQUIPseachKillMessage] add EQUIPKillMessage


title @a times 5 10 5
execute unless entity @a[scores={killer=1..}] run tellraw @a[tag=Participant] ["",{"selector":"@s"}," was eliminated."]
execute if entity @a[scores={killer=1..},tag=!EQUIPKillMessage] run tellraw @a[tag=Participant] ["",{"selector":"@a[tag=deadPlayer,tag=inGame]"}," was eliminated by ",{"selector":"@a[scores={killer=1..}]"},"."]
execute as @a[scores={killer=1..}] at @s if entity @e[type=marker,tag=deathMarker,distance=..4] run title @s title ["",{"text":"["},{"text":"🗡","bold":false,"color":"dark_red"},{"text":"] "},{"selector":"@a[tag=deadPlayer,tag=inGame]"}]
execute as @a[scores={killer=1..}] at @s if entity @e[type=marker,tag=deathMarker,distance=4..] run title @s title ["",{"text":"["},{"text":"🏹","bold":false,"color":"dark_red"},{"text":"] "},{"selector":"@a[tag=deadPlayer,tag=inGame]"}]

#stat
execute as @a[scores={killer=1..}] at @s run scoreboard players add @s statKill 1
execute as @a[tag=deadPlayer,tag=inGame] at @s run scoreboard players add @s statDeath 1


scoreboard objectives add cosmeticKill dummy

#cosmetics award
execute as @a[scores={killer=1..},advancements={battle:cosmetics/extra/training=true}] at @s run function battle:ingame/playerdeath/cosmetics/award/check

#cosmetics usage
function battle:ingame/playerdeath/cosmetics/chat
function battle:ingame/playerdeath/cosmetics/sound
function battle:ingame/playerdeath/cosmetics/effect

#Trapshooter
execute as @a[scores={killer=1..},tag=trapshooter_class] run give @s comparator[custom_name={"bold":true,"color":"yellow","italic":false,"text":"Exposure Trap"},lore=[{"bold":false,"color":"white","italic":false,"text":"Use: Plant a trap. The trap will stay there"},{"bold":false,"color":"white","italic":false,"text":"for the round or if an enemy steps on it."}," ",[{"bold":false,"color":"white","italic":false,"text":"Trap: Inflict "},{"bold":true,"color":"gray","italic":false,"text":"weakness, "},{"bold":true,"color":"#B8A3A3","italic":false,"text":"blind, "},{"bold":true,"color":"dark_gray","italic":false,"text":"slow,"},{"bold":false,"color":"white","italic":false,"text":" and"}],[{"bold":false,"color":"white","italic":false,"text":"and "},{"bold":true,"color":"yellow","italic":false,"text":"glowing"},{"bold":false,"color":"white","italic":false,"text":". Hitting an "},{"bold":true,"color":"dark_red","italic":false,"text":"exposed enemy"},{"bold":false,"color":"white","italic":false,"text":" will"}],[{"bold":false,"color":"white","italic":false,"text":"also inflict "},{"bold":true,"color":"green","italic":false,"text":"poison"},{"bold":false,"color":"white","italic":false,"text":" and deal "},{"bold":true,"color":"red","italic":false,"text":"damage"},{"bold":false,"color":"white","italic":false,"text":"."}]," ",{"bold":false,"color":"gray","italic":false,"text":"Expose effect lasts for 10 seconds or until"},{"bold":false,"color":"gray","italic":false,"text":"after the target is hit. After killing an"},{"bold":false,"color":"gray","italic":false,"text":"enemy, gain another."}," ",{"bold":false,"color":"gray","italic":false,"text":"The trap will automatically disguise itself"},{"bold":false,"color":"gray","italic":false,"text":"as the block it's placed on."}],custom_data={exposure_trap:1b,NoDrop:1b},enchantments={"infinity":1},consumable={consume_seconds:1000000,animation:"block"},food={nutrition:0,saturation:0,can_always_eat:true},tooltip_display={hide_tooltip:false,hidden_components:["enchantments","unbreakable","attribute_modifiers","trim","dyed_color","potion_contents","provides_trim_material","potion_duration_scale","enchantment_glint_override","can_break","can_place_on"]}] 1

#Northman
execute as @a[scores={killer=1..},tag=northman_class] run give @s cyan_dye[item_model="coast_armor_trim_smithing_template",custom_name={"bold":true,"color":"#0AFC83","italic":false,"text":"Lightning Runeshard"},lore=[{"bold":false,"color":"white","italic":false,"text":"Hold R-Click: Consume the rune after 1.5 seconds,"},[{"bold":false,"color":"white","italic":false,"text":"granting "},{"bold":true,"color":"white","italic":false,"text":"speed, "},{"bold":true,"color":"yellow","italic":false,"text":"glowing, "},{"bold":true,"color":"gold","italic":false,"text":"haste, "},{"bold":false,"color":"white","italic":false,"text":"and the ability"}],[{"bold":false,"color":"white","italic":false,"text":"to strike your enemies with "},{"bold":true,"color":"aqua","italic":false,"text":"lightning"},{"bold":false,"color":"white","italic":false,"text":" if you deal"}],[{"bold":false,"color":"white","italic":false,"text":"more than "},{"bold":true,"color":"green","italic":false,"text":"5 HP"},{"bold":false,"color":"white","italic":false,"text":" to them."}]," ",{"bold":false,"color":"gray","italic":false,"text":"The effect will last 8 seconds. After killing an"},{"bold":false,"color":"gray","italic":false,"text":"enemy, gain another."}],custom_data={NoDrop:1b,northRuneshard:1b},enchantments={"infinity":1},food={nutrition:0,saturation:0,can_always_eat:true},consumable={consume_seconds:30,animation:"eat"},tooltip_display={hide_tooltip:false,hidden_components:["enchantments","unbreakable","attribute_modifiers","dyed_color","potion_contents","provides_trim_material","potion_duration_scale","enchantment_glint_override","can_break","can_place_on","banner_patterns","provides_banner_patterns","trim"]}] 1

#Cavalier
execute as @a[scores={killer=1..},tag=cavalier_class] run give @s brown_dye[custom_name={"bold":true,"color":"#FF9A17","italic":false,"text":"Trap Bola"},lore=[[{"bold":false,"color":"white","italic":false,"text":"Hold R-Click: Charge up your bola. The "},{"bold":true,"color":"yellow","italic":false,"text":"longer"}],[{"bold":false,"color":"white","italic":false,"text":"you charge, the "},{"bold":true,"color":"gold","italic":false,"text":"stronger"},{"bold":false,"italic":false,"text":" it gets. Enemies hit"}],[{"bold":false,"color":"white","italic":false,"text":"wiil receive "},{"bold":true,"color":"gray","italic":false,"text":"slowing, "},{"bold":true,"color":"dark_gray","italic":false,"text":"mining fatigue, "},{"bold":true,"color":"yellow","italic":false,"text":"glowing,"}],[{"bold":false,"color":"white","italic":false,"text":"and "},{"bold":true,"color":"red","italic":false,"text":"disabled"},{"bold":false,"color":"white","italic":false,"text":" jumping."}]," ",{"bold":false,"color":"gray","italic":false,"text":"The xp bar displays the bola charge-up. There"},{"bold":false,"color":"gray","italic":false,"text":"are 3 charge-up stages and the duration and"},{"bold":false,"color":"gray","italic":false,"text":"travel distance increase in each one."}," ",{"bold":false,"color":"gray","italic":false,"text":"After every kill, receive another Trap Bola."}],custom_data={NoDrop:1b,cava_bola:1b},food={nutrition:0,saturation:0,can_always_eat:true},consumable={consume_seconds:30,animation:"trident"},tooltip_display={hide_tooltip:false,hidden_components:["enchantments","unbreakable","attribute_modifiers","trim","dyed_color","potion_contents","provides_trim_material","potion_duration_scale","enchantment_glint_override","can_break","can_place_on"]},item_model="lead",enchantment_glint_override=true] 1

#Marauder
execute as @a[scores={killer=1..},tag=marauder_class] run give @s brown_dye[custom_name={"bold":true,"color":"dark_red","italic":false,"text":"Capture Bola"},lore=[[{"bold":false,"color":"white","italic":false,"text":"Hold R-Click: Charge up your bola. The "},{"bold":true,"color":"yellow","italic":false,"text":"longer"}],[{"bold":false,"color":"white","italic":false,"text":"you charge, the "},{"bold":true,"color":"gold","italic":false,"text":"stronger"},{"bold":false,"italic":false,"text":" it gets. Enemies hit"}],[{"bold":false,"color":"white","italic":false,"text":"wiil receive "},{"bold":true,"color":"gray","italic":false,"text":"slowing, "},{"bold":true,"color":"dark_gray","italic":false,"text":"mining fatigue, "},{"bold":false,"color":"white","italic":false,"text":"take"}],[{"bold":true,"color":"red","italic":false,"text":"2 HP,"},{"bold":false,"color":"white","italic":false,"text":" and be"},{"bold":true,"color":"yellow","italic":false,"text":" pulled"},{"bold":false,"color":"white","italic":false,"text":" to you."}]," ",{"bold":false,"color":"gray","italic":false,"text":"The xp bar displays the bola charge-up. There"},{"bold":false,"color":"gray","italic":false,"text":"are 3 charge-up stages and the duration and"},{"bold":false,"color":"gray","italic":false,"text":"travel distance increase in each one."}," ",{"bold":false,"color":"gray","italic":false,"text":"After every kill, receive another Capture Bola."}],custom_data={NoDrop:1b,mara_bola:1b},food={nutrition:0,saturation:0,can_always_eat:true},consumable={consume_seconds:30,animation:"trident"},tooltip_display={hide_tooltip:false,hidden_components:["enchantments","unbreakable","attribute_modifiers","trim","dyed_color","potion_contents","provides_trim_material","potion_duration_scale","enchantment_glint_override","can_break","can_place_on"]},item_model="lead",enchantment_glint_override=true] 1

#Lightwielder
execute as @a[scores={killer=1..},tag=lightwielder_class] run give @s light_gray_dye[item_model="dune_armor_trim_smithing_template",custom_name={"bold":true,"color":"#F2F593","italic":false,"text":"Ascendancy Runeshard"},lore=[{"bold":false,"color":"white","italic":false,"text":"Hold R-Click: Crush the rune after 2 seconds,"},[{"bold":false,"color":"white","italic":false,"text":"summoning light below you to "},{"bold":true,"color":"aqua","italic":false,"text":"ascend upwards"},{"bold":false,"text":" "}],{"bold":false,"color":"white","italic":false,"text":"for a few seconds."}," ",{"bold":false,"color":"gray","italic":false,"text":"After every kill, receive another Ascendancy"},{"bold":false,"color":"gray","italic":false,"text":"Runeshard."}],custom_data={NoDrop:1b,lightRuneshard:1b},enchantment_glint_override=true,food={nutrition:0,saturation:0,can_always_eat:true},consumable={consume_seconds:30,animation:"eat"},tooltip_display={hide_tooltip:false,hidden_components:["enchantments","unbreakable","attribute_modifiers","trim","dyed_color","potion_contents","provides_trim_material","potion_duration_scale","enchantment_glint_override","can_break","can_place_on"]}] 1

#Seacharger
execute as @a[scores={killer=1..},tag=seacharger_class] run give @s nautilus_shell[custom_name={"bold":true,"color":"#00DDFF","italic":false,"text":"Airborne Nautilus"},lore=[{"bold":false,"color":"white","italic":false,"text":"Hold R-Click: Consume the shell after 1.5 seconds,"},[{"bold":false,"color":"white","italic":false,"text":"granting "},{"bold":true,"color":"dark_aqua","italic":false,"text":"resistance, "},{"bold":true,"color":"yellow","italic":false,"text":"haste, "},{"bold":false,"color":"white","italic":false,"text":"and the ability to"}],[{"bold":true,"color":"yellow","italic":false,"text":"knock up "},{"bold":false,"color":"white","italic":false,"text":"enemies if you deal more than "},{"bold":true,"color":"green","italic":false,"text":"3 HP"},{"bold":false,"color":"white","italic":false,"text":" to"}],{"bold":false,"color":"white","italic":false,"text":"them."}," ",[{"bold":false,"color":"white","italic":false,"text":"Mount: "},{"bold":true,"color":"gold","italic":false,"text":"Empower"}," your mount's charge. The charge"],[{"bold":false,"color":"white","italic":false,"text":"will "},{"bold":true,"color":"yellow","italic":false,"text":"knock"},{"bold":false,"italic":false,"text":" enemies away."}]," ",{"bold":false,"color":"gray","italic":false,"text":"The effect will last 8 seconds. After killing an"},{"bold":false,"color":"gray","italic":false,"text":"enemy, gain another."}],custom_data={NoDrop:1b,nautilus_rune:1b},enchantments={"infinity":1},food={nutrition:0,saturation:0,can_always_eat:true},consumable={consume_seconds:6,animation:"eat"},tooltip_display={hide_tooltip:false,hidden_components:["enchantments","unbreakable","attribute_modifiers","dyed_color","potion_contents","provides_trim_material","potion_duration_scale","enchantment_glint_override","can_break","can_place_on","banner_patterns","provides_banner_patterns","trim"]}] 1



#Venator

#Tellraw public kill
execute if entity @a[tag=venator_class,scores={killer=1..}] as @a[tag=Participant,tag=!venator_class] unless score @s killer matches 1.. run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"selector":"@a[scores={killer=1..},tag=venator_class]"}," has successfully ",{"text":"hunted","color":"red"}," ",{"selector":"@a[tag=deadPlayer,tag=inGame]"},"."]

#Tellraw rewards
execute if entity @a[tag=deadPlayer,tag=inGame,tag=vena_target] as @a[scores={killer=1..,vena_invis_cap=2},tag=venator_class] run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| You successfully ",{"text":"hunted","color":"red"}," ",{"selector":"@a[tag=deadPlayer,tag=inGame,tag=vena_target]"}," and got:\n- ",{"text":"+1 Stealth Charge Cap","color":"#c29de7"},"\n- ",{"text":"+1 Isolation Charge","color":"#78688d"},"\n- ",{"text":"Regeneration during Stealth","color":"#ea61d1"}]
execute if entity @a[tag=deadPlayer,tag=inGame,tag=vena_target] as @a[scores={killer=1..,vena_invis_cap=3},tag=venator_class] run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| You successfully ",{"text":"hunted","color":"red"}," ",{"selector":"@a[tag=deadPlayer,tag=inGame,tag=vena_target]"}," and got:\n- ",{"text":"+1 Stealth Charge Cap","color":"#c29de7"},"\n- ",{"text":"+1 Isolation Charge","color":"#78688d"},"\n- ",{"text":"Speed during Stealth","color":"#dafbfb"}]
execute if entity @a[tag=deadPlayer,tag=inGame,tag=vena_target] as @a[scores={killer=1..,vena_invis_cap=4},tag=venator_class] run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| You successfully ",{"text":"hunted","color":"red"}," ",{"selector":"@a[tag=deadPlayer,tag=inGame,tag=vena_target]"}," and got:\n- ",{"text":"+1 Stealth Charge Cap","color":"#c29de7"},"\n- ",{"text":"+1 Isolation Charge","color":"#78688d"},"\n- ",{"text":"Absorption during & after Stealth","color":"yellow"}]

#Give rewards, play sound, select new

execute if entity @a[tag=deadPlayer,tag=inGame,tag=vena_target] as @a[scores={killer=1..},tag=venator_class] run scoreboard players add @s vena_invis_cap 1
execute if entity @a[tag=deadPlayer,tag=inGame,tag=vena_target] as @a[scores={killer=1..},tag=venator_class] at @s if score @s vena_invis_charges < @s vena_invis_cap run function battle:classes/venator/invis/item_cd/loop
execute if entity @a[tag=deadPlayer,tag=inGame,tag=vena_target] as @a[scores={killer=1..},tag=venator_class] run give @s snowball[item_model="echo_shard",custom_data={NoDrop:1b,VenaShock:1b},consumable={consume_seconds:1000000,animation:"block"},food={nutrition:0,saturation:0,can_always_eat:true},custom_name={"bold":true,"color":"#78688D","italic":false,"text":"Isolation Charge"},lore=[[{"bold":false,"color":"white","italic":false,"text":"Use: Fire a shockwave that "},{"bold":true,"color":"red","italic":false,"text":"damages"}," and"],[{"bold":true,"color":"yellow","italic":false,"text":"pushes"},{"bold":false,"color":"white","italic":false,"text":" away enemies."}]," ",[{"bold":false,"color":"white","italic":false,"text":"Your target is "},{"bold":true,"color":"gray","italic":false,"text":"slowed"},{"bold":false,"color":"white","italic":false,"text":" and "},{"bold":true,"color":"dark_gray","italic":false,"text":"weakened"},{"bold":false,"color":"white","italic":false,"text":","}],{"bold":false,"color":"white","italic":false,"text":"but will not be pushed."}," ",{"bold":false,"color":"gray","italic":false,"text":"After killing your target, get one"},{"bold":false,"color":"gray","italic":false,"text":"more charge."}]] 1
execute if entity @a[tag=venator_class,scores={killer=1..}] at @a[tag=deadPlayer,tag=inGame,tag=vena_target] run playsound minecraft:entity.warden.roar master @a ~ ~ ~ 1 0.8

execute if entity @a[tag=venator_class,scores={killer=1..}] if entity @a[tag=deadPlayer,tag=inGame,tag=vena_target] run schedule function battle:classes/venator/hunt/init 2s

#If dies to other player
execute if entity @a[tag=deadPlayer,tag=inGame,tag=vena_target] if entity @a[scores={killer=1..},tag=!venator_class] run schedule function battle:classes/venator/hunt/init 2s

#reset
scoreboard players reset @a[scores={killer=1..}] killer
kill @s[type=marker]
tag @a[tag=deadPlayer,tag=inGame] remove deadPlayer