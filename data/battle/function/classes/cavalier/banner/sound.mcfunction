execute if entity @e[tag=rallyBannerDisplay_main] run schedule function battle:classes/cavalier/banner/sound 20t

execute as @e[tag=rallyBannerDisplay_main] at @s run playsound entity.chicken.egg master @a[distance=..30] ~ ~ ~ 0.08 1.5
execute as @e[tag=rallyBannerDisplay_main,tag=rallyTeam1] at @s run effect give @a[distance=..7.5,tag=Team1] regeneration 1 2 true
execute as @e[tag=rallyBannerDisplay_main,tag=rallyTeam2] at @s run effect give @a[distance=..7.5,tag=Team2] regeneration 1 2 true