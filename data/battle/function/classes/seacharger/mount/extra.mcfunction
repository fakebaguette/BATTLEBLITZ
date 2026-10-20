summon item ~ ~ ~ {Item:{id:"minecraft:nautilus_shell",components:{item_model:air}},PickupDelay:32767,Tags:[seach_launch_nautilus]}
execute as @n[type=item,tag=seach_launch_nautilus] run rotate @s ~ ~
execute as @n[type=item,tag=seach_launch_nautilus] at @s run function battle:classes/seacharger/mount/apply
ride @s mount @n[tag=seach_launch_nautilus]


execute if entity @s[tag=!seach_airborne_steed] run summon block_display ~ ~ ~ {Passengers:[{id:"minecraft:text_display",text:[{"text":"          ","color":"#FFFFFF","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":"minecraft:uniform"}],text_opacity:255,background:1229651152,alignment:"center",line_width:210,default_background:false,transformation:[7f,0f,0f,-0.125f,0f,20f,0f,-2.5f,0f,0f,1f,1.3875f,0f,0f,0f,1f],Tags:["seach_model"]},{id:"minecraft:text_display",text:[{"text":"          ","color":"#FFFFFF","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":"minecraft:uniform"}],text_opacity:255,background:1229651152,alignment:"center",line_width:210,default_background:false,transformation:[-7f,0f,0f,0.125f,0f,20f,0f,-2.5f,0f,0f,-1f,1.45f,0f,0f,0f,1f],Tags:["seach_model"]}],Tags:["seach_model","seach_main_model"]}

execute if entity @s[tag=seach_airborne_steed] run summon block_display ~ ~ ~ {Passengers:[{id:"minecraft:text_display",text:[{"text":"          ","color":"#FFFFFF","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":"minecraft:uniform"}],text_opacity:255,background:1328186111,alignment:"center",line_width:210,default_background:false,transformation:[7f,0f,0f,-0.125f,0f,20f,0f,-2.5f,0f,0f,1f,1.3875f,0f,0f,0f,1f],Tags:["seach_model"]},{id:"minecraft:text_display",text:[{"text":"          ","color":"#FFFFFF","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":"minecraft:uniform"}],text_opacity:255,background:1328186111,alignment:"center",line_width:210,default_background:false,transformation:[-7f,0f,0f,0.125f,0f,20f,0f,-2.5f,0f,0f,-1f,1.45f,0f,0f,0f,1f],Tags:["seach_model"]}],Tags:["seach_model","seach_main_model"]}

execute if entity @s[tag=!seach_airborne_steed] run summon armor_stand ~ ~ ~ {Invisible:1b,Silent:1b,Invulnerable:1b,attributes:[{id:"scale",base:0.1}],NoBasePlate:1b,Tags:["seach_model","seach_hp_bar"],CustomNameVisible:1b,CustomName:{"bold":true,"color":"#45fe98","italic":false,"text":"Nautilus"}}

execute if entity @s[tag=seach_airborne_steed] run summon armor_stand ~ ~ ~ {Invisible:1b,Silent:1b,Invulnerable:1b,attributes:[{id:"scale",base:0.1}],NoBasePlate:1b,Tags:["seach_model","seach_hp_bar"],CustomNameVisible:1b,CustomName:{"bold":true,"color":"#22bdf6","italic":false,"text":"Airborne Nautilus"}}

execute as @n[tag=seach_main_model] on passengers run rotate @s ~ ~
execute as @n[tag=seach_main_model] run rotate @s ~ ~

execute as @n[tag=seach_main_model] on passengers run ride @s mount @n[type=nautilus]
execute as @n[tag=seach_main_model] run ride @s mount @n[type=nautilus]

execute as @n[tag=seach_hp_bar] run ride @s mount @n[type=nautilus]

data merge entity @s {Air:1000s}
effect give @s slow_falling infinite 99 true