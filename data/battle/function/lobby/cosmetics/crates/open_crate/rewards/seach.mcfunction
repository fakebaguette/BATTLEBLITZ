scoreboard objectives add cosmeticReward dummy
execute store result score @s cosmeticReward run random value 1..1000
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=seachBox] if entity @s[tag=seachKillMessage,tag=seachKillSound,tag=seachKillEffect] if score @s cosmeticReward matches 1..1000 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"You already have all of the ","color":"white"},{"text":"Seacharger's","color":"#45fe98","bold":true},{"text":" cosmetics!","color":"white"}]
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=seachBox] if entity @s[tag=seachKillMessage,tag=seachKillSound,tag=seachKillEffect] if score @s cosmeticReward matches 1..1000 run return fail

execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=seachBox] if entity @s[tag=seachKillMessage] if score @s cosmeticReward matches 1..333 run return run function battle:lobby/cosmetics/crates/open_crate/rewards/seach
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=seachBox] if entity @s[tag=seachKillSound] if score @s cosmeticReward matches 334..666 run return run function battle:lobby/cosmetics/crates/open_crate/rewards/seach
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=seachBox] if entity @s[tag=seachKillEffect] if score @s cosmeticReward matches 667..1000 run return run function battle:lobby/cosmetics/crates/open_crate/rewards/seach

execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=seachBox] if score @s cosmeticReward matches 1..333 run tellraw @a ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"selector":"@s"},{"text":" unboxed the ","color":"white"},{"text":"Seacharger's","bold":true,"color":"#45fe98"},{"text":" ","bold":true,"color":"white"},{"text":"Kill Messages ","bold":true,"color":"white"},{"text":"out of their crate!","color":"white"}]
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=seachBox] if score @s cosmeticReward matches 334..666 run tellraw @a ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"selector":"@s"},{"text":" unboxed the ","color":"white"},{"text":"Seacharger's","bold":true,"color":"#45fe98"},{"text":" ","bold":true,"color":"white"},{"text":"Kill Sound ","bold":true,"color":"yellow"},{"text":"out of their crate!","color":"white"}]
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=seachBox] if score @s cosmeticReward matches 667..1000 run tellraw @a ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"selector":"@s"},{"text":" unboxed the ","color":"white"},{"text":"Seacharger's","bold":true,"color":"#45fe98"},{"text":" ","bold":true,"color":"white"},{"text":"Kill Effect ","bold":true,"color":"gold"},{"text":"out of their crate!","color":"white"}]

execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=seachBox] if score @s cosmeticReward matches 1..333 run tag @s add seachKillMessage
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=seachBox] if score @s cosmeticReward matches 334..666 run tag @s add seachKillSound
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=seachBox] if score @s cosmeticReward matches 667..1000 run tag @s add seachKillEffect

execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=seachBox] if score @s cosmeticReward matches 1..333 run tag @s add newseachKillMessage
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=seachBox] if score @s cosmeticReward matches 334..666 run tag @s add newseachKillSound
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=seachBox] if score @s cosmeticReward matches 667..1000 run tag @s add newseachKillEffect

execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=seachBox,tag=newseachKillMessage] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon item_display ~ ~ ~ {Tags:["cosmeticLootDisplay"],item:{id:"minecraft:lime_dye",count:1,components:{"minecraft:enchantments":{"minecraft:unbreaking":1}}}}
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=seachBox,tag=newseachKillMessage] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon text_display ~ ~1.2 ~ {Tags:["cosmeticLootDisplayName"],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"#45fe98","italic":false,"text":"Seacharger's"},{"bold":true,"color":"white","italic":false,"text":" Kill Messages"}]}


execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=seachBox,tag=newseachKillSound] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon item_display ~ ~ ~ {Tags:["cosmeticLootDisplay"],item:{id:"minecraft:wooden_sword",count:1,components:{"minecraft:enchantments":{"minecraft:unbreaking":1}}}}
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=seachBox,tag=newseachKillSound] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon text_display ~ ~1.2 ~ {Tags:["cosmeticLootDisplayName"],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"#45fe98","italic":false,"text":"Seacharger's"},{"bold":true,"color":"yellow","italic":false,"text":" Kill Sound"}]}


execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=seachBox,tag=newseachKillEffect] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon item_display ~ ~ ~ {Rotation:[0F,0F],Tags:["cosmeticLootDisplay"],item:{id:"minecraft:yellow_dye",count:1,components:{"minecraft:enchantments":{"minecraft:unbreaking":1}}}}
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=seachBox,tag=newseachKillEffect] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon text_display ~ ~1.2 ~ {Tags:["cosmeticLootDisplayName"],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"#45fe98","italic":false,"text":"Seacharger's"},{"bold":true,"color":"gold","italic":false,"text":" Kill Effect"}]}


tag @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=seachBox,tag=newseachKillMessage] remove newseachKillMessage
tag @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=seachBox,tag=newseachKillSound] remove newseachKillSound
tag @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=seachBox,tag=newseachKillEffect] remove newseachKillEffect