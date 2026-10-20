scoreboard objectives add cosmeticReward dummy
execute store result score @s cosmeticReward run random value 1..1000
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=venaBox] if entity @s[tag=venaKillMessage,tag=vena_killSound,tag=vena_killEffect] if score @s cosmeticReward matches 1..1000 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"You already have all of the ","color":"white"},{"text":"Venator's","color":"dark_purple","bold":true},{"text":" cosmetics!","color":"white"}]
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=venaBox] if entity @s[tag=venaKillMessage,tag=vena_killSound,tag=vena_killEffect] if score @s cosmeticReward matches 1..1000 run return fail

execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=venaBox] if entity @s[tag=venaKillMessage] if score @s cosmeticReward matches 1..333 run return run function battle:lobby/cosmetics/crates/open_crate/rewards/vena
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=venaBox] if entity @s[tag=vena_killSound] if score @s cosmeticReward matches 334..666 run return run function battle:lobby/cosmetics/crates/open_crate/rewards/vena
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=venaBox] if entity @s[tag=vena_killEffect] if score @s cosmeticReward matches 667..1000 run return run function battle:lobby/cosmetics/crates/open_crate/rewards/vena

execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=venaBox] if score @s cosmeticReward matches 1..333 run tellraw @a ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"selector":"@s"},{"text":" unboxed the ","color":"white"},{"text":"Venator's","bold":true,"color":"dark_purple"},{"text":" ","bold":true,"color":"white"},{"text":"Kill Messages ","bold":true,"color":"white"},{"text":"out of their crate!","color":"white"}]
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=venaBox] if score @s cosmeticReward matches 334..666 run tellraw @a ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"selector":"@s"},{"text":" unboxed the ","color":"white"},{"text":"Venator's","bold":true,"color":"dark_purple"},{"text":" ","bold":true,"color":"white"},{"text":"Kill Sound ","bold":true,"color":"yellow"},{"text":"out of their crate!","color":"white"}]
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=venaBox] if score @s cosmeticReward matches 667..1000 run tellraw @a ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"selector":"@s"},{"text":" unboxed the ","color":"white"},{"text":"Venator's","bold":true,"color":"dark_purple"},{"text":" ","bold":true,"color":"white"},{"text":"Kill Effect ","bold":true,"color":"gold"},{"text":"out of their crate!","color":"white"}]

execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=venaBox] if score @s cosmeticReward matches 1..333 run tag @s add venaKillMessage
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=venaBox] if score @s cosmeticReward matches 334..666 run tag @s add vena_killSound
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=venaBox] if score @s cosmeticReward matches 667..1000 run tag @s add vena_killEffect

execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=venaBox] if score @s cosmeticReward matches 1..333 run tag @s add newvenaKillMessage
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=venaBox] if score @s cosmeticReward matches 334..666 run tag @s add newvena_killSound
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=venaBox] if score @s cosmeticReward matches 667..1000 run tag @s add newvena_killEffect

execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=venaBox,tag=newvenaKillMessage] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon item_display ~ ~ ~ {Tags:["cosmeticLootDisplay"],item:{id:"minecraft:silence_armor_trim_smithing_template",count:1,components:{"minecraft:enchantments":{"minecraft:unbreaking":1}}}}
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=venaBox,tag=newvenaKillMessage] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon text_display ~ ~1.2 ~ {Tags:["cosmeticLootDisplayName"],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"dark_purple","italic":false,"text":"Venator's"},{"bold":true,"color":"white","italic":false,"text":" Kill Messages"}]}


execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=venaBox,tag=newvena_killSound] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon item_display ~ ~ ~ {Tags:["cosmeticLootDisplay"],item:{id:"minecraft:netherite_sword",count:1,components:{"minecraft:enchantments":{"minecraft:unbreaking":1}}}}
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=venaBox,tag=newvena_killSound] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon text_display ~ ~1.2 ~ {Tags:["cosmeticLootDisplayName"],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"dark_purple","italic":false,"text":"Venator's"},{"bold":true,"color":"yellow","italic":false,"text":" Kill Sound"}]}


execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=venaBox,tag=newvena_killEffect] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon item_display ~ ~ ~ {Rotation:[0F,0F],Tags:["cosmeticLootDisplay"],item:{id:"minecraft:ender_eye",count:1,components:{"minecraft:enchantments":{"minecraft:unbreaking":1}}}}
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=venaBox,tag=newvena_killEffect] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon text_display ~ ~1.2 ~ {Tags:["cosmeticLootDisplayName"],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"dark_purple","italic":false,"text":"Venator's"},{"bold":true,"color":"gold","italic":false,"text":" Kill Effect"}]}


tag @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=venaBox,tag=newvenaKillMessage] remove newvenaKillMessage
tag @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=venaBox,tag=newvena_killSound] remove newvena_killSound
tag @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=venaBox,tag=newvena_killEffect] remove newvena_killEffect