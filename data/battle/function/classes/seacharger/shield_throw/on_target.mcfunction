execute at @s run playsound block.wood.break master @a ~ ~ ~ 2 0.8
execute at @s run playsound block.wet_grass.break master @a ~ ~ ~ 2 0.8

effect give @s slowness 4 2 false
damage @s[tag=!Team1] 4 player_attack by @p[tag=Team1,tag=seacharger_class]
damage @s[tag=!Team2] 4 player_attack by @p[tag=Team2,tag=seacharger_class]