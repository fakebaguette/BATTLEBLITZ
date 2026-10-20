#Damages team 2

tag @s add vena_shock_hit
damage @s[tag=Team2] 5 player_attack by @p[tag=Team1,tag=venator_class]
effect give @s[tag=Team2,tag=vena_target] slowness 3 2
effect give @s[tag=Team2,tag=vena_target] weakness 3 0

rotate @s[tag=!vena_target] facing entity @p[tag=venator_class,tag=Team1]
schedule function battle:classes/venator/shock/display/delay 1t