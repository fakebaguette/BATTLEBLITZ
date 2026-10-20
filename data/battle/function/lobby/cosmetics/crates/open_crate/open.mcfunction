#these crate opens are disgusting coded but 😂

scoreboard objectives add cosmeticBoxTime dummy

tag @s add rewardBox

execute if entity @s[tag=rewardBox,nbt={SelectedItem:{id:"minecraft:trial_key",components:{"minecraft:custom_data":{NoDrop:1b,cosmeticBox:1b,GeneralBox:1b}}}}] run scoreboard players remove @s GeneralReward 1
execute if entity @s[tag=rewardBox,nbt={SelectedItem:{id:"minecraft:trial_key",components:{"minecraft:custom_data":{NoDrop:1b,cosmeticBox:1b,LightwielderBox:1b}}}}] run scoreboard players remove @s LightwielderReward 1
execute if entity @s[tag=rewardBox,nbt={SelectedItem:{id:"minecraft:trial_key",components:{"minecraft:custom_data":{NoDrop:1b,cosmeticBox:1b,MarauderBox:1b}}}}] run scoreboard players remove @s MarauderReward 1
execute if entity @s[tag=rewardBox,nbt={SelectedItem:{id:"minecraft:trial_key",components:{"minecraft:custom_data":{NoDrop:1b,cosmeticBox:1b,LegionnaireBox:1b}}}}] run scoreboard players remove @s LegionnaireReward 1
execute if entity @s[tag=rewardBox,nbt={SelectedItem:{id:"minecraft:trial_key",components:{"minecraft:custom_data":{NoDrop:1b,cosmeticBox:1b,VenatorBox:1b}}}}] run scoreboard players remove @s VenatorReward 1
execute if entity @s[tag=rewardBox,nbt={SelectedItem:{id:"minecraft:trial_key",components:{"minecraft:custom_data":{NoDrop:1b,cosmeticBox:1b,ConjurerBox:1b}}}}] run scoreboard players remove @s ConjurerReward 1
execute if entity @s[tag=rewardBox,nbt={SelectedItem:{id:"minecraft:trial_key",components:{"minecraft:custom_data":{NoDrop:1b,cosmeticBox:1b,RevenantBox:1b}}}}] run scoreboard players remove @s RevenantReward 1
execute if entity @s[tag=rewardBox,nbt={SelectedItem:{id:"minecraft:trial_key",components:{"minecraft:custom_data":{NoDrop:1b,cosmeticBox:1b,MagusBox:1b}}}}] run scoreboard players remove @s MagusReward 1
execute if entity @s[tag=rewardBox,nbt={SelectedItem:{id:"minecraft:trial_key",components:{"minecraft:custom_data":{NoDrop:1b,cosmeticBox:1b,TrapshooterBox:1b}}}}] run scoreboard players remove @s TrapshooterReward 1
execute if entity @s[tag=rewardBox,nbt={SelectedItem:{id:"minecraft:trial_key",components:{"minecraft:custom_data":{NoDrop:1b,cosmeticBox:1b,NorthmanBox:1b}}}}] run scoreboard players remove @s NorthmanReward 1
execute if entity @s[tag=rewardBox,nbt={SelectedItem:{id:"minecraft:trial_key",components:{"minecraft:custom_data":{NoDrop:1b,cosmeticBox:1b,PraetorianBox:1b}}}}] run scoreboard players remove @s PraetorianReward 1
execute if entity @s[tag=rewardBox,nbt={SelectedItem:{id:"minecraft:trial_key",components:{"minecraft:custom_data":{NoDrop:1b,cosmeticBox:1b,NorthmanBox:1b}}}}] run scoreboard players remove @s NorthmanReward 1
execute if entity @s[tag=rewardBox,nbt={SelectedItem:{id:"minecraft:trial_key",components:{"minecraft:custom_data":{NoDrop:1b,cosmeticBox:1b,SeachargerBox:1b}}}}] run scoreboard players remove @s SeachargerReward 1
execute if entity @s[tag=rewardBox,nbt={SelectedItem:{id:"minecraft:trial_key",components:{"minecraft:custom_data":{NoDrop:1b,cosmeticBox:1b,CavalierBox:1b}}}}] run scoreboard players remove @s CavalierReward 1
execute if entity @s[tag=rewardBox,nbt={SelectedItem:{id:"minecraft:trial_key",components:{"minecraft:custom_data":{NoDrop:1b,cosmeticBox:1b,ProspectorBox:1b}}}}] run scoreboard players remove @s ProspectorReward 1

