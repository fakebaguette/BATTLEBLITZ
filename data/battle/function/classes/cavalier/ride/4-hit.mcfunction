scoreboard players set @s cava_ray_success 1

execute as @n[type=camel,tag=cavaSteed,tag=camel_team1] at @s on passengers run scoreboard players add @n cava_camel_riders 1
execute as @n[type=camel,tag=cavaSteed,tag=camel_team2] at @s on passengers run scoreboard players add @n cava_camel_riders 1

execute at @n[type=camel,tag=cavaSteed,tag=camel_team1] if score @n cava_camel_riders matches 2 run ride @s[tag=Team1] mount @n
execute at @n[type=camel,tag=cavaSteed,tag=camel_team1] if score @n cava_camel_riders matches 3 if entity @n[tag=rallyBannerDisplay_main,distance=..7,tag=rallyTeam1] run ride @s[tag=Team1] mount @n

execute at @n[type=camel,tag=cavaSteed,tag=camel_team2] if score @n cava_camel_riders matches 2 run ride @s[tag=Team2] mount @n
execute at @n[type=camel,tag=cavaSteed,tag=camel_team2] if score @n cava_camel_riders matches 3 if entity @n[tag=rallyBannerDisplay_main,distance=..7,tag=rallyTeam2] run ride @s[tag=Team2] mount @n

execute if entity @s[tag=!Team1] if entity @n[type=camel,tag=cavaSteed,tag=camel_team1] run ride @s dismount
execute if entity @s[tag=!Team2] if entity @n[type=camel,tag=cavaSteed,tag=camel_team2] run ride @s dismount