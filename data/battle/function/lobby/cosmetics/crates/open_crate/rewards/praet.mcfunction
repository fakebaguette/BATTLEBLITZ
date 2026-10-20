scoreboard objectives add cosmeticReward dummy
execute store result score @s cosmeticReward run random value 1..1000
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=praetBox] if entity @s[tag=praetKillMessage,tag=praetKillSound,tag=praetKillEffect] if score @s cosmeticReward matches 1..1000 run tellraw @s ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"text":"You already have all of the ","color":"white"},{"text":"Praetorian's","color":"#FF6600","bold":true},{"text":" cosmetics!","color":"white"}]
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=praetBox] if entity @s[tag=praetKillMessage,tag=praetKillSound,tag=praetKillEffect] if score @s cosmeticReward matches 1..1000 run return fail

execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=praetBox] if entity @s[tag=praetKillMessage] if score @s cosmeticReward matches 1..333 run return run function battle:lobby/cosmetics/crates/open_crate/rewards/praet
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=praetBox] if entity @s[tag=praetKillSound] if score @s cosmeticReward matches 334..666 run return run function battle:lobby/cosmetics/crates/open_crate/rewards/praet
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=praetBox] if entity @s[tag=praetKillEffect] if score @s cosmeticReward matches 667..1000 run return run function battle:lobby/cosmetics/crates/open_crate/rewards/praet

execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=praetBox] if score @s cosmeticReward matches 1..333 run tellraw @a ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"selector":"@s"},{"text":" unboxed the ","color":"white"},{"text":"Praetorian's","bold":true,"color":"#FF6600"},{"text":" ","bold":true,"color":"white"},{"text":"Kill Messages ","bold":true,"color":"white"},{"text":"out of their crate!","color":"white"}]
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=praetBox] if score @s cosmeticReward matches 334..666 run tellraw @a ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"selector":"@s"},{"text":" unboxed the ","color":"white"},{"text":"Praetorian's","bold":true,"color":"#FF6600"},{"text":" ","bold":true,"color":"white"},{"text":"Kill Sound ","bold":true,"color":"yellow"},{"text":"out of their crate!","color":"white"}]
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=praetBox] if score @s cosmeticReward matches 667..1000 run tellraw @a ["\n[",{"text":"INFO","bold":true,"color":"#ff9500"},{"text":"]","color":"white"},{"text":" ","color":"gold"},"| ",{"selector":"@s"},{"text":" unboxed the ","color":"white"},{"text":"Praetorian's","bold":true,"color":"#FF6600"},{"text":" ","bold":true,"color":"white"},{"text":"Kill Effect ","bold":true,"color":"gold"},{"text":"out of their crate!","color":"white"}]

execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=praetBox] if score @s cosmeticReward matches 1..333 run tag @s add praetKillMessage
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=praetBox] if score @s cosmeticReward matches 334..666 run tag @s add praetKillSound
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=praetBox] if score @s cosmeticReward matches 667..1000 run tag @s add praetKillEffect

execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=praetBox] if score @s cosmeticReward matches 1..333 run tag @s add newpraetKillMessage
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=praetBox] if score @s cosmeticReward matches 334..666 run tag @s add newpraetKillSound
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=praetBox] if score @s cosmeticReward matches 667..1000 run tag @s add newpraetKillEffect

execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=praetBox,tag=newpraetKillMessage] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon item_display ~ ~ ~ {Tags:["cosmeticLootDisplay"],item:{id:"minecraft:bow",count:1,components:{"minecraft:enchantments":{"minecraft:unbreaking":1}}}}
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=praetBox,tag=newpraetKillMessage] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon text_display ~ ~1.2 ~ {Tags:["cosmeticLootDisplayName"],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"#FF6600","italic":false,"text":"Praetorian's"},{"bold":true,"color":"white","italic":false,"text":" Kill Messages"}]}


execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=praetBox,tag=newpraetKillSound] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon item_display ~ ~ ~ {Tags:["cosmeticLootDisplay"],item:{id:"minecraft:golden_sword",count:1,components:{"minecraft:enchantments":{"minecraft:unbreaking":1}}}}
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=praetBox,tag=newpraetKillSound] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon text_display ~ ~1.2 ~ {Tags:["cosmeticLootDisplayName"],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"#FF6600","italic":false,"text":"Praetorian's"},{"bold":true,"color":"yellow","italic":false,"text":" Kill Sound"}]}


execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=praetBox,tag=newpraetKillEffect] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon item_display ~ ~-0.5 ~ {Tags:["cosmeticLootDisplay"],item:{id:"minecraft:saddle",count:1,components:{"minecraft:enchantments":{"minecraft:unbreaking":1}}}}
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=praetBox,tag=newpraetKillEffect] at @s at @e[type=interaction,tag=cosmeticLoot,sort=nearest,limit=1,scores={cosmeticBoxTime=80}] run summon text_display ~ ~1.2 ~ {Tags:["cosmeticLootDisplayName"],default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"#FF6600","italic":false,"text":"Praetorian's"},{"bold":true,"color":"gold","italic":false,"text":" Kill Effect"}]}


tag @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=praetBox,tag=newpraetKillMessage] remove newpraetKillMessage
tag @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=praetBox,tag=newpraetKillSound] remove newpraetKillSound
tag @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=praetBox,tag=newpraetKillEffect] remove newpraetKillEffect