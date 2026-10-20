scoreboard objectives add cosmeticReward dummy
execute store result score @s cosmeticReward run random value 1..1000
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=prospBox] if entity @s[tag=prospKillMessage,tag=prospKillSound,tag=prospKillEffect] if score @s cosmeticReward matches 1..1000 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"You already have all of the ","color":"white"},{"text":"Prospector's","color":"#DFFFB0","bold":true},{"text":" cosmetics!","color":"white"}]
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=prospBox] if entity @s[tag=prospKillMessage,tag=prospKillSound,tag=prospKillEffect] if score @s cosmeticReward matches 1..1000 run return fail

execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=prospBox] if entity @s[tag=prospKillMessage] if score @s cosmeticReward matches 1..333 run return run function battle:lobby/cosmetics/crates/open_crate/rewards/prosp
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=prospBox] if entity @s[tag=prospKillSound] if score @s cosmeticReward matches 334..666 run return run function battle:lobby/cosmetics/crates/open_crate/rewards/prosp
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=prospBox] if entity @s[tag=prospKillEffect] if score @s cosmeticReward matches 667..1000 run return run function battle:lobby/cosmetics/crates/open_crate/rewards/prosp

execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=prospBox] if score @s cosmeticReward matches 1..333 run tellraw @a ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"selector":"@s"},{"text":" unboxed the ","color":"white"},{"text":"Prospector's","bold":true,"color":"#DFFFB0"},{"text":" ","bold":true,"color":"white"},{"text":"Kill Messages ","bold":true,"color":"white"},{"text":"out of their crate!","color":"white"}]
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=prospBox] if score @s cosmeticReward matches 334..666 run tellraw @a ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"selector":"@s"},{"text":" unboxed the ","color":"white"},{"text":"Prospector's","bold":true,"color":"#DFFFB0"},{"text":" ","bold":true,"color":"white"},{"text":"Kill Sound ","bold":true,"color":"yellow"},{"text":"out of their crate!","color":"white"}]
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=prospBox] if score @s cosmeticReward matches 667..1000 run tellraw @a ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"selector":"@s"},{"text":" unboxed the ","color":"white"},{"text":"Prospector's","bold":true,"color":"#DFFFB0"},{"text":" ","bold":true,"color":"white"},{"text":"Kill Effect ","bold":true,"color":"gold"},{"text":"out of their crate!","color":"white"}]

execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=prospBox] if score @s cosmeticReward matches 1..333 run tag @s add prospKillMessage
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=prospBox] if score @s cosmeticReward matches 334..666 run tag @s add prospKillSound
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=prospBox] if score @s cosmeticReward matches 667..1000 run tag @s add prospKillEffect

execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=prospBox] if score @s cosmeticReward matches 1..333 run tag @s add newprospKillMessage
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=prospBox] if score @s cosmeticReward matches 334..666 run tag @s add newprospKillSound
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=prospBox] if score @s cosmeticReward matches 667..1000 run tag @s add newprospKillEffect

execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=prospBox,tag=newprospKillMessage] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon item_display ~ ~ ~ {Tags:["cosmeticLootDisplay"],item:{id:"map",count:1,components:{"minecraft:enchantments":{"minecraft:unbreaking":1}}}}
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=prospBox,tag=newprospKillMessage] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon text_display ~ ~1.2 ~ {Tags:["cosmeticLootDisplayName"],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"#DFFFB0","italic":false,"text":"Prospector's"},{"bold":true,"color":"white","italic":false,"text":" Kill Messages"}]}


execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=prospBox,tag=newprospKillSound] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon item_display ~ ~ ~ {Tags:["cosmeticLootDisplay"],item:{id:"minecraft:copper_sword",count:1,components:{"minecraft:enchantments":{"minecraft:unbreaking":1}}}}
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=prospBox,tag=newprospKillSound] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon text_display ~ ~1.2 ~ {Tags:["cosmeticLootDisplayName"],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"#DFFFB0","italic":false,"text":"Prospector's"},{"bold":true,"color":"yellow","italic":false,"text":" Kill Sound"}]}


execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=prospBox,tag=newprospKillEffect] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon item_display ~ ~ ~ {Rotation:[0F,0F],Tags:["cosmeticLootDisplay"],item:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:enchantments":{"minecraft:unbreaking":1}}}}
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=prospBox,tag=newprospKillEffect] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon text_display ~ ~1.2 ~ {Tags:["cosmeticLootDisplayName"],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"#DFFFB0","italic":false,"text":"Prospector's"},{"bold":true,"color":"gold","italic":false,"text":" Kill Effect"}]}


tag @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=prospBox,tag=newprospKillMessage] remove newprospKillMessage
tag @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=prospBox,tag=newprospKillSound] remove newprospKillSound
tag @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=prospBox,tag=newprospKillEffect] remove newprospKillEffect