execute if entity @s[tag=rewardBox,nbt={SelectedItem:{id:"minecraft:trial_key",components:{"minecraft:custom_data":{NoDrop:1b,cosmeticBox:1b,GeneralBox:1b}}}}] run tag @s add generalBox
execute if entity @s[tag=rewardBox,nbt={SelectedItem:{id:"minecraft:trial_key",components:{"minecraft:custom_data":{NoDrop:1b,cosmeticBox:1b,LightwielderBox:1b}}}}] run tag @s add lightBox
execute if entity @s[tag=rewardBox,nbt={SelectedItem:{id:"minecraft:trial_key",components:{"minecraft:custom_data":{NoDrop:1b,cosmeticBox:1b,MarauderBox:1b}}}}] run tag @s add maraBox
execute if entity @s[tag=rewardBox,nbt={SelectedItem:{id:"minecraft:trial_key",components:{"minecraft:custom_data":{NoDrop:1b,cosmeticBox:1b,LegionnaireBox:1b}}}}] run tag @s add legionBox
execute if entity @s[tag=rewardBox,nbt={SelectedItem:{id:"minecraft:trial_key",components:{"minecraft:custom_data":{NoDrop:1b,cosmeticBox:1b,VenatorBox:1b}}}}] run tag @s add venaBox
execute if entity @s[tag=rewardBox,nbt={SelectedItem:{id:"minecraft:trial_key",components:{"minecraft:custom_data":{NoDrop:1b,cosmeticBox:1b,ConjurerBox:1b}}}}] run tag @s add conjBox
execute if entity @s[tag=rewardBox,nbt={SelectedItem:{id:"minecraft:trial_key",components:{"minecraft:custom_data":{NoDrop:1b,cosmeticBox:1b,RevenantBox:1b}}}}] run tag @s add reveBox
execute if entity @s[tag=rewardBox,nbt={SelectedItem:{id:"minecraft:trial_key",components:{"minecraft:custom_data":{NoDrop:1b,cosmeticBox:1b,MagusBox:1b}}}}] run tag @s add magusBox
execute if entity @s[tag=rewardBox,nbt={SelectedItem:{id:"minecraft:trial_key",components:{"minecraft:custom_data":{NoDrop:1b,cosmeticBox:1b,TrapshooterBox:1b}}}}] run tag @s add trapBox
execute if entity @s[tag=rewardBox,nbt={SelectedItem:{id:"minecraft:trial_key",components:{"minecraft:custom_data":{NoDrop:1b,cosmeticBox:1b,NorthmanBox:1b}}}}] run tag @s add northBox
execute if entity @s[tag=rewardBox,nbt={SelectedItem:{id:"minecraft:trial_key",components:{"minecraft:custom_data":{NoDrop:1b,cosmeticBox:1b,PraetorianBox:1b}}}}] run tag @s add praetBox
execute if entity @s[tag=rewardBox,nbt={SelectedItem:{id:"minecraft:trial_key",components:{"minecraft:custom_data":{NoDrop:1b,cosmeticBox:1b,SeachargerBox:1b}}}}] run tag @s add seachBox
execute if entity @s[tag=rewardBox,nbt={SelectedItem:{id:"minecraft:trial_key",components:{"minecraft:custom_data":{NoDrop:1b,cosmeticBox:1b,CavalierBox:1b}}}}] run tag @s add cavaBox
execute if entity @s[tag=rewardBox,nbt={SelectedItem:{id:"minecraft:trial_key",components:{"minecraft:custom_data":{NoDrop:1b,cosmeticBox:1b,ProspectorBox:1b}}}}] run tag @s add prospBox

