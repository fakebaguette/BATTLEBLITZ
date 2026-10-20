scoreboard objectives add cosmeticReward dummy
execute store result score @s cosmeticReward run random value 1..1000
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=lightBox] if entity @s[tag=lightKillMessage,tag=lightKillSound,tag=lightKillEffect] if score @s cosmeticReward matches 1..1000 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"You already have all of the ","color":"white"},{"text":"Lightwielder's","color":"yellow","bold":true},{"text":" cosmetics!","color":"white"}]
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=lightBox] if entity @s[tag=lightKillMessage,tag=lightKillSound,tag=lightKillEffect] if score @s cosmeticReward matches 1..1000 run return fail

execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=lightBox] if entity @s[tag=lightKillMessage] if score @s cosmeticReward matches 1..333 run return run function battle:lobby/cosmetics/crates/open_crate/rewards/light
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=lightBox] if entity @s[tag=lightKillSound] if score @s cosmeticReward matches 334..666 run return run function battle:lobby/cosmetics/crates/open_crate/rewards/light
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=lightBox] if entity @s[tag=lightKillEffect] if score @s cosmeticReward matches 667..1000 run return run function battle:lobby/cosmetics/crates/open_crate/rewards/light

execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=lightBox] if score @s cosmeticReward matches 1..333 run tellraw @a ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"selector":"@s"},{"text":" unboxed the ","color":"white"},{"text":"Lightwielder's","bold":true,"color":"yellow"},{"text":" ","bold":true,"color":"white"},{"text":"Kill Messages ","bold":true,"color":"white"},{"text":"out of their crate!","color":"white"}]
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=lightBox] if score @s cosmeticReward matches 334..666 run tellraw @a ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"selector":"@s"},{"text":" unboxed the ","color":"white"},{"text":"Lightwielder's","bold":true,"color":"yellow"},{"text":" ","bold":true,"color":"white"},{"text":"Kill Sound ","bold":true,"color":"yellow"},{"text":"out of their crate!","color":"white"}]
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=lightBox] if score @s cosmeticReward matches 667..1000 run tellraw @a ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"selector":"@s"},{"text":" unboxed the ","color":"white"},{"text":"Lightwielder's","bold":true,"color":"yellow"},{"text":" ","bold":true,"color":"white"},{"text":"Kill Effect ","bold":true,"color":"gold"},{"text":"out of their crate!","color":"white"}]

execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=lightBox] if score @s cosmeticReward matches 1..333 run tag @s add lightKillMessage
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=lightBox] if score @s cosmeticReward matches 334..666 run tag @s add lightKillSound
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=lightBox] if score @s cosmeticReward matches 667..1000 run tag @s add lightKillEffect

execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=lightBox] if score @s cosmeticReward matches 1..333 run tag @s add newlightKillMessage
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=lightBox] if score @s cosmeticReward matches 334..666 run tag @s add newlightKillSound
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=lightBox] if score @s cosmeticReward matches 667..1000 run tag @s add newlightKillEffect

execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=lightBox,tag=newlightKillMessage] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon item_display ~ ~ ~ {Tags:["cosmeticLootDisplay"],item:{id:"minecraft:dune_armor_trim_smithing_template",count:1,components:{"minecraft:enchantments":{"minecraft:unbreaking":1}}}}
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=lightBox,tag=newlightKillMessage] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon text_display ~ ~1.2 ~ {Tags:["cosmeticLootDisplayName"],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"yellow","italic":false,"text":"Lightwielder's"},{"bold":true,"color":"white","italic":false,"text":" Kill Messages"}]}


execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=lightBox,tag=newlightKillSound] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon item_display ~ ~ ~ {Tags:["cosmeticLootDisplay"],item:{id:"minecraft:diamond_sword",count:1,components:{"minecraft:enchantments":{"minecraft:unbreaking":1}}}}
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=lightBox,tag=newlightKillSound] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon text_display ~ ~1.2 ~ {Tags:["cosmeticLootDisplayName"],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"yellow","italic":false,"text":"Lightwielder's"},{"bold":true,"color":"yellow","italic":false,"text":" Kill Sound"}]}


execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=lightBox,tag=newlightKillEffect] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon item_display ~ ~ ~ {Rotation:[0F,170F],Tags:["cosmeticLootDisplay"],item:{id:"minecraft:spyglass",count:1,components:{"minecraft:enchantments":{"minecraft:unbreaking":1}}}}
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=lightBox,tag=newlightKillEffect] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon text_display ~ ~1.2 ~ {Tags:["cosmeticLootDisplayName"],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"yellow","italic":false,"text":"Lightwielder's"},{"bold":true,"color":"gold","italic":false,"text":" Kill Effect"}]}


tag @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=lightBox,tag=newlightKillMessage] remove newlightKillMessage
tag @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=lightBox,tag=newlightKillSound] remove newlightKillSound
tag @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=lightBox,tag=newlightKillEffect] remove newlightKillEffect