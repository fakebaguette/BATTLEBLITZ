scoreboard objectives add effectAnimate dummy

execute if entity @a[tag=EQUIPtntKillEffect,scores={killer=1..}] at @s run summon tnt ~ ~15 ~ {NoGravity:1b,HasVisualFire:1b,fuse:2000,Rotation:[45F,0F],Tags:["effectTNTAnimation"]}
execute as @e[type=tnt,tag=effectTNTAnimation] run function battle:ingame/playerdeath/cosmetics/effectanimate/tnt

execute if entity @a[tag=EQUIPspaceKillEffect,scores={killer=1..}] at @s run summon pig ~ ~1.5 ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Age:-1000,Tags:["effectSpaceAnimation","spin"]}
execute if entity @a[tag=EQUIPspaceKillEffect,scores={killer=1..}] at @s run summon block_display ~ ~2.25 ~.4 {Tags:["effectSpaceAnimation","targetspin"],Passengers:[{id:"minecraft:item_display",Tags:["effectSpaceAnimation","targetspin"],transformation:[0.7f,0f,0f,0f,0f,0.7f,0f,-0.225f,0f,0f,0.7f,0f,0f,0f,0f,1f],item:{id:"minecraft:light_blue_stained_glass",count:1,components:{"minecraft:enchantments":{"minecraft:protection":1}}}}]}
execute as @e[type=pig,tag=effectSpaceAnimation] run function battle:ingame/playerdeath/cosmetics/effectanimate/space

execute if entity @a[tag=EQUIPnoobKillEffect,scores={killer=1..}] at @s run summon block_display ~ ~15 ~ {Tags:["effectNoobAnimation","spin"],Passengers:[{id:"minecraft:block_display",Tags:["effectNoobAnimation","targetspin"],transformation:[0.6563f,0f,0f,0.1719f,0f,0.125f,0f,0f,0f,0f,0.5713f,0.1875f,0f,0f,0f,1f],block_state:{Name:"minecraft:brown_concrete"}},{id:"minecraft:block_display",Tags:["effectNoobAnimation","targetspin"],transformation:[0.6152f,0f,0f,0.1924f,0f,0.125f,0f,0.125f,0f,0f,0.4686f,0.2322f,0f,0f,0f,1f],block_state:{Name:"minecraft:brown_concrete"}},{id:"minecraft:block_display",Tags:["effectNoobAnimation","targetspin"],transformation:[0.4816f,0f,0f,0.2549f,0f,0.125f,0f,0.25f,0f,0f,0.3808f,0.2657f,0f,0f,0f,1f],block_state:{Name:"minecraft:brown_concrete"}},{id:"minecraft:block_display",Tags:["effectNoobAnimation","targetspin"],transformation:[0.2261f,-0.0884f,0f,0.4936f,0.2261f,0.0884f,0f,0.2802f,0f,0f,0.18f,0.3721f,0f,0f,0f,1f],block_state:{Name:"minecraft:brown_concrete"}}]}
execute as @e[type=block_display,tag=effectNoobAnimation,tag=spin] run function battle:ingame/playerdeath/cosmetics/effectanimate/noob

execute if entity @a[tag=EQUIPconquerorKillEffect,scores={killer=1..}] at @s run summon item_display ~ ~1.5 ~ {Tags:["effectConquerorAnimation","effectConquerorAnimationUp"],item:{id:"minecraft:wither_skeleton_skull",count:1}}
execute if entity @a[tag=EQUIPconquerorKillEffect,scores={killer=1..}] at @s run summon item_display ~ ~20 ~ {Tags:["effectConquerorAnimation","effectConquerorAnimationDown"],Passengers:[{id:"minecraft:item_display",Tags:["effectConquerorAnimation","effectConquerorAnimationDown"],transformation:[-1.7678f,-1.7678f,0f,0f,1.7678f,-1.7678f,0f,0.5f,0f,0f,2.5f,0f,0f,0f,0f,1f],item:{id:"minecraft:diamond_sword",count:1,components:{"minecraft:enchantments":{"minecraft:bane_of_arthropods":1}}}}]}
execute as @e[type=item_display,tag=effectConquerorAnimation] run function battle:ingame/playerdeath/cosmetics/effectanimate/conqueror

