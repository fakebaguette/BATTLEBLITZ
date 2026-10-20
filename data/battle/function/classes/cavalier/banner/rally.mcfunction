execute if entity @e[tag=rallyBannerDisplay_main] run schedule function battle:classes/cavalier/banner/rally 1t
scoreboard objectives add rallyBannerTime dummy
scoreboard players add @e[tag=rallyBannerDisplay_main] rallyBannerTime 1

execute as @e[tag=rallyBannerDisplay,tag=!cavaMountedBanner] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=rallyBannerDisplay,tag=cavaMountedBanner,tag=rallyTeam1] at @s at @p[tag=cavalier_class,tag=Team1] run rotate @s ~ 0
execute as @e[tag=rallyBannerDisplay,tag=cavaMountedBanner,tag=rallyTeam2] at @s at @p[tag=cavalier_class,tag=Team2] run rotate @s ~ 0

execute as @e[tag=rallyBannerDisplay_main,tag=!cavaMountedBanner] at @s run particle cloud ^ ^ ^7.5 0 0 0 0 1
execute as @e[tag=rallyBannerDisplay_main] at @s run particle crit ~ ~ ~ 4 3 4 0 3

execute as @e[tag=rallyBannerDisplay,tag=rallyTeam1] if entity @a[tag=Team1,team=Red] run data merge entity @s {glow_color_override:16711680}
execute as @e[tag=rallyBannerDisplay,tag=rallyTeam1] if entity @a[tag=Team1,team=Magenta] run data merge entity @s {glow_color_override:14745855}
execute as @e[tag=rallyBannerDisplay,tag=rallyTeam1] if entity @a[tag=Team1,team=Aqua] run data merge entity @s {glow_color_override:65527}
execute as @e[tag=rallyBannerDisplay,tag=rallyTeam1] if entity @a[tag=Team1,team=Lime] run data merge entity @s {glow_color_override:2031360}
execute as @e[tag=rallyBannerDisplay,tag=rallyTeam1] if entity @a[tag=Team1,team=Gold] run data merge entity @s {glow_color_override:16700416}
execute as @e[tag=rallyBannerDisplay,tag=rallyTeam1] if entity @a[tag=Team1,team=Yellow] run data merge entity @s {glow_color_override:16187136}

execute as @e[tag=rallyBannerDisplay_main,tag=rallyTeam1] at @s run effect give @a[tag=Team1,distance=..7.5] speed 1 1 false
execute as @e[tag=rallyBannerDisplay_main,tag=rallyTeam1] at @s run effect give @n[tag=camel_team1,type=camel,distance=..7.5] speed 1 1 false
execute as @e[tag=rallyBannerDisplay_main,tag=rallyTeam1] at @s run attribute @p[tag=cavalier_class,tag=Team1,distance=..7.5] attack_damage modifier add plus_ad1 1 add_value
execute as @e[tag=rallyBannerDisplay_main,tag=rallyTeam1] at @s run tag @p[tag=cavalier_class,tag=Team1,distance=..7.5] add cava_inside_rally

execute as @e[tag=rallyBannerDisplay,tag=rallyTeam2] if entity @a[tag=Team2,team=Red] run data merge entity @s {glow_color_override:16711680}
execute as @e[tag=rallyBannerDisplay,tag=rallyTeam2] if entity @a[tag=Team2,team=Magenta] run data merge entity @s {glow_color_override:14745855}
execute as @e[tag=rallyBannerDisplay,tag=rallyTeam2] if entity @a[tag=Team2,team=Aqua] run data merge entity @s {glow_color_override:65527}
execute as @e[tag=rallyBannerDisplay,tag=rallyTeam2] if entity @a[tag=Team2,team=Lime] run data merge entity @s {glow_color_override:2031360}
execute as @e[tag=rallyBannerDisplay,tag=rallyTeam2] if entity @a[tag=Team2,team=Gold] run data merge entity @s {glow_color_override:16700416}
execute as @e[tag=rallyBannerDisplay,tag=rallyTeam2] if entity @a[tag=Team2,team=Yellow] run data merge entity @s {glow_color_override:16187136}

execute as @e[tag=rallyBannerDisplay_main,tag=rallyTeam2] at @s run effect give @a[tag=Team2,distance=..7.5] speed 1 1 false
execute as @e[tag=rallyBannerDisplay_main,tag=rallyTeam2] at @s run effect give @n[tag=camel_team2,type=camel,distance=..7.5] speed 1 1 false
execute as @e[tag=rallyBannerDisplay_main,tag=rallyTeam2] at @s run attribute @p[tag=cavalier_class,tag=Team2,distance=..7.5] attack_damage modifier add plus_ad1 1 add_value
execute as @e[tag=rallyBannerDisplay_main,tag=rallyTeam2] at @s run tag @p[tag=cavalier_class,tag=Team2,distance=..7.5] add cava_inside_rally

execute as @e[tag=rallyBannerDisplay_main,scores={rallyBannerTime=5..},tag=cavaMountedBanner] at @s unless predicate battle:cavalier/is_riding run scoreboard players set @s rallyBannerTime 200
execute as @e[tag=rallyBannerDisplay_main,scores={rallyBannerTime=5..},tag=cavaMountedBanner] at @s unless predicate battle:cavalier/is_riding run scoreboard players set @s rallyBannerTime 200

execute as @e[tag=rallyBannerDisplay_main,tag=rallyTeam1] at @s run attribute @p[tag=cavalier_class,tag=Team1,distance=7.5..] attack_damage modifier remove plus_ad1
execute as @e[tag=rallyBannerDisplay_main,tag=rallyTeam1] at @s run tag @a[tag=cavalier_class,tag=Team1,distance=7.5..] remove cava_inside_rally

execute as @e[tag=rallyBannerDisplay_main,tag=rallyTeam2] at @s run attribute @p[tag=cavalier_class,tag=Team2,distance=7.5..] attack_damage modifier remove plus_ad1
execute as @e[tag=rallyBannerDisplay_main,tag=rallyTeam2] at @s run tag @a[tag=cavalier_class,tag=Team2,distance=7.5..] remove cava_inside_rally

execute as @e[tag=rallyBannerDisplay_main,scores={rallyBannerTime=200..}] at @s as @a run attribute @s attack_damage modifier remove plus_ad1
execute as @e[tag=rallyBannerDisplay_main,scores={rallyBannerTime=200..}] at @s run particle cloud ~ ~ ~ 0.2 0.4 0.2 0 3
execute as @e[tag=rallyBannerDisplay_main,scores={rallyBannerTime=200..}] at @s on passengers run kill @s
execute as @e[tag=rallyBannerDisplay] at @s unless entity @e[tag=rallyBannerDisplay_main,distance=..2] run kill @s

execute as @e[tag=rallyBannerDisplay_main,scores={rallyBannerTime=200..}] at @s run kill @s