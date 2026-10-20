data merge entity @s {CustomName:{"bold":true,"color":"dark_green","italic":false,"text":"Slime"},CustomNameVisible:1b,Size:0,attributes:[{id:"minecraft:max_health",base:10},{id:"minecraft:movement_speed",base:0.5}],Health:10f}

execute if entity @p[team=Red,distance=..1] run team join Red
execute if entity @p[team=Aqua,distance=..1] run team join Aqua
execute if entity @p[team=Lime,distance=..1] run team join Lime
execute if entity @p[team=Magenta,distance=..1] run team join Magenta
execute if entity @p[team=Gold,distance=..1] run team join Gold
execute if entity @p[team=Yellow,distance=..1] run team join Yellow

execute if entity @p[tag=Team1,distance=..1] run tag @s add mob_Team1
execute if entity @p[tag=Team2,distance=..1] run tag @s add mob_Team2

ride @s mount @n[type=item,tag=new_item]
attribute @s scale base set 2
execute rotated as @p run rotate @s ~ ~