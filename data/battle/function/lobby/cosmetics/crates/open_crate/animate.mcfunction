execute if entity @a[tag=rewardBox] run schedule function battle:lobby/cosmetics/crates/open_crate/animate 1t

tag @s remove newBox
scoreboard players add @e[type=minecraft:block_display,tag=cosmeticBox] cosmeticBoxTime 1

execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=generalBox,scores={cosmeticBoxTime=1}] at @s run summon interaction ~ ~ ~ {Tags:["cosmeticLoot","generalBox"],width:0.1f,height:0.1f}
execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=lightBox,scores={cosmeticBoxTime=1}] at @s run summon interaction ~ ~ ~ {Tags:["cosmeticLoot","lightBox"],width:0.1f,height:0.1f}
execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=maraBox,scores={cosmeticBoxTime=1}] at @s run summon interaction ~ ~ ~ {Tags:["cosmeticLoot","maraBox"],width:0.1f,height:0.1f}
execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=legionBox,scores={cosmeticBoxTime=1}] at @s run summon interaction ~ ~ ~ {Tags:["cosmeticLoot","legionBox"],width:0.1f,height:0.1f}
execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=venaBox,scores={cosmeticBoxTime=1}] at @s run summon interaction ~ ~ ~ {Tags:["cosmeticLoot","venaBox"],width:0.1f,height:0.1f}
execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=conjBox,scores={cosmeticBoxTime=1}] at @s run summon interaction ~ ~ ~ {Tags:["cosmeticLoot","conjBox"],width:0.1f,height:0.1f}
execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=reveBox,scores={cosmeticBoxTime=1}] at @s run summon interaction ~ ~ ~ {Tags:["cosmeticLoot","reveBox"],width:0.1f,height:0.1f}
execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=magusBox,scores={cosmeticBoxTime=1}] at @s run summon interaction ~ ~ ~ {Tags:["cosmeticLoot","magusBox"],width:0.1f,height:0.1f}
execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=trapBox,scores={cosmeticBoxTime=1}] at @s run summon interaction ~ ~ ~ {Tags:["cosmeticLoot","trapBox"],width:0.1f,height:0.1f}
execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=northBox,scores={cosmeticBoxTime=1}] at @s run summon interaction ~ ~ ~ {Tags:["cosmeticLoot","northBox"],width:0.1f,height:0.1f}
execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=praetBox,scores={cosmeticBoxTime=1}] at @s run summon interaction ~ ~ ~ {Tags:["cosmeticLoot","praetBox"],width:0.1f,height:0.1f}
execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=prospBox,scores={cosmeticBoxTime=1}] at @s run summon interaction ~ ~ ~ {Tags:["cosmeticLoot","prospBox"],width:0.1f,height:0.1f}
execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=cavaBox,scores={cosmeticBoxTime=1}] at @s run summon interaction ~ ~ ~ {Tags:["cosmeticLoot","cavaBox"],width:0.1f,height:0.1f}
execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=seachBox,scores={cosmeticBoxTime=1}] at @s run summon interaction ~ ~ ~ {Tags:["cosmeticLoot","seachBox"],width:0.1f,height:0.1f}
execute as @e[type=interaction,tag=cosmeticLoot] at @s run tp @s ~ ~ ~ ~10 0
execute as @e[type=interaction,tag=cosmeticLoot,tag=generalBox] at @s run particle reverse_portal ^ ^ ^1 1 1 1 0.1 1 normal @a
execute as @e[type=interaction,tag=cosmeticLoot,tag=lightBox] at @s run particle end_rod ^ ^ ^1 1 1 1 0.1 1 normal @a
execute as @e[type=interaction,tag=cosmeticLoot,tag=maraBox] at @s run particle raid_omen ^ ^ ^1 0.5 0.5 0.5 0 1 normal @a
execute as @e[type=interaction,tag=cosmeticLoot,tag=legionBox] at @s run particle cloud ^ ^ ^1 0.5 0.5 0.5 0 1 normal @a
execute as @e[type=interaction,tag=cosmeticLoot,tag=legionBox] at @s run particle rain ^ ^ ^1 0.5 0.5 0.5 0 1 normal @a
execute as @e[type=interaction,tag=cosmeticLoot,tag=venaBox] at @s run particle witch ^ ^ ^1 0.5 0.5 0.5 0.01 1 normal @a
execute as @e[type=interaction,tag=cosmeticLoot,tag=conjBox] at @s run particle gust ^ ^1 ^1 0.5 0.5 0.5 0 1 normal @a
execute as @e[type=interaction,tag=cosmeticLoot,tag=conjBox] at @s run particle cherry_leaves ^ ^1 ^1 0.5 0.5 0.5 0 1 normal @a
execute as @e[type=interaction,tag=cosmeticLoot,tag=reveBox] at @s run particle flame ^ ^ ^1 0.5 0.5 0.5 0.01 1 normal @a
execute as @e[type=interaction,tag=cosmeticLoot,tag=magusBox] at @s run particle snowflake ^ ^1 ^1 0.5 0.5 0.5 0 1 normal @a
execute as @e[type=interaction,tag=cosmeticLoot,tag=trapBox] at @s run particle enchanted_hit ^ ^ ^1 0.5 0.5 0.5 0 1 normal @a
execute as @e[type=interaction,tag=cosmeticLoot,tag=northBox] at @s run particle wax_off ^ ^ ^1 0.5 0.5 0.5 0.1 1 normal @a
execute as @e[type=interaction,tag=cosmeticLoot,tag=praetBox] at @s run particle enchanted_hit ^ ^ ^1 0.5 0.5 0.5 0 1 normal @a
execute as @e[type=interaction,tag=cosmeticLoot,tag=praetBox] at @s run particle crit ^ ^ ^1 0.5 0.5 0.5 0 1 normal @a
execute as @e[type=interaction,tag=cosmeticLoot,tag=prospBox] at @s run particle instant_effect ^ ^ ^1 0.5 0.5 0.5 0 1 normal @a
execute as @e[type=interaction,tag=cosmeticLoot,tag=cavaBox] at @s run particle trial_spawner_detection ^ ^ ^1 0.5 0.5 0.5 0 1 normal @a
execute as @e[type=interaction,tag=cosmeticLoot,tag=seachBox] at @s run particle sculk_charge_pop ^ ^ ^1 0.5 0.5 0.5 0 1 normal @a

