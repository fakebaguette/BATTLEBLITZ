#Damages team 1

damage @s[tag=!Team2] 3 player_attack by @p[tag=Team2,tag=cavalier_class]
effect give @s slowness 3 0
effect give @s weakness 3 0

tag @s add cava_banner_hit

rotate @s facing entity @p[tag=cavalier_class,tag=Team2]
schedule function battle:classes/cavalier/banner/target/delay 1t
