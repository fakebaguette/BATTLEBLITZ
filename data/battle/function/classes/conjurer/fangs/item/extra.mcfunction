data merge entity @s {CustomName:{"bold":true,"color":"dark_red","italic":false,"text":"Silverfish"},CustomNameVisible:1b,active_effects:[{id:"minecraft:resistance",amplifier:255,duration:50,show_particles:0b}],attributes:[{id:"minecraft:max_health",base:5}],Health:5f}

execute if entity @p[team=Red,distance=..1] run team join Red
execute if entity @p[team=Aqua,distance=..1] run team join Aqua
execute if entity @p[team=Lime,distance=..1] run team join Lime
execute if entity @p[team=Magenta,distance=..1] run team join Magenta
execute if entity @p[team=Gold,distance=..1] run team join Gold
execute if entity @p[team=Yellow,distance=..1] run team join Yellow

execute if entity @p[tag=Team1,distance=..1] run tag @s add mob_Team1
execute if entity @p[tag=Team2,distance=..1] run tag @s add mob_Team2

ride @s mount @n[type=item,tag=new_item]
attribute @s scale base set 1.25
execute rotated as @p run rotate @s ~ ~