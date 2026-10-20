scoreboard objectives add cosmeticReward dummy
execute store result score @s cosmeticReward run random value 1..1000
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=maraBox] if entity @s[tag=maraKillMessage,tag=maraKillSound,tag=maraKillEffect] if score @s cosmeticReward matches 1..1000 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"You already have all of the ","color":"white"},{"text":"Marauder's","color":"dark_red","bold":true},{"text":" cosmetics!","color":"white"}]
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=maraBox] if entity @s[tag=maraKillMessage,tag=maraKillSound,tag=maraKillEffect] if score @s cosmeticReward matches 1..1000 run return fail

execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=maraBox] if entity @s[tag=maraKillMessage] if score @s cosmeticReward matches 1..333 run return run function battle:lobby/cosmetics/crates/open_crate/rewards/mara
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=maraBox] if entity @s[tag=maraKillSound] if score @s cosmeticReward matches 334..666 run return run function battle:lobby/cosmetics/crates/open_crate/rewards/mara
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=maraBox] if entity @s[tag=maraKillEffect] if score @s cosmeticReward matches 667..1000 run return run function battle:lobby/cosmetics/crates/open_crate/rewards/mara

execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=maraBox] if score @s cosmeticReward matches 1..333 run tellraw @a ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"selector":"@s"},{"text":" unboxed the ","color":"white"},{"text":"Marauder's","bold":true,"color":"dark_red"},{"text":" ","bold":true,"color":"white"},{"text":"Kill Messages ","bold":true,"color":"white"},{"text":"out of their crate!","color":"white"}]
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=maraBox] if score @s cosmeticReward matches 334..666 run tellraw @a ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"selector":"@s"},{"text":" unboxed the ","color":"white"},{"text":"Marauder's","bold":true,"color":"dark_red"},{"text":" ","bold":true,"color":"white"},{"text":"Kill Sound ","bold":true,"color":"yellow"},{"text":"out of their crate!","color":"white"}]
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=maraBox] if score @s cosmeticReward matches 667..1000 run tellraw @a ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"selector":"@s"},{"text":" unboxed the ","color":"white"},{"text":"Marauder's","bold":true,"color":"dark_red"},{"text":" ","bold":true,"color":"white"},{"text":"Kill Effect ","bold":true,"color":"gold"},{"text":"out of their crate!","color":"white"}]

execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=maraBox] if score @s cosmeticReward matches 1..333 run tag @s add maraKillMessage
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=maraBox] if score @s cosmeticReward matches 334..666 run tag @s add maraKillSound
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=maraBox] if score @s cosmeticReward matches 667..1000 run tag @s add maraKillEffect

execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=maraBox] if score @s cosmeticReward matches 1..333 run tag @s add newmaraKillMessage
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=maraBox] if score @s cosmeticReward matches 334..666 run tag @s add newmaraKillSound
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=maraBox] if score @s cosmeticReward matches 667..1000 run tag @s add newmaraKillEffect

execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=maraBox,tag=newmaraKillMessage] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon item_display ~ ~ ~ {Tags:["cosmeticLootDisplay"],item:{id:"minecraft:red_dye",count:1,components:{"minecraft:enchantments":{"minecraft:unbreaking":1}}}}
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=maraBox,tag=newmaraKillMessage] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon text_display ~ ~1.2 ~ {Tags:["cosmeticLootDisplayName"],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"dark_red","italic":false,"text":"Marauder's"},{"bold":true,"color":"white","italic":false,"text":" Kill Messages"}]}


execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=maraBox,tag=newmaraKillSound] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon item_display ~ ~ ~ {Tags:["cosmeticLootDisplay"],item:{id:"minecraft:golden_axe",count:1,components:{"minecraft:enchantments":{"minecraft:unbreaking":1}}}}
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=maraBox,tag=newmaraKillSound] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon text_display ~ ~1.2 ~ {Tags:["cosmeticLootDisplayName"],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"dark_red","italic":false,"text":"Marauder's"},{"bold":true,"color":"yellow","italic":false,"text":" Kill Sound"}]}


execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=maraBox,tag=newmaraKillEffect] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon item_display ~ ~ ~ {Rotation:[0F,0F],Tags:["cosmeticLootDisplay"],item:{id:"minecraft:goat_horn",count:1,components:{"minecraft:enchantments":{"minecraft:unbreaking":1}}}}
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=maraBox,tag=newmaraKillEffect] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon text_display ~ ~1.2 ~ {Tags:["cosmeticLootDisplayName"],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"dark_red","italic":false,"text":"Marauder's"},{"bold":true,"color":"gold","italic":false,"text":" Kill Effect"}]}


tag @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=maraBox,tag=newmaraKillMessage] remove newmaraKillMessage
tag @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=maraBox,tag=newmaraKillSound] remove newmaraKillSound
tag @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=maraBox,tag=newmaraKillEffect] remove newmaraKillEffect