execute if entity @s[tag=generalBox] run summon block_display ~ ~ ~ {Tags:["cosmeticBox","generalBox","newBox"],Glowing:1b,glow_color_override:15062259,transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,0f,0.375f],scale:[0.75f,0.75f,0.75f]},block_state:{Name:"minecraft:ender_chest"}}
execute if entity @s[tag=lightBox] run summon block_display ~ ~ ~ {Tags:["cosmeticBox","lightBox","newBox"],Glowing:1b,glow_color_override:16711645,transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,0f,0.375f],scale:[0.75f,0.75f,0.75f]},block_state:{Name:"minecraft:ender_chest"}}
execute if entity @s[tag=maraBox] run summon block_display ~ ~ ~ {Tags:["cosmeticBox","maraBox","newBox"],Glowing:1b,glow_color_override:9571083,transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,0f,0.375f],scale:[0.75f,0.75f,0.75f]},block_state:{Name:"minecraft:ender_chest"}}
execute if entity @s[tag=legionBox] run summon block_display ~ ~ ~ {Tags:["cosmeticBox","legionBox","newBox"],Glowing:1b,glow_color_override:16568123,transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,0f,0.375f],scale:[0.75f,0.75f,0.75f]},block_state:{Name:"minecraft:ender_chest"}}
execute if entity @s[tag=venaBox] run summon block_display ~ ~ ~ {Tags:["cosmeticBox","venaBox","newBox"],Glowing:1b,glow_color_override:9782527,transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,0f,0.375f],scale:[0.75f,0.75f,0.75f]},block_state:{Name:"minecraft:ender_chest"}}
execute if entity @s[tag=conjBox] run summon block_display ~ ~ ~ {Tags:["cosmeticBox","conjBox","newBox"],Glowing:1b,glow_color_override:1544460,transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,0f,0.375f],scale:[0.75f,0.75f,0.75f]},block_state:{Name:"minecraft:ender_chest"}}
execute if entity @s[tag=reveBox] run summon block_display ~ ~ ~ {Tags:["cosmeticBox","reveBox","newBox"],Glowing:1b,glow_color_override:16738408,transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,0f,0.375f],scale:[0.75f,0.75f,0.75f]},block_state:{Name:"minecraft:ender_chest"}}
execute if entity @s[tag=magusBox] run summon block_display ~ ~ ~ {Tags:["cosmeticBox","magusBox","newBox"],Glowing:1b,glow_color_override:16740856,transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,0f,0.375f],scale:[0.75f,0.75f,0.75f]},block_state:{Name:"minecraft:ender_chest"}}
execute if entity @s[tag=trapBox] run summon block_display ~ ~ ~ {Tags:["cosmeticBox","trapBox","newBox"],Glowing:1b,glow_color_override:15990536,transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,0f,0.375f],scale:[0.75f,0.75f,0.75f]},block_state:{Name:"minecraft:ender_chest"}}
execute if entity @s[tag=northBox] run summon block_display ~ ~ ~ {Tags:["cosmeticBox","northBox","newBox"],Glowing:1b,glow_color_override:2591999,transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,0f,0.375f],scale:[0.75f,0.75f,0.75f]},block_state:{Name:"minecraft:ender_chest"}}
execute if entity @s[tag=praetBox] run summon block_display ~ ~ ~ {Tags:["cosmeticBox","praetBox","newBox"],Glowing:1b,glow_color_override:16535553,transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,0f,0.375f],scale:[0.75f,0.75f,0.75f]},block_state:{Name:"minecraft:ender_chest"}}
execute if entity @s[tag=seachBox] run summon block_display ~ ~ ~ {Tags:["cosmeticBox","seachBox","newBox"],Glowing:1b,glow_color_override:3601560,transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,0f,0.375f],scale:[0.75f,0.75f,0.75f]},block_state:{Name:"minecraft:ender_chest"}}
execute if entity @s[tag=cavaBox] run summon block_display ~ ~ ~ {Tags:["cosmeticBox","cavaBox","newBox"],Glowing:1b,glow_color_override:16631875,transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,0f,0.375f],scale:[0.75f,0.75f,0.75f]},block_state:{Name:"minecraft:ender_chest"}}
execute if entity @s[tag=prospBox] run summon block_display ~ ~ ~ {Tags:["cosmeticBox","prospBox","newBox"],Glowing:1b,glow_color_override:14679984,transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0.375f,0f,0.375f],scale:[0.75f,0.75f,0.75f]},block_state:{Name:"minecraft:ender_chest"}}
execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=newBox,limit=1,sort=nearest] positioned ~ ~2 ~ run tp @s ^ ^ ^3 ~180 0

execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=newBox,limit=1,sort=nearest] at @s run function battle:lobby/cosmetics/crates/open_crate/animate

clear @s[tag=generalBox] trial_key[custom_data={NoDrop:1b,cosmeticBox:1b,GeneralBox:1b}] 1
clear @s[tag=lightBox] trial_key[custom_data={NoDrop:1b,cosmeticBox:1b,LightwielderBox:1b}] 1
clear @s[tag=maraBox] trial_key[custom_data={NoDrop:1b,cosmeticBox:1b,MarauderBox:1b}] 1
clear @s[tag=legionBox] trial_key[custom_data={NoDrop:1b,cosmeticBox:1b,LegionnaireBox:1b}] 1
clear @s[tag=venaBox] trial_key[custom_data={NoDrop:1b,cosmeticBox:1b,VenatorBox:1b}] 1
clear @s[tag=conjBox] trial_key[custom_data={NoDrop:1b,cosmeticBox:1b,ConjurerBox:1b}] 1
clear @s[tag=reveBox] trial_key[custom_data={NoDrop:1b,cosmeticBox:1b,RevenantBox:1b}] 1
clear @s[tag=magusBox] trial_key[custom_data={NoDrop:1b,cosmeticBox:1b,MagusBox:1b}] 1
clear @s[tag=trapBox] trial_key[custom_data={NoDrop:1b,cosmeticBox:1b,TrapshooterBox:1b}] 1
clear @s[tag=northBox] trial_key[custom_data={NoDrop:1b,cosmeticBox:1b,NorthmanBox:1b}] 1
clear @s[tag=praetBox] trial_key[custom_data={NoDrop:1b,cosmeticBox:1b,PraetorianBox:1b}] 1
clear @s[tag=seachBox] trial_key[custom_data={NoDrop:1b,cosmeticBox:1b,SeachargerBox:1b}] 1
clear @s[tag=cavaBox] trial_key[custom_data={NoDrop:1b,cosmeticBox:1b,CavalierBox:1b}] 1
clear @s[tag=prospBox] trial_key[custom_data={NoDrop:1b,cosmeticBox:1b,ProspectorBox:1b}] 1