execute if entity @a[tag=EQUIPchampionKillEffect,scores={killer=1..}] at @s run summon block_display ~ ~15 ~ {Tags:["effectChampionAnimation"],Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:cake",Properties:{bites:"0"}},transformation:[1.5f,0f,0f,-0.75f,0f,1.5f,0f,-0.5f,0f,0f,1.5f,-0.75f,0f,0f,0f,1f],Tags:["effectChampionAnimation"],},{id:"minecraft:item_display",item:{id:"minecraft:golden_sword"},transformation:[-1.7678f,-1.7678f,0f,0f,1.7678f,-1.7678f,0f,0.5f,0f,0f,2.5f,0f,0f,0f,0f,1f],Tags:["effectChampionAnimation"],}]}
execute as @e[type=block_display,tag=effectChampionAnimation] run function battle:ingame/playerdeath/cosmetics/effectanimate/champion

execute if entity @a[tag=EQUIPlightKillEffect,scores={killer=1..}] at @s run summon interaction ~ ~ ~ {width:0.1f,height:0.1f,Tags:["effectLightAnimation"]}
execute as @e[type=interaction,tag=effectLightAnimation] run function battle:ingame/playerdeath/cosmetics/effectanimate/light

execute if entity @a[tag=EQUIPmaraKillEffect,scores={killer=1..}] at @s run summon interaction ~ ~ ~ {width:0.1f,height:0.1f,Tags:["effectMaraAnimation"]}
execute as @e[type=interaction,tag=effectMaraAnimation] run function battle:ingame/playerdeath/cosmetics/effectanimate/mara

execute if entity @a[tag=EQUIPlegionKillEffect,scores={killer=1..}] at @s run summon item_display ~ ~15 ~ {Tags:["effectLegionAnimation"],transformation:[-1.4142f,-1.4142f,0f,0f,1.4142f,-1.4142f,0f,0.6875f,0f,0f,2f,0f,0f,0f,0f,1f],item:{id:"minecraft:iron_sword",count:1,components:{"minecraft:enchantments":{"minecraft:fire_aspect":1}}}}
execute if entity @a[tag=EQUIPlegionKillEffect,scores={killer=1..}] at @s run summon interaction ~ ~ ~ {width:0.1f,height:0.1f,Tags:["effectLegionAnimation"]}
execute as @e[type=item_display,tag=effectLegionAnimation] run function battle:ingame/playerdeath/cosmetics/effectanimate/legion

execute if entity @a[tag=EQUIPvena_killEffect,scores={killer=1..}] at @s run function battle:ingame/playerdeath/cosmetics/effectanimate/vena
execute if entity @a[tag=EQUIPvena_killEffect,scores={killer=1..}] if entity @a[tag=deadPlayer,tag=vena_target] at @s run summon interaction ~ ~ ~ {width:0.1f,height:0.1f,Tags:["effectVenaAnimation"]}
execute as @e[type=interaction,tag=effectVenaAnimation] run function battle:ingame/playerdeath/cosmetics/effectanimate/vena2

execute if entity @a[tag=EQUIPconjKillEffect,scores={killer=1..}] at @s run summon interaction ~ ~ ~ {width:0.1f,height:0.1f,Tags:["effectConjAnimation"]}
execute as @e[type=interaction,tag=effectConjAnimation] run function battle:ingame/playerdeath/cosmetics/effectanimate/conj

execute if entity @a[tag=EQUIPreveKillEffect,scores={killer=1..}] at @s run summon item_display ~ ~1.5 ~ {Tags:["effectReveAnimation"],item:{id:"minecraft:wither_skeleton_skull",count:1,components:{"minecraft:enchantments":{"minecraft:unbreaking":1}}}}
execute as @e[type=item_display,tag=effectReveAnimation] run function battle:ingame/playerdeath/cosmetics/effectanimate/reve

execute if entity @a[tag=EQUIPmagusKillEffect,scores={killer=1..}] at @s run summon item_display ~ ~15 ~ {Tags:["effectMagusAnimation"],transformation:[-1.4142f,-1.4142f,0f,0f,1.4142f,-1.4142f,0f,0.6875f,0f,0f,2f,0f,0f,0f,0f,1f],item:{id:"minecraft:diamond_sword",count:1,components:{"minecraft:enchantments":{"minecraft:fire_aspect":1}}}}
execute as @e[type=item_display,tag=effectMagusAnimation] run function battle:ingame/playerdeath/cosmetics/effectanimate/magus
    
execute if entity @a[tag=EQUIPtrapKillEffect,scores={killer=1..}] at @s run summon interaction ~ ~ ~ {width:0.1f,height:0.1f,Tags:["effectTrapAnimation"]}
execute as @e[type=interaction,tag=effectTrapAnimation] run function battle:ingame/playerdeath/cosmetics/effectanimate/trap

execute if entity @a[tag=EQUIPnorthKillEffect,scores={killer=1..}] at @s run summon interaction ~ ~ ~ {width:0.1f,height:0.1f,Tags:["effectNorthAnimation"]}
execute as @e[type=interaction,tag=effectNorthAnimation] run function battle:ingame/playerdeath/cosmetics/effectanimate/north

execute if entity @a[tag=EQUIPpraetKillEffect,scores={killer=1..}] at @s run summon horse ~ ~1.5 ~ {attributes:[{id:"scale",base:1}],NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Age:-1000,Tags:["effectPraetAnimation","spin"]}
execute if entity @a[tag=EQUIPpraetKillEffect,scores={killer=1..}] at @s run summon block_display ~ ~2.25 ~.4 {Tags:["effectPraetAnimation","targetspin"]}
execute as @e[type=horse,tag=effectPraetAnimation] run function battle:ingame/playerdeath/cosmetics/effectanimate/praet

execute if entity @a[tag=EQUIPprospKillEffect,scores={killer=1..}] at @s run summon item_display ~ ~15 ~ {Tags:["effectProspAnimation"],transformation:[-1.4142f,-1.4142f,0f,0f,1.4142f,-1.4142f,0f,0.6875f,0f,0f,2f,0f,0f,0f,0f,1f],item:{id:"minecraft:copper_sword",count:1,components:{"minecraft:enchantments":{"minecraft:fire_aspect":1}}}}
execute as @e[type=item_display,tag=effectProspAnimation] run function battle:ingame/playerdeath/cosmetics/effectanimate/prosp

execute if entity @a[tag=EQUIPcavaKillEffect,scores={killer=1..}] at @s run summon camel ~ ~1.5 ~ {attributes:[{id:"scale",base:0.8}],NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Age:-1000,Tags:["effectCavaAnimation","spin"]}
execute if entity @a[tag=EQUIPcavaKillEffect,scores={killer=1..}] at @s run summon block_display ~ ~2.25 ~.4 {Tags:["effectCavaAnimation","targetspin"]}
execute as @e[type=camel,tag=effectCavaAnimation] run function battle:ingame/playerdeath/cosmetics/effectanimate/cava

execute if entity @a[tag=EQUIPseachKillEffect,scores={killer=1..}] at @s run summon nautilus ~ ~1.5 ~ {attributes:[{id:"scale",base:1.5}],NoGravity:1b,Silent:1b,Invulnerable:1b,NoAI:1b,Age:-1000,Tags:["effectSeachAnimation","spin"]}
execute if entity @a[tag=EQUIPseachKillEffect,scores={killer=1..}] at @s run summon block_display ~ ~2.25 ~.4 {Tags:["effectSeachAnimation","targetspin"]}
execute as @e[type=nautilus,tag=effectSeachAnimation] run function battle:ingame/playerdeath/cosmetics/effectanimate/seach