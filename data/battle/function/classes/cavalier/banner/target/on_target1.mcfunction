#Damages team 2

damage @s[tag=!Team1] 3 player_attack by @p[tag=Team1,tag=cavalier_class]
effect give @s slowness 3 0
effect give @s weakness 3 0

tag @s add cava_banner_hit

rotate @s facing entity @p[tag=cavalier_class,tag=Team1]
schedule function battle:classes/cavalier/banner/target/delay 1t
