summon block_display ~ ~ ~ {Tags:["vena_main_model"],Passengers:[{id:"minecraft:text_display",text:[{"text":"          ","color":"#FFFFFF","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":"minecraft:uniform"}],text_opacity:255,background:1550589088,alignment:"center",line_width:210,default_background:false,transformation:[7f,0f,0f,0f,0f,15f,0f,-2f,0f,0f,1f,0f,0f,0f,0f,1f],Tags:["vena_model"]},{id:"minecraft:text_display",text:[{"text":"          ","color":"#FFFFFF","bold":false,"italic":false,"underlined":false,"strikethrough":false,"obfuscated":false,"font":"minecraft:uniform"}],text_opacity:255,background:1550589088,alignment:"center",line_width:210,default_background:false,transformation:[-7f,0f,0f,0f,0f,15f,0f,-2f,0f,0f,-1f,-0.01f,0f,0f,0f,1f],Tags:["vena_model"]}]}


execute as @n[type=block_display,tag=vena_main_model,distance=..1] at @s run ride @s mount @n[type=arrow,tag=new_item,distance=..1]

execute as @n[type=block_display,tag=vena_main_model,distance=..1] at @s rotated as @p run rotate @s ~ ~
execute as @n[type=block_display,tag=vena_main_model,distance=..1] at @s on passengers rotated as @p run rotate @s ~ ~