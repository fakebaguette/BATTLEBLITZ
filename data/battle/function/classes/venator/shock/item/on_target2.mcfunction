#Damages Team 1

tag @s add vena_shock_hit
damage @s[tag=Team1] 5 player_attack by @p[tag=Team2,tag=venator_class]
effect give @s[tag=Team1,tag=vena_target] slowness 3 3
effect give @s[tag=Team1,tag=vena_target] weakness 3 0

rotate @s[tag=!vena_target] facing entity @p[tag=venator_class,tag=Team2]
schedule function battle:classes/venator/shock/display/delay 1t