execute if entity @e[type=minecraft:block_display,tag=cosmeticBox,scores={cosmeticBoxTime=1},tag=generalBox] run summon text_display ~ ~1.2 ~ {default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"white","italic":false,"text":"Regular"},{"bold":false,"color":"white","italic":false,"text":" Crate"}],Tags:["cosmeticParticle"]}
execute if entity @e[type=minecraft:block_display,tag=cosmeticBox,scores={cosmeticBoxTime=1},tag=lightBox] run summon text_display ~ ~1.2 ~ {default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"#fdfcee","italic":false,"text":"Lightwielder's"},{"bold":false,"color":"white","italic":false,"text":" Crate"}],Tags:["cosmeticParticle"]}
execute if entity @e[type=minecraft:block_display,tag=cosmeticBox,scores={cosmeticBoxTime=1},tag=maraBox] run summon text_display ~ ~1.2 ~ {default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"dark_red","italic":false,"text":"Marauder's"},{"bold":false,"color":"white","italic":false,"text":" Crate"}],Tags:["cosmeticParticle"]}
execute if entity @e[type=minecraft:block_display,tag=cosmeticBox,scores={cosmeticBoxTime=1},tag=legionBox] run summon text_display ~ ~1.2 ~ {default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"gold","italic":false,"text":"Legionnaire's"},{"bold":false,"color":"white","italic":false,"text":" Crate"}],Tags:["cosmeticParticle"]}
execute if entity @e[type=minecraft:block_display,tag=cosmeticBox,scores={cosmeticBoxTime=1},tag=venaBox] run summon text_display ~ ~1.2 ~ {default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"dark_purple","italic":false,"text":"Venator's"},{"bold":false,"color":"white","italic":false,"text":" Crate"}],Tags:["cosmeticParticle"]}
execute if entity @e[type=minecraft:block_display,tag=cosmeticBox,scores={cosmeticBoxTime=1},tag=conjBox] run summon text_display ~ ~1.2 ~ {default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"dark_green","italic":false,"text":"Conjurer's"},{"bold":false,"color":"white","italic":false,"text":" Crate"}],Tags:["cosmeticParticle"]}
execute if entity @e[type=minecraft:block_display,tag=cosmeticBox,scores={cosmeticBoxTime=1},tag=reveBox] run summon text_display ~ ~1.2 ~ {default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"red","italic":false,"text":"Revenant's"},{"bold":false,"color":"white","italic":false,"text":" Crate"}],Tags:["cosmeticParticle"]}
execute if entity @e[type=minecraft:block_display,tag=cosmeticBox,scores={cosmeticBoxTime=1},tag=magusBox] run summon text_display ~ ~1.2 ~ {default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"light_purple","italic":false,"text":"Magus'"},{"bold":false,"color":"white","italic":false,"text":" Crate"}],Tags:["cosmeticParticle"]}
execute if entity @e[type=minecraft:block_display,tag=cosmeticBox,scores={cosmeticBoxTime=1},tag=trapBox] run summon text_display ~ ~1.2 ~ {default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"yellow","italic":false,"text":"Trapshooter's"},{"bold":false,"color":"white","italic":false,"text":" Crate"}],Tags:["cosmeticParticle"]}
execute if entity @e[type=minecraft:block_display,tag=cosmeticBox,scores={cosmeticBoxTime=1},tag=northBox] run summon text_display ~ ~1.2 ~ {default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"blue","italic":false,"text":"Northman's"},{"bold":false,"color":"white","italic":false,"text":" Crate"}],Tags:["cosmeticParticle"]}
execute if entity @e[type=minecraft:block_display,tag=cosmeticBox,scores={cosmeticBoxTime=1},tag=praetBox] run summon text_display ~ ~1.2 ~ {default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"#FF6600","italic":false,"text":"Praetorian's"},{"bold":false,"color":"white","italic":false,"text":" Crate"}],Tags:["cosmeticParticle"]}
execute if entity @e[type=minecraft:block_display,tag=cosmeticBox,scores={cosmeticBoxTime=1},tag=prospBox] run summon text_display ~ ~1.2 ~ {default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"#DFFFB0","italic":false,"text":"Prospector's"},{"bold":false,"color":"white","italic":false,"text":" Crate"}],Tags:["cosmeticParticle"]}
execute if entity @e[type=minecraft:block_display,tag=cosmeticBox,scores={cosmeticBoxTime=1},tag=cavaBox] run summon text_display ~ ~1.2 ~ {default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"#FFD943","italic":false,"text":"Cavalier's"},{"bold":false,"color":"white","italic":false,"text":" Crate"}],Tags:["cosmeticParticle"]}
execute if entity @e[type=minecraft:block_display,tag=cosmeticBox,scores={cosmeticBoxTime=1},tag=seachBox] run summon text_display ~ ~1.2 ~ {default_background:1b,shadow:0b,see_through:0b,billboard:"center",text:[{"bold":true,"color":"#45fe98","italic":false,"text":"Seacharger's"},{"bold":false,"color":"white","italic":false,"text":" Crate"}],Tags:["cosmeticParticle"]}

