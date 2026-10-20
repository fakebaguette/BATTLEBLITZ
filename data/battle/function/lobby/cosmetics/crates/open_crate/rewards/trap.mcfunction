scoreboard objectives add cosmeticReward dummy
execute store result score @s cosmeticReward run random value 1..1000
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=trapBox] if entity @s[tag=trapKillMessage,tag=trapKillSound,tag=trapKillEffect] if score @s cosmeticReward matches 1..1000 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"You already have all of the ","color":"white"},{"text":"Trapshooter's","color":"yellow","bold":true},{"text":" cosmetics!","color":"white"}]
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=trapBox] if entity @s[tag=trapKillMessage,tag=trapKillSound,tag=trapKillEffect] if score @s cosmeticReward matches 1..1000 run return fail

execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=trapBox] if entity @s[tag=trapKillMessage] if score @s cosmeticReward matches 1..333 run return run function battle:lobby/cosmetics/crates/open_crate/rewards/trap
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=trapBox] if entity @s[tag=trapKillSound] if score @s cosmeticReward matches 334..666 run return run function battle:lobby/cosmetics/crates/open_crate/rewards/trap
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=trapBox] if entity @s[tag=trapKillEffect] if score @s cosmeticReward matches 667..1000 run return run function battle:lobby/cosmetics/crates/open_crate/rewards/trap

execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=trapBox] if score @s cosmeticReward matches 1..333 run tellraw @a ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"selector":"@s"},{"text":" unboxed the ","color":"white"},{"text":"Trapshooter's","bold":true,"color":"yellow"},{"text":" ","bold":true,"color":"white"},{"text":"Kill Messages ","bold":true,"color":"white"},{"text":"out of their crate!","color":"white"}]
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=trapBox] if score @s cosmeticReward matches 334..666 run tellraw @a ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"selector":"@s"},{"text":" unboxed the ","color":"white"},{"text":"Trapshooter's","bold":true,"color":"yellow"},{"text":" ","bold":true,"color":"white"},{"text":"Kill Sound ","bold":true,"color":"yellow"},{"text":"out of their crate!","color":"white"}]
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=trapBox] if score @s cosmeticReward matches 667..1000 run tellraw @a ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"selector":"@s"},{"text":" unboxed the ","color":"white"},{"text":"Trapshooter's","bold":true,"color":"yellow"},{"text":" ","bold":true,"color":"white"},{"text":"Kill Effect ","bold":true,"color":"gold"},{"text":"out of their crate!","color":"white"}]

execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=trapBox] if score @s cosmeticReward matches 1..333 run tag @s add trapKillMessage
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=trapBox] if score @s cosmeticReward matches 334..666 run tag @s add trapKillSound
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=trapBox] if score @s cosmeticReward matches 667..1000 run tag @s add trapKillEffect

execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=trapBox] if score @s cosmeticReward matches 1..333 run tag @s add newtrapKillMessage
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=trapBox] if score @s cosmeticReward matches 334..666 run tag @s add newtrapKillSound
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=trapBox] if score @s cosmeticReward matches 667..1000 run tag @s add newtrapKillEffect

execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=trapBox,tag=newtrapKillMessage] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon item_display ~ ~ ~ {Tags:["cosmeticLootDisplay"],item:{id:"minecraft:wayfinder_armor_trim_smithing_template",count:1,components:{"minecraft:enchantments":{"minecraft:unbreaking":1}}}}
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=trapBox,tag=newtrapKillMessage] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon text_display ~ ~1.2 ~ {Tags:["cosmeticLootDisplayName"],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"yellow","italic":false,"text":"Trapshooter's"},{"bold":true,"color":"white","italic":false,"text":" Kill Messages"}]}


execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=trapBox,tag=newtrapKillSound] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon item_display ~ ~ ~ {Tags:["cosmeticLootDisplay"],item:{id:"minecraft:crossbow",count:1,components:{"minecraft:enchantments":{"minecraft:unbreaking":1}}}}
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=trapBox,tag=newtrapKillSound] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon text_display ~ ~1.2 ~ {Tags:["cosmeticLootDisplayName"],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"yellow","italic":false,"text":"Trapshooter's"},{"bold":true,"color":"yellow","italic":false,"text":" Kill Sound"}]}


execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=trapBox,tag=newtrapKillEffect] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon item_display ~ ~ ~ {Rotation:[0F,0F],Tags:["cosmeticLootDisplay"],item:{id:"minecraft:comparator",count:1,components:{"minecraft:enchantments":{"minecraft:unbreaking":1}}}}
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=trapBox,tag=newtrapKillEffect] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon text_display ~ ~1.2 ~ {Tags:["cosmeticLootDisplayName"],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"yellow","italic":false,"text":"Trapshooter's"},{"bold":true,"color":"gold","italic":false,"text":" Kill Effect"}]}


tag @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=trapBox,tag=newtrapKillMessage] remove newtrapKillMessage
tag @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=trapBox,tag=newtrapKillSound] remove newtrapKillSound
tag @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=trapBox,tag=newtrapKillEffect] remove newtrapKillEffect