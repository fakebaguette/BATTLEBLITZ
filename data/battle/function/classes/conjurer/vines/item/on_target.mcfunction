execute if entity @n[tag=vines_active,tag=conj_up] run effect give @s[type=#battle:pets] slowness 5 3
execute if entity @n[tag=vines_active,tag=conj_up] run effect give @s[type=#battle:pets] blindness 2 0
execute if entity @n[tag=vines_active,tag=conj_up] run effect give @s[type=#battle:pets] poison 2 1

execute if entity @n[tag=vines_active,tag=conj_up] on vehicle run effect give @s[type=#battle:pets] slowness 5 3
execute if entity @n[tag=vines_active,tag=conj_up] on vehicle run effect give @s[type=#battle:pets] blindness 2 0
execute if entity @n[tag=vines_active,tag=conj_up] on vehicle run effect give @s[type=#battle:pets] poison 2 1

effect give @s[type=#battle:pets] slowness 5 2
effect give @s[type=#battle:pets] poison 1 1

execute if entity @s[type=#battle:pets] run return fail


scoreboard objectives add vine_ID dummy
scoreboard objectives add vine_PID dummy

scoreboard players add @s vine_PID 0
scoreboard players operation @s vine_PID = $total vine_PID
scoreboard players add $total vine_PID 1

execute if entity @n[tag=vines_active,tag=conj_up] run effect give @s slowness 5 3
execute if entity @n[tag=vines_active,tag=conj_up] run effect give @s blindness 2 0
execute if entity @n[tag=vines_active,tag=conj_up] run effect give @s poison 2 1

execute if entity @n[tag=vines_active,tag=conj_up] on vehicle run effect give @s slowness 5 3
execute if entity @n[tag=vines_active,tag=conj_up] on vehicle run effect give @s blindness 2 0
execute if entity @n[tag=vines_active,tag=conj_up] on vehicle run effect give @s poison 2 1

execute at @s run summon block_display ~ ~ ~ {Tags:["vine_model","vine_main_model"],Passengers:[{id:"minecraft:block_display",block_state:{Name:"minecraft:vine",Properties:{north:"true"}},transformation:[0.3061862178f,0.25f,-0.6123724357f,0.1875f,-0.1767766953f,0.4330127019f,0.3535533906f,0.5625f,0.3535533906f,0f,0.7071067812f,-0.25f,0f,0f,0f,1f],Tags:["vine_model"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:vine",Properties:{north:"true"}},transformation:[0.3061862178f,-0.3f,-0.6123724357f,0.375f,0.1767766953f,0.5196152423f,-0.3535533906f,-0.0625f,0.3535533906f,0f,0.7071067812f,-0.3125f,0f,0f,0f,1f],Tags:["vine_model"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:vine",Properties:{north:"true"}},transformation:[0.2622595264f,0.0776457135f,0.8415063509f,-0.5f,0.1767766953f,0.5196152423f,-0.3535533906f,-0.0625f,-0.3872595264f,0.2897777479f,0.4084936491f,-0.125f,0f,0f,0f,1f],Tags:["vine_model"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:vine",Properties:{north:"true"}},transformation:[-0.4358262089f,0.168931844f,0.4265926764f,-0.125f,0.072107724f,0.6706919704f,-0.2473583457f,-0.0625f,-0.2342135601f,-0.1078624723f,-0.8699612275f,0.4375f,0f,0f,0f,1f],Tags:["vine_model"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:vine",Properties:{north:"true"}},transformation:[-0.2712264398f,-0.0431888351f,-0.7299077083f,0.375f,0.0576861792f,0.4790656931f,-0.2473583457f,-0.0625f,0.2882854888f,-0.1364946379f,-0.6372194176f,0.1875f,0f,0f,0f,1f],Tags:["vine_model"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:vine",Properties:{north:"true"}},transformation:[0.3535533906f,0f,0.7071067812f,0.25f,0.1767766953f,0.5196152423f,-0.3535533906f,-0.4375f,-0.3061862178f,0.3f,0.6123724357f,-0.25f,0f,0f,0f,1f],Tags:["vine_model"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:vine",Properties:{north:"true"}},transformation:[-0.1425616712f,0.1957231381f,0.9168020576f,-0.5f,0.072107724f,0.6706919704f,-0.2473583457f,-0.5f,-0.4737896644f,0.0431825668f,-0.3135089091f,0.4375f,0f,0f,0f,1f],Tags:["vine_model"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:vine",Properties:{north:"true"}},transformation:[0.0604454896f,-0.3125196508f,0.8450348472f,-0.3125f,0.3104454896f,0.422327272f,0.3450348472f,0.3125f,-0.3872595264f,0.2897777479f,0.4084936491f,-0.125f,0f,0f,0f,1f],Tags:["vine_model"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:vine",Properties:{north:"true"}},transformation:[0.4480634475f,0.2662372598f,-0.007833896f,-0.3125f,-0.2136958105f,0.5205718038f,0.2541112063f,0.75f,0.0597766472f,-0.1346206469f,0.9671432804f,0.1875f,0f,0f,0f,1f],Tags:["vine_model"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:vine",Properties:{north:"true"}},transformation:[0.3376248811f,0.3132412877f,0.5210392626f,-0.6875f,-0.142424251f,0.5017092204f,-0.4686799943f,1f,-0.3401834393f,0.1008352808f,0.7133422389f,-0.125f,0f,0f,0f,1f],Tags:["vine_model"]},{id:"minecraft:block_display",block_state:{Name:"minecraft:vine",Properties:{north:"true"}},transformation:[0.3925307688f,-0.3714852376f,0.0184794058f,0.0625f,0.3074021364f,0.4695011132f,0.098521839f,0.375f,-0.037729592f,-0.0395906933f,0.9949632952f,-0.1875f,0f,0f,0f,1f],Tags:["vine_model"]}]}
execute at @s as @n[type=block_display,tag=vine_main_model] run function battle:classes/conjurer/vines/display/init

effect give @s slowness 5 2
effect give @s poison 1 1

execute on vehicle run effect give @s slowness 5 2
execute on vehicle run effect give @s poison 1 1