execute as @e[type=text_display,tag=cosmeticParticle] at @s run tp @s ~ ~ ~ ~10 0
execute as @e[type=text_display,tag=cosmeticParticle] at @s run particle enchant ^ ^ ^ 1 1 1 0.1 1 normal @a
execute as @e[type=text_display,tag=cosmeticParticle] at @s run particle portal ~ ~0.5 ~ 0.5 0.5 0.5 0.5 1 normal @a

scoreboard players add @a[tag=rewardBox] cosmeticBoxTime 1
scoreboard players add @e[type=minecraft:text_display,tag=cosmeticParticle] cosmeticBoxTime 1
scoreboard players add @e[type=minecraft:interaction,tag=cosmeticLoot] cosmeticBoxTime 1

execute as @e[type=minecraft:block_display,tag=cosmeticBox,scores={cosmeticBoxTime=1}] run data merge entity @s {teleport_duration:5}
execute as @e[type=minecraft:block_display,tag=cosmeticBox,scores={cosmeticBoxTime=5}] at @s run tp @s ~ ~ ~0.01 ~-3 ~3
execute as @e[type=minecraft:block_display,tag=cosmeticBox,scores={cosmeticBoxTime=10}] at @s run tp @s ~ ~ ~-0.01 ~3 ~-3
execute as @e[type=minecraft:block_display,tag=cosmeticBox,scores={cosmeticBoxTime=25}] at @s run tp @s ~ ~ ~0.01 ~-3 ~3
execute as @e[type=minecraft:block_display,tag=cosmeticBox,scores={cosmeticBoxTime=40}] at @s run tp @s ~ ~ ~-0.01 ~3 ~-3

