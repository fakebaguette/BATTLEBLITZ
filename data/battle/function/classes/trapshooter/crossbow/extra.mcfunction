data merge entity @s {Tags:["trapshooter_hitbox"],width:1.5,height:1.5}
execute if entity @n[type=splash_potion,distance=..1,tag=copyTrapArrowTeam1] run tag @s add trapshooter_hitbox_T1
execute if entity @n[type=splash_potion,distance=..1,tag=copyTrapArrowTeam2] run tag @s add trapshooter_hitbox_T2

ride @s mount @n[type=splash_potion,distance=..1,tag=new_splash]
tag @s add trapshooter_hitbox_active