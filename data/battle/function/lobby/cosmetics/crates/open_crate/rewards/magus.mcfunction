scoreboard objectives add cosmeticReward dummy
execute store result score @s cosmeticReward run random value 1..1000
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=magusBox] if entity @s[tag=magusKillMessage,tag=magusKillSound,tag=magusKillEffect] if score @s cosmeticReward matches 1..1000 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"You already have all of the ","color":"white"},{"text":"Magus'","color":"light_purple","bold":true},{"text":" cosmetics!","color":"white"}]
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=magusBox] if entity @s[tag=magusKillMessage,tag=magusKillSound,tag=magusKillEffect] if score @s cosmeticReward matches 1..1000 run return fail

execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=magusBox] if entity @s[tag=magusKillMessage] if score @s cosmeticReward matches 1..333 run return run function battle:lobby/cosmetics/crates/open_crate/rewards/magus
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=magusBox] if entity @s[tag=magusKillSound] if score @s cosmeticReward matches 334..666 run return run function battle:lobby/cosmetics/crates/open_crate/rewards/magus
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=magusBox] if entity @s[tag=magusKillEffect] if score @s cosmeticReward matches 667..1000 run return run function battle:lobby/cosmetics/crates/open_crate/rewards/magus

execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=magusBox] if score @s cosmeticReward matches 1..333 run tellraw @a ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"selector":"@s"},{"text":" unboxed the ","color":"white"},{"text":"Magus'","bold":true,"color":"light_purple"},{"text":" ","bold":true,"color":"white"},{"text":"Kill Messages ","bold":true,"color":"white"},{"text":"out of their crate!","color":"white"}]
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=magusBox] if score @s cosmeticReward matches 334..666 run tellraw @a ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"selector":"@s"},{"text":" unboxed the ","color":"white"},{"text":"Magus'","bold":true,"color":"light_purple"},{"text":" ","bold":true,"color":"white"},{"text":"Kill Sound ","bold":true,"color":"yellow"},{"text":"out of their crate!","color":"white"}]
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=magusBox] if score @s cosmeticReward matches 667..1000 run tellraw @a ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"selector":"@s"},{"text":" unboxed the ","color":"white"},{"text":"Magus'","bold":true,"color":"light_purple"},{"text":" ","bold":true,"color":"white"},{"text":"Kill Effect ","bold":true,"color":"gold"},{"text":"out of their crate!","color":"white"}]

execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=magusBox] if score @s cosmeticReward matches 1..333 run tag @s add magusKillMessage
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=magusBox] if score @s cosmeticReward matches 334..666 run tag @s add magusKillSound
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=magusBox] if score @s cosmeticReward matches 667..1000 run tag @s add magusKillEffect

execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=magusBox] if score @s cosmeticReward matches 1..333 run tag @s add newmagusKillMessage
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=magusBox] if score @s cosmeticReward matches 334..666 run tag @s add newmagusKillSound
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=magusBox] if score @s cosmeticReward matches 667..1000 run tag @s add newmagusKillEffect

execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=magusBox,tag=newmagusKillMessage] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon item_display ~ ~ ~ {Tags:["cosmeticLootDisplay"],item:{id:"minecraft:flow_armor_trim_smithing_template",count:1,components:{"minecraft:enchantments":{"minecraft:unbreaking":1}}}}
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=magusBox,tag=newmagusKillMessage] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon text_display ~ ~1.2 ~ {Tags:["cosmeticLootDisplayName"],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"light_purple","italic":false,"text":"Magus'"},{"bold":true,"color":"white","italic":false,"text":" Kill Messages"}]}


execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=magusBox,tag=newmagusKillSound] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon item_display ~ ~ ~ {Tags:["cosmeticLootDisplay"],item:{id:"minecraft:iron_sword",count:1,components:{"minecraft:enchantments":{"minecraft:unbreaking":1}}}}
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=magusBox,tag=newmagusKillSound] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon text_display ~ ~1.2 ~ {Tags:["cosmeticLootDisplayName"],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"light_purple","italic":false,"text":"Magus'"},{"bold":true,"color":"yellow","italic":false,"text":" Kill Sound"}]}


execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=magusBox,tag=newmagusKillEffect] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon item_display ~ ~ ~ {Rotation:[0F,0F],Tags:["cosmeticLootDisplay"],item:{id:"minecraft:snowball",count:1,components:{"minecraft:enchantments":{"minecraft:unbreaking":1}}}}
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=magusBox,tag=newmagusKillEffect] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon text_display ~ ~1.2 ~ {Tags:["cosmeticLootDisplayName"],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"light_purple","italic":false,"text":"Magus'"},{"bold":true,"color":"gold","italic":false,"text":" Kill Effect"}]}


tag @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=magusBox,tag=newmagusKillMessage] remove newmagusKillMessage
tag @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=magusBox,tag=newmagusKillSound] remove newmagusKillSound
tag @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=magusBox,tag=newmagusKillEffect] remove newmagusKillEffect