execute as @e[type=minecraft:block_display,tag=cosmeticBox,scores={cosmeticBoxTime=50}] at @s run tp @s ~-0.03 ~-0.03 ~-0.03 ~3 ~-3
execute as @e[type=minecraft:block_display,tag=cosmeticBox,scores={cosmeticBoxTime=60}] at @s run tp @s ~-0.03 ~-0.03 ~-0.03 ~3 ~-3
execute as @e[type=minecraft:block_display,tag=cosmeticBox,scores={cosmeticBoxTime=65}] at @s run tp @s ~0.03 ~0.03 ~0.03 ~-3 ~3
execute as @e[type=minecraft:block_display,tag=cosmeticBox,scores={cosmeticBoxTime=70}] at @s run tp @s ~-0.03 ~-0.03 ~-0.03 ~3 ~-3
execute as @e[type=minecraft:block_display,tag=cosmeticBox,scores={cosmeticBoxTime=75}] at @s run tp @s ~0.03 ~0.03 ~0.03 ~-3 ~3
execute as @e[type=minecraft:block_display,tag=cosmeticBox,scores={cosmeticBoxTime=80}] at @s run tp @s ~-0.03 ~-0.03 ~-0.03 ~-6 ~6

execute as @e[type=minecraft:block_display,tag=cosmeticBox,scores={cosmeticBoxTime=5}] at @s run playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 0.15 0.5
execute as @e[type=minecraft:block_display,tag=cosmeticBox,scores={cosmeticBoxTime=5}] at @s run playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 0.15 0.8
execute as @e[type=minecraft:block_display,tag=cosmeticBox,scores={cosmeticBoxTime=10}] at @s run playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 0.15 0.5
execute as @e[type=minecraft:block_display,tag=cosmeticBox,scores={cosmeticBoxTime=25}] at @s run playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 0.15 0.5
execute as @e[type=minecraft:block_display,tag=cosmeticBox,scores={cosmeticBoxTime=40}] at @s run playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 0.15 0.7
execute as @e[type=minecraft:block_display,tag=cosmeticBox,scores={cosmeticBoxTime=50}] at @s run playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 0.15 0.7
execute as @e[type=minecraft:block_display,tag=cosmeticBox,scores={cosmeticBoxTime=60}] at @s run playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 0.15 0.9
execute as @e[type=minecraft:block_display,tag=cosmeticBox,scores={cosmeticBoxTime=65}] at @s run playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 0.15 0.5
execute as @e[type=minecraft:block_display,tag=cosmeticBox,scores={cosmeticBoxTime=70}] at @s run playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 0.15 0.5
execute as @e[type=minecraft:block_display,tag=cosmeticBox,scores={cosmeticBoxTime=75}] at @s run playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 0.15 0.9
execute as @e[type=minecraft:block_display,tag=cosmeticBox,scores={cosmeticBoxTime=80}] at @s run playsound minecraft:entity.zombie.attack_wooden_door master @a ~ ~ ~ 0.15 2
execute as @e[type=minecraft:block_display,tag=cosmeticBox,scores={cosmeticBoxTime=80}] at @s run playsound minecraft:entity.zombie.attack_iron_door master @a ~ ~ ~ 0.15 0.5

execute as @e[type=minecraft:block_display,tag=cosmeticBox,scores={cosmeticBoxTime=80}] at @s run particle minecraft:gust_emitter_large ~ ~0.5 ~ 0 0 0 0 1 normal
execute as @e[type=minecraft:block_display,tag=cosmeticBox,scores={cosmeticBoxTime=80}] at @s run playsound entity.player.levelup master @a ~ ~ ~ 0.8 0.9
execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=lightBox,scores={cosmeticBoxTime=80}] at @s run playsound minecraft:block.beacon.power_select block @a[distance=..10] ~ ~ ~ 20 2

execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=maraBox,scores={cosmeticBoxTime=80}] at @s run playsound minecraft:block.trial_spawner.ominous_activate master @a ~ ~ ~ 1 0
execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=maraBox,scores={cosmeticBoxTime=80}] at @s run playsound minecraft:item.goat_horn.sound.1 master @a ~ ~ ~ 1 1.5

execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=legionBox,scores={cosmeticBoxTime=80}] at @s run playsound minecraft:item.shield.block player @a[distance=..10] ~ ~ ~ 15 0.9

execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=venaBox,scores={cosmeticBoxTime=80}] at @s run playsound minecraft:entity.illusioner.prepare_mirror master @a ~ ~ ~ 20 0 1
execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=venaBox,scores={cosmeticBoxTime=80}] at @s run playsound minecraft:entity.camel.saddle master @a ~ ~ ~ 20 0 1

execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=conjBox,scores={cosmeticBoxTime=80}] at @s run playsound entity.illusioner.prepare_blindness master @a ~ ~ ~ 10

execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=reveBox,scores={cosmeticBoxTime=80}] at @s run playsound minecraft:entity.zoglin.hurt master @a ~ ~ ~ 0.5 0
execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=reveBox,scores={cosmeticBoxTime=80}] at @s run playsound minecraft:entity.player.breath master @a ~ ~ ~ 1 1
execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=reveBox,scores={cosmeticBoxTime=80}] at @s run playsound minecraft:entity.player.burp master @a ~ ~ ~ 1 0.7

execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=magusBox,scores={cosmeticBoxTime=80}] at @s run playsound minecraft:block.respawn_anchor.deplete block @a ~ ~ ~ 1 1.2

execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=trapBox,scores={cosmeticBoxTime=80}] at @s run playsound minecraft:entity.fox.bite master @a ~ ~ ~ 1 0.5
execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=trapBox,scores={cosmeticBoxTime=80}] at @s run playsound minecraft:item.shield.block master @a ~ ~ ~ 1 0.8
execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=trapBox,scores={cosmeticBoxTime=80}] at @s run playsound minecraft:entity.player.attack.crit master @a ~ ~ ~ 1 0.7
execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=trapBox,scores={cosmeticBoxTime=80}] at @s run playsound minecraft:entity.player.hurt_freeze master @a ~ ~ ~ 1 0.5

execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=northBox,scores={cosmeticBoxTime=80}] at @s run playsound minecraft:entity.ravager.stunned master @a ~ ~ ~ 0.8 0.8
execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=northBox,scores={cosmeticBoxTime=80}] at @s run playsound minecraft:entity.player.hurt_freeze master @a ~ ~ ~ 1 0
execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=northBox,scores={cosmeticBoxTime=80}] at @s run playsound minecraft:entity.player.attack.knockback master @a ~ ~ ~ 1 0.8
execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=northBox,scores={cosmeticBoxTime=80}] at @s run playsound minecraft:entity.wither.break_block master @a ~ ~ ~ 0.8 0.8
execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=northBox,scores={cosmeticBoxTime=80}] at @s run playsound minecraft:block.glass.break master @a ~ ~ ~ 1 0

execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=praetBox,scores={cosmeticBoxTime=80}] at @s run playsound minecraft:entity.horse.ambient master @a ~ ~ ~ 1 0.8
execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=praetBox,scores={cosmeticBoxTime=80}] at @s run playsound minecraft:entity.player.attack.crit master @a ~ ~ ~ 1 0.8
execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=praetBox,scores={cosmeticBoxTime=80}] at @s run playsound minecraft:entity.player.big_fall master @a ~ ~ ~ 1 0.8

execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=prospBox,scores={cosmeticBoxTime=80}] at @s run playsound minecraft:entity.firework_rocket.large_blast master @a ~ ~ ~ 1 0.8
execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=prospBox,scores={cosmeticBoxTime=80}] at @s run playsound minecraft:entity.breeze.jump master @a ~ ~ ~ 1 0.8

execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=cavaBox,scores={cosmeticBoxTime=80}] at @s run playsound minecraft:entity.camel.ambient master @a ~ ~ ~ 1 0.8
execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=cavaBox,scores={cosmeticBoxTime=80}] at @s run playsound minecraft:item.spear.hit master @a ~ ~ ~ 1 0.8

execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=seachBox,scores={cosmeticBoxTime=80}] at @s run playsound block.conduit.ambient master @a ~ ~ ~ 1 0.8
execute as @e[type=minecraft:block_display,tag=cosmeticBox,tag=seachBox,scores={cosmeticBoxTime=80}] at @s run playsound entity.nautilus.ambient master @a ~ ~ ~ 1 0.8

