
execute if entity @s[tag=prosp_Team1] as @a[tag=!Team1,distance=..1.75,tag=!prosp_got_hit] run function battle:classes/prospector/supply/dmg
execute if entity @s[tag=prosp_Team2] as @a[tag=!Team2,distance=..1.75,tag=!prosp_got_hit] run function battle:classes/prospector/supply/dmg

execute if entity @s[tag=prosp_Team1] as @e[tag=!mob_Team1,type=#battle:pets,distance=..1.75,tag=!prosp_got_hit] run function battle:classes/prospector/supply/dmg
execute if entity @s[tag=prosp_Team2] as @e[tag=!mob_Team2,type=#battle:pets,distance=..1.75,tag=!prosp_got_hit] run function battle:classes/prospector/supply/dmg