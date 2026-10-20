execute if entity @n[tag=life_active,tag=conj_up] run effect give @s[type=#battle:pets] instant_health 1 0 false
execute if entity @n[tag=life_active,tag=conj_up] run effect give @s[type=#battle:pets] absorption 6 1 false
execute if entity @n[tag=life_active,tag=conj_up] run effect give @s[type=#battle:pets] regeneration 6 1 false

effect give @s[type=#battle:pets] instant_health 1 0 false
effect give @s[type=#battle:pets] absorption 4 0 false
effect give @s[type=#battle:pets] regeneration 4 1 false

execute if entity @s[type=#battle:pets] run return fail


scoreboard objectives add life_ID dummy
scoreboard objectives add life_PID dummy

scoreboard players add @s life_PID 0
scoreboard players operation @s life_PID = $total life_PID
scoreboard players add $total life_PID 1

execute if entity @n[tag=life_active,tag=conj_up] run effect give @s instant_health 1 0 false
execute if entity @n[tag=life_active,tag=conj_up] run effect give @s absorption 6 1 false
execute if entity @n[tag=life_active,tag=conj_up] run effect give @s regeneration 6 1 false

summon block_display ~ ~-0.5 ~ {Tags:[life_main_model,life_model],Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:glow_lichen",Properties:{north:"true"}},transformation:[0.3061862178f,0.25f,-0.6123724357f,0.1875f,-0.1767766953f,0.4330127019f,0.3535533906f,0.5625f,0.3535533906f,0f,0.7071067812f,-0.25f,0f,0f,0f,1f],Tags:["life_model"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:glow_lichen",Properties:{north:"true"}},transformation:[-0.2712264398f,-0.0431888351f,-0.7299077083f,0.3748019628f,0.0576861792f,0.4790656931f,-0.2473583457f,0.2376320822f,0.2882854888f,-0.1364946379f,-0.6372194176f,0.1875573944f,0f,0f,0f,1f],Tags:["life_model"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:glow_lichen",Properties:{north:"true"}},transformation:[0.0604454896f,-0.3125196508f,0.8450348472f,-0.3125f,0.3104454896f,0.422327272f,0.3450348472f,0.3125f,-0.3872595264f,0.2897777479f,0.4084936491f,-0.125f,0f,0f,0f,1f],Tags:["life_model"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:glow_lichen",Properties:{north:"true"}},transformation:[0.4480634475f,0.2662372598f,-0.007833896f,-0.3125f,-0.2136958105f,0.5205718038f,0.2541112063f,0.75f,0.0597766472f,-0.1346206469f,0.9671432804f,0.1875f,0f,0f,0f,1f],Tags:["life_model"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:glow_lichen",Properties:{north:"true"}},transformation:[0.3376248811f,0.3132412877f,0.5210392626f,-0.6875f,-0.142424251f,0.5017092204f,-0.4686799943f,1f,-0.3401834393f,0.1008352808f,0.7133422389f,-0.125f,0f,0f,0f,1f],Tags:["life_model"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:glow_lichen",Properties:{north:"true"}},transformation:[0.3925307688f,-0.3714852376f,0.0184794058f,0.0625f,0.3074021364f,0.4695011132f,0.098521839f,0.375f,-0.037729592f,-0.0395906933f,0.9949632952f,-0.1875f,0f,0f,0f,1f],Tags:["life_model"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:glow_lichen",Properties:{north:"true"}},transformation:[0.4090977244f,-0.3177097767f,-0.2239837081f,-0.2239480372f,0.2811864228f,0.4908541323f,0.1202712502f,0.8626320822f,0.0597766472f,-0.1346206469f,0.9671432804f,0.1875573944f,0f,0f,0f,1f],Tags:["life_model"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:blue_orchid",Properties:{}},transformation:[0.4330127019f,0.25f,0f,0.25f,-0.25f,0.4330127019f,0f,1.4375f,0f,0f,0.5f,-0.3125f,0f,0f,0f,1f],Tags:["life_model"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:cornflower",Properties:{}},transformation:[0.0647047613f,-0.2414814566f,-0.4330127019f,0.125f,-0.4829629131f,-0.1294095226f,0f,0.875f,-0.112071934f,0.4182581519f,-0.25f,0.1875f,0f,0f,0f,1f],Tags:["life_model"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:blue_orchid",Properties:{}},transformation:[-0.3061862178f,-0.1767766953f,0.3535533906f,-0.125f,-0.3932830462f,0.1811862178f,-0.25f,1.25f,-0.0397296556f,-0.4311862178f,-0.25f,-0.0625f,0f,0f,0f,1f],Tags:["life_model"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:blue_orchid",Properties:{}},transformation:[0.1696507948f,-0.200132684f,-0.4256354269f,-0.0625f,-0.1726625547f,0.3943854269f,-0.2542592717f,1.375f,0.4375f,0.2332531755f,0.0647047613f,-0.125f,0f,0f,0f,1f],Tags:["life_model"]}]}
execute as @n[type=block_display,tag=life_main_model] run function battle:classes/conjurer/life/display/init

effect give @s instant_health 1 0 false
effect give @s absorption 4 0 false
effect give @s regeneration 4 1 false