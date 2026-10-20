#Damages team 1

tag @s add seach_mount_hit
damage @s[tag=Team1] 5 player_attack by @p[tag=Team2,tag=seacharger_class]
effect give @s slowness 5 1
effect give @s mining_fatigue 5 0

rotate @s facing entity @p[tag=seacharger_class,tag=Team2]
schedule function battle:classes/seacharger/mount/target/delay 1t