execute as @e[type=minecraft:block_display,tag=cosmeticBox,scores={cosmeticBoxTime=80..}] at @s run kill @s
execute as @e[type=text_display,tag=cosmeticParticle,scores={cosmeticBoxTime=80..}] at @s run kill @s

execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=generalBox] at @s run function battle:lobby/cosmetics/crates/open_crate/rewards/general
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=lightBox] at @s run function battle:lobby/cosmetics/crates/open_crate/rewards/light
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=maraBox] at @s run function battle:lobby/cosmetics/crates/open_crate/rewards/mara
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=legionBox] at @s run function battle:lobby/cosmetics/crates/open_crate/rewards/legion
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=venaBox] at @s run function battle:lobby/cosmetics/crates/open_crate/rewards/vena
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=conjBox] at @s run function battle:lobby/cosmetics/crates/open_crate/rewards/conj
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=reveBox] at @s run function battle:lobby/cosmetics/crates/open_crate/rewards/reve
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=magusBox] at @s run function battle:lobby/cosmetics/crates/open_crate/rewards/magus
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=trapBox] at @s run function battle:lobby/cosmetics/crates/open_crate/rewards/trap
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=northBox] at @s run function battle:lobby/cosmetics/crates/open_crate/rewards/north
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=praetBox] at @s run function battle:lobby/cosmetics/crates/open_crate/rewards/praet
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=prospBox] at @s run function battle:lobby/cosmetics/crates/open_crate/rewards/prosp
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=cavaBox] at @s run function battle:lobby/cosmetics/crates/open_crate/rewards/cava
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=80},tag=seachBox] at @s run function battle:lobby/cosmetics/crates/open_crate/rewards/seach
execute as @e[type=item_display,tag=cosmeticLootDisplay] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[type=block_display,tag=cosmeticLootDisplay] at @s run tp @s ~ ~ ~ ~10 ~

execute as @e[type=item_display,tag=cosmeticLootDisplay,tag=targetspin,scores={effectAnimate=1..}] at @s run data modify entity @s Rotation set from entity @e[type=block_display,tag=spin,sort=nearest,limit=1] Rotation

execute as @a[tag=rewardBox,scores={cosmeticBoxTime=140..}] at @s run advancement revoke @s only battle:box/box
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=140..}] at @s run tag @s remove generalBox
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=140..}] at @s run tag @s remove lightBox
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=140..}] at @s run tag @s remove maraBox
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=140..}] at @s run tag @s remove legionBox
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=140..}] at @s run tag @s remove venaBox
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=140..}] at @s run tag @s remove conjBox
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=140..}] at @s run tag @s remove reveBox
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=140..}] at @s run tag @s remove magusBox
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=140..}] at @s run tag @s remove trapBox
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=140..}] at @s run tag @s remove northBox
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=140..}] at @s run tag @s remove praetBox
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=140..}] at @s run tag @s remove prospBox
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=140..}] at @s run tag @s remove cavaBox
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=140..}] at @s run tag @s remove seachBox
execute as @a[tag=rewardBox,scores={cosmeticBoxTime=140..}] at @s run tag @s remove rewardBox
execute as @a[scores={cosmeticBoxTime=140..}] at @s run scoreboard players reset @s cosmeticReward
execute as @a[scores={cosmeticBoxTime=140..}] at @s run scoreboard players reset @s cosmeticBoxTime
execute as @e[type=interaction,tag=cosmeticLoot,scores={cosmeticBoxTime=140..}] at @s run kill @e[type=item_display,tag=cosmeticLootDisplay,sort=nearest,limit=1]
execute as @e[type=interaction,tag=cosmeticLoot,scores={cosmeticBoxTime=140..}] at @s run kill @e[type=item_display,tag=cosmeticLootDisplay,tag=targetspin,sort=nearest,limit=2]
execute as @e[type=interaction,tag=cosmeticLoot,scores={cosmeticBoxTime=140..}] at @s run kill @e[type=block_display,tag=cosmeticLootDisplay,sort=nearest,limit=1]
execute as @e[type=interaction,tag=cosmeticLoot,scores={cosmeticBoxTime=140..}] at @s run kill @e[type=text_display,tag=cosmeticLootDisplayName,sort=nearest,limit=1]
execute as @e[type=interaction,tag=cosmeticLoot,scores={cosmeticBoxTime=140..}] at @